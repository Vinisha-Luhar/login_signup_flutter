
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/features/user/data/user_api.dart';

import '../model/user_model.dart';

class UserRepository{
  final UserApi userApi;
  UserRepository(this.userApi);

  Future<UserModel> getUser() async{
    return userApi.fetchUser();
  }
}

final userRepositoryProvider = Provider<UserRepository>((ref) => UserRepository(ref.watch(userApiProvider)));