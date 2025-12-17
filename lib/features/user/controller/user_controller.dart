
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/features/user/data/user_repository.dart';
import 'package:login_signup/features/user/model/user_model.dart';

class UserController extends AsyncNotifier<UserModel>{

  @override
  FutureOr<UserModel> build() {
    final userRepo = ref.watch(userRepositoryProvider);
    return userRepo.getUser();
  }

  Future<void> refreshUser() async{
    state = const AsyncLoading();
    try{
      final userRepo=ref.read(userRepositoryProvider);
      final user=await userRepo.getUser();
      state = AsyncData(user);
    }
    catch(e,st){
      state = AsyncError(e, st);
    }
  }

}

final userControllerProvider =
AsyncNotifierProvider<UserController, UserModel>(
  UserController.new,
);