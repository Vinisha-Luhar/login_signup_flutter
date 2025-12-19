
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/core/network/dio_provider.dart';
import 'package:login_signup/features/post/model/post_model.dart';

class PostApiService{
  final Dio _dio;
  PostApiService(this._dio);

  Future<List<PostModel>> fetchPost({required int page,required int limit})async{
    final response = await _dio.get('/posts',queryParameters: {
      "_page": page,
      "_limit" : limit
    });
    return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
  }

}

final postApiServiceProvider = Provider<PostApiService>((ref) => PostApiService(ref.watch(dioProvider)));