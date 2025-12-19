
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/features/post/controller/post_pagination_notifier.dart';

class PostListScreen extends ConsumerWidget{
  const PostListScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final postState = ref.watch(postPaginationNotifierProvider);
    final postNotifier = ref.read(postPaginationNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text("POSTS")),
      body: postState.when(
          data: (data) {
            return ListView.builder(
              itemCount: data.length+1,
                itemBuilder: (context, index) {
                   if(index == data.length)
                     {
                       if(postNotifier.hasMore)
                         {
                           postNotifier.fetchNextPage();
                           return const Padding(
                               padding: EdgeInsets.all(16),
                               child: Center(
                                child: CircularProgressIndicator(),
                               ),
                           );
                         } else {
                         return const Padding(
                             padding: EdgeInsets.all(16),
                             child: Center(child: Text("No More Data")),
                         );
                       }
                     }
                   final post =data[index];
                   return ListTile(
                     title: Text(post.title),
                     subtitle: Text(post.body),
                   );
                },
            );
          },
          error: (error, stackTrace) {
            Center(child: Text('$error'));
          },
          loading: () => const Center(child: CircularProgressIndicator(),),
      ),
    );
  }
}