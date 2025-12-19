
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/features/post/model/post_model.dart';
import 'package:login_signup/features/post/service/post_api_service.dart';

class PostRepository{
  final PostApiService postApiService;
  PostRepository(this.postApiService);

  Future<List<PostModel>> getPost({required int page,required int limit}){
    return postApiService.fetchPost(page: page, limit: limit);
  }

}

final postRepositoryProvider = Provider<PostRepository>((ref) {
  return PostRepository(ref.watch(postApiServiceProvider));
});