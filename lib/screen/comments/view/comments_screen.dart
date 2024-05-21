import 'package:flutter/material.dart';
import 'package:json_app/screen/comments/modal/comments_modal.dart';
import 'package:json_app/screen/comments/provider/comments_provider.dart';
import 'package:json_app/screen/home/provider/json_provider.dart';
import 'package:provider/provider.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {

  CommentsProvider? providerR;
  CommentsProvider? providerW;

  void initState() {
    super.initState();
    context.read<CommentsProvider>().getJsonData();
  }
  @override
  Widget build(BuildContext context) {
    providerW=context.watch<CommentsProvider>();
    providerR=context.read<CommentsProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text("Comments",style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: providerW!.commentsList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("${providerW!.commentsList[index].id}"),
            title: Text("${providerW!.commentsList[index].body}"),
            subtitle: Text("${providerW!.commentsList[index].email}"),
             trailing: Text("${providerW!.commentsList[index].postId}"),
          );
        },),
    );
  }
}
