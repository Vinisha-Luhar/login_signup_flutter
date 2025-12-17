

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: "https://jsonplaceholder.typicode.com",
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10)
  ));
  return dio;
},);