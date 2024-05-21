import 'package:flutter/material.dart';
import 'package:json_app/screen/home/provider/json_provider.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  jsonProvider? providerR;
  jsonProvider? providerW;
  void initState() {
    super.initState();
    context.read<jsonProvider>().getJsonData();
  }
  @override
  Widget build(BuildContext context) {
    providerW=context.watch<jsonProvider>();
    providerR=context.read<jsonProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text("Post",style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: providerW!.postList.length,
        itemBuilder: (context, index) {
        return ListTile(
          leading: Text("${providerW!.postList[index].id}"),
          title: Text("${providerW!.postList[index].title}"),
        );
      },),
    );
  }
}
