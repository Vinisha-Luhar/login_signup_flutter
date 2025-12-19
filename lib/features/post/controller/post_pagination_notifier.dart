
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/features/post/model/post_model.dart';
import 'package:login_signup/features/post/repository/post_repository.dart';

class PostPaginationNotifier extends AsyncNotifier<List<PostModel>>{

  static const int _pageSize=10;
  int _currentPage=1;
  bool _hasMore = true;
  bool _isFetching = false;


  @override
  FutureOr<List<PostModel>> build() async{
    return fetchInitialPost();
  }

  Future<List<PostModel>> fetchInitialPost()async{
    final repo=ref.watch(postRepositoryProvider);
    final post=await repo.getPost(page: _currentPage, limit: _pageSize);
    _hasMore=post.length == _pageSize;
    return post;
  }

  Future<void> fetchNextPage()async{
    if(!_hasMore || _isFetching) return;

    _isFetching = true;
    _currentPage++;
    try{
      final repo=ref.watch(postRepositoryProvider);
      final newPost=await repo.getPost(page: _currentPage, limit: _pageSize);
      _hasMore = newPost.length == _pageSize;
      state = AsyncData([
        ...state.value ?? [],
        ...newPost,
      ]);
    }
    catch(e,st){
      state=AsyncError(e, st);
    }
    finally{
      _isFetching=false;
    }
  }

bool get hasMore => _hasMore;

}

final postPaginationNotifierProvider = AsyncNotifierProvider<PostPaginationNotifier,List<PostModel>>(
  PostPaginationNotifier.new
);