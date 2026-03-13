// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';
import 'package:flutter_core_template/core/constant/app_constant.dart';
import 'package:flutter_core_template/core/service/repo/app_preference.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String BYTES = "bytes";
const String ACCEPT = "accept";
const String ACCEPT_RANGES = "Accept-Ranges";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "language";
const String DEVICE_ID = "DeviceID";
const String DEVICE_TYPE = "X-Device-Type";
const String VIDEO_MP4 = "video/mp4";
const String BEARER = "Bearer";
const String APP_VERSION = "X-APP-VERSION";
const String APP_STREAM = "X-APP-STREAM";
final statusCode = [403, 498];

bool hasRetry = false;

abstract class DioFactory {
  Dio get();
  Future<String?> refreshToken(String? refreshToken);
}

class DioClient implements DioFactory {
  String? _token;
  final AppPreference _appPreferences;
  DioClient(this._appPreferences);

  @override
  Dio get() {
    Dio dio = Dio();
    int timeOut = 5 * 1000;
    _token = _appPreferences.getAccessToken();
    // var ip = _appPreferences.getHomeIP();
    // if (ip != null && !ip.endsWith('/')) ip += '/';
    Map<String, String?> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      if (_token?.isNotEmpty == true) AUTHORIZATION: 'Bearer $_token',
      // DEFAULT_LANGUAGE: _appPreferences.getLn(),
      // DEVICE_ID: GetDevice.identifier,
      // DEVICE_TYPE: GetDevice.name,
      // APP_VERSION: AppInfoService.instance.version,
      // APP_STREAM: '${true}',
    };
    dio.options = BaseOptions(
      baseUrl: AppConstant.baseUrl,
      connectTimeout: Duration(seconds: timeOut),
      receiveTimeout: Duration(seconds: timeOut),
      headers: headers,
    );

    if (_token?.isNotEmpty == true) {
      // DateTime expirationDate = JwtDecoder.getExpirationDate(_token!);
      // if (expirationDate.difference(DateTime.now()).isNegative) {}
      // xPrint(expirationDate, error: true);
    }

    dio.interceptors
      ..clear()
      ..add(PrettyDioLogger(request: true, responseBody: true))
      ..add(QueuedInterceptorsWrapper(onError: (DioException e, handler) async {
        // xPrint('interceptors ${e.requestOptions.baseUrl}');
        // xPrint('interceptors ${e.requestOptions.headers}');
        // xPrint('interceptors ${e.response?.toString()}');
        // xPrint('interceptors ${e.requestOptions.path}');
        // xPrint('interceptors ${e.requestOptions.method}');
        // xPrint('interceptors $hasRetry');
        // xPrint('interceptors ${!hasRetry && e.response?.statusCode == 403}');

        // final refreshToken = _appPreferences.getUserRefreshToken();
        // if (!hasRetry && (statusCode.contains(e.response?.statusCode) && (refreshToken?.isNotEmpty == true))) {
        //   hasRetry = true;
        //   final accessToken = await _refreshToken(refreshToken);
        //   hasRetry = false;
        //   if (accessToken == null) return;
        //   final bearer = 'Bearer $accessToken';
        //   e.requestOptions.headers[AUTHORIZATION] = bearer;
        //   final options = Options(
        //       method: e.requestOptions.method,
        //       headers: e.requestOptions.headers
        //   );
        //   final response = await dio.request(e.requestOptions.path,
        //       data: e.requestOptions.data,
        //       queryParameters: e.requestOptions.queryParameters,
        //       options: options
        //   );
        //
        //   return handler.resolve(response);
        // }
        // return handler.next(e);
      }));
    return dio;
  }

  @override
  Future<String?> refreshToken(String? refreshToken) async {
    // return (await RefreshTokenUseCase().execute('Bearer $refreshToken')).fold(
    //         (l) async {
    //       xPrint(l.toString());
    //       AuthService().logout();
    //       return null;
    //     }, (r) async {
    //   return await AuthProcedure.refreshToken(r.data);
    // });
    return await "";
  }
}
