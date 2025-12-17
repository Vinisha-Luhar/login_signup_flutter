
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/user_model.dart';

class UserApi{
  final Dio _dio;
  UserApi(this._dio);

  Future<UserModel> fetchUser() async{
    final response = await _dio.get("https://jsonplaceholder.typicode.com/users/1");
    return UserModel.fromJson(response.data);
  }

}

final dioProvider = Provider((ref) => Dio());

final userApiProvider = Provider((ref) => UserApi(ref.watch(dioProvider)));