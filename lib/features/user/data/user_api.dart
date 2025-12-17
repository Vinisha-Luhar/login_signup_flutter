
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/network/dio_provider.dart';
import '../model/user_model.dart';

class UserApi{
  final Dio _dio;
  UserApi(this._dio);

  Future<UserModel> fetchUser() async{
    final response = await _dio.get("/users/1");
    return UserModel.fromJson(response.data);
  }

}

final userApiProvider = Provider<UserApi>((ref) {
  return UserApi(ref.watch(dioProvider));
},);