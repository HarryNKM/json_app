import 'package:flutter/material.dart';
import 'package:json_app/screen/albums/provider/album_provider.dart';
import 'package:json_app/screen/comments/modal/comments_modal.dart';
import 'package:json_app/screen/comments/provider/comments_provider.dart';
import 'package:json_app/screen/home/provider/json_provider.dart';
import 'package:provider/provider.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({super.key});

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {

  AlbumProvider? providerR;
  AlbumProvider? providerW;

  void initState() {
    super.initState();
    context.read<AlbumProvider>().getJsonData();
  }
  @override
  Widget build(BuildContext context) {
    providerW=context.watch<AlbumProvider>();
    providerR=context.read<AlbumProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text("Albums",style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: providerW!.albumList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("${providerW!.albumList[index].id}"),
            title: Text("${providerW!.albumList[index].userId}"),
            subtitle: Text("${providerW!.albumList[index].title}"),

          );
        },),
    );
  }
}
