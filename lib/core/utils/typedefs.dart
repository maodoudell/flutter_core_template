import 'package:dartz/dartz.dart';
import 'package:flutter_core_template/data/network/failure.dart';

typedef DataMap = Map<String, dynamic>;

typedef ResultFuture<T> = Future<Either<Failure, T>>;
