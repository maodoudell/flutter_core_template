import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_core_template/core/utils/global/common.dart';
import 'package:flutter_core_template/core/utils/print/app_print.dart';
import 'package:flutter_core_template/data/network/failure.dart';
import 'package:flutter_core_template/data/responses/base_response.dart';

class ApiResponse<T extends BaseResponse> {
  Future<T> request;
  ApiResponse(this.request);

  Future<Either<Failure, T>> call() async {
    try {
      final response = await request;
      // appPrint('Response success:${response.success}  code:${response.status} message:${response.message}');
      if (response.success == ApiInternalStatus.SUCCESS) {
        return Right(response);
      } else {
        // FirebaseCrashlytics.instance.setCustomKey(
        //   'response',
        //   response.message ?? 'Error api call',
        // );
        return Left(
          Failure(
            response.status ?? ApiInternalStatus.FAILURES,
            response.message ?? ResponseMessage.DEFAULT,
          ),
        );
      }
    } catch (error, stacktrace) {
      appPrint("Message error custom $error");
      // CrashHelper.report(
      //   exception: error,
      //   fatal: false,
      //   stackTrace: stacktrace,
      //   reason: 'Dio request error http call',
      // );
      // final NetworkInfo networkInfo = getIt<NetworkInfo>();
      // if (await networkInfo.isConnected) {
      if (true) {
        // if (error is DioException) {
        //   //   appPrint("${error.response?.realUri.data}");
        //   //   appPrint("${error.response?.data}");
        //   //   appPrint("${error.response?.extra}");
        //   appPrint("${error.response?.statusCode}");
        //   appPrint("${error.response?.statusMessage}");
        // }
        if (error is DioException && error.response?.statusCode == 401) {
          return Left(Failure(ApiInternalStatus.UNAUTHORIZED, ResponseMessage.UNAUTHORISED));
        } else if (error is DioException && error.response?.statusCode == 403) {
          // showSessionExpiredDialog();
          return Left(Failure(ApiInternalStatus.UNAUTHORIZED, ResponseMessage.UNAUTHORISED));
        } else if (error is DioException && error.response?.statusCode == 409) {
          return Left(Failure(409, error.response?.data?['message'] ?? ResponseMessage.NOT_FOUND));
        } else if (error is DioException && error.response?.statusCode == 404) {
          return Left(Failure(404, error.response?.data?['message'] ?? ResponseMessage.NOT_FOUND));
        } else {
          return Left(ErrorHandler.handle(error).failure);
        }
      } else {
        return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
      }
    }
  }
}

enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTHORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECEIVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

class ApiInternalStatus {
  static const bool SUCCESS = true;
  static const bool FAILURE = false;
  static const int FAILURES = 1;
  static const int UNAUTHORIZED = 401;
}

class ResponseMessage {
  // API status codes
  // API response codes
  static String SUCCESS = appText.success; // success with data
  static String NO_CONTENT = appText.no_content; // success with no content
  static String BAD_REQUEST = appText.bad_request_error; // failure, api rejected our request
  static String FORBIDDEN = appText.forbidden_error; // failure,  api rejected our request
  static String UNAUTHORISED = appText.unauthorized_error; // failure, user is not authorised
  static String NOT_FOUND = appText.not_found_error; // failure, API url is not correct and not found in api side.
  static String INTERNAL_SERVER_ERROR = appText.internal_server_error; // failure, a crash happened in API side.

  // local responses codes
  static String DEFAULT = appText.default_error; // unknown error happened
  static String CONNECT_TIMEOUT = appText.timeout_error; // issue in connectivity
  static String CANCEL = appText.default_error; // API request was cancelled
  static String RECEIVE_TIMEOUT = appText.timeout_error; //  issue in connectivity
  static String SEND_TIMEOUT = appText.timeout_error; //  issue in connectivity
  static String CACHE_ERROR = appText.default_error; //  issue in getting data from local data source (cache)
  static String NO_INTERNET_CONNECTION = appText.no_internet_error; // issue in connectivity
}

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    // ignore: deprecated_member_use
    if (error is DioError) {
      // dio error so its error from response of the API
      failure = _handleError(error);
    } else {
      // default error
      failure = DataSource.DEFAULT.getFailure();
    }
  }
  // ignore: deprecated_member_use
  Failure _handleError(DioError error) {
    switch (error.type) {
      // ignore: deprecated_member_use
      case DioErrorType.connectionTimeout:
        return DataSource.CONNECT_TIMEOUT.getFailure();
      // ignore: deprecated_member_use
      case DioErrorType.sendTimeout:
        return DataSource.SEND_TIMEOUT.getFailure();
      // ignore: deprecated_member_use
      case DioErrorType.receiveTimeout:
        return DataSource.RECEIVE_TIMEOUT.getFailure();
      // ignore: deprecated_member_use
      case DioErrorType.badCertificate:
        return DataSource.BAD_REQUEST.getFailure();
      // ignore: deprecated_member_use
      case DioErrorType.badResponse:
        return DataSource.BAD_REQUEST.getFailure();
      // ignore: deprecated_member_use
      case DioErrorType.cancel:
        return DataSource.CANCEL.getFailure();
      // ignore: deprecated_member_use
      case DioErrorType.connectionError:
        return DataSource.CONNECT_TIMEOUT.getFailure();
      // ignore: deprecated_member_use
      case DioErrorType.unknown:
        switch (error.response?.statusCode) {
          case ResponseCode.BAD_REQUEST:
            return DataSource.BAD_REQUEST.getFailure();
          case ResponseCode.FORBIDDEN:
            return DataSource.FORBIDDEN.getFailure();
          case ResponseCode.UNAUTHORISED:
            return DataSource.UNAUTHORISED.getFailure();
          case ResponseCode.NOT_FOUND:
            return DataSource.NOT_FOUND.getFailure();
          case ResponseCode.INTERNAL_SERVER_ERROR:
            return DataSource.INTERNAL_SERVER_ERROR.getFailure();
          default:
            return DataSource.DEFAULT.getFailure();
        }
    }
  }
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.BAD_REQUEST:
        return Failure(ResponseCode.BAD_REQUEST, ResponseMessage.BAD_REQUEST);
      case DataSource.FORBIDDEN:
        return Failure(ResponseCode.FORBIDDEN, ResponseMessage.FORBIDDEN);
      case DataSource.UNAUTHORISED:
        return Failure(ResponseCode.UNAUTHORISED, ResponseMessage.UNAUTHORISED);
      case DataSource.NOT_FOUND:
        return Failure(ResponseCode.NOT_FOUND, ResponseMessage.NOT_FOUND);
      case DataSource.INTERNAL_SERVER_ERROR:
        return Failure(ResponseCode.INTERNAL_SERVER_ERROR, ResponseMessage.INTERNAL_SERVER_ERROR);
      case DataSource.NO_INTERNET_CONNECTION:
        return Failure(ResponseCode.NO_INTERNET_CONNECTION, ResponseMessage.NO_INTERNET_CONNECTION);
      case DataSource.DEFAULT:
        return Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT);
      default:
        return Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT);
    }
  }
}

class ResponseCode {
  // API status codes
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no content
  static const int BAD_REQUEST = 400; // failure, api rejected the request
  static const int FORBIDDEN = 403; // failure, api rejected the request
  static const int UNAUTHORISED = 401; // failure user is not authorised
  static const int NOT_FOUND = 404; // failure, api url is not correct and not found
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash happened in server side

  // local status code
  static const int DEFAULT = -1;
  static const int NO_INTERNET_CONNECTION = -7;
}
