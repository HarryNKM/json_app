import 'package:flutter/material.dart';
import 'package:json_app/screen/albums/provider/album_provider.dart';
import 'package:json_app/screen/comments/modal/comments_modal.dart';
import 'package:json_app/screen/comments/provider/comments_provider.dart';
import 'package:json_app/screen/home/provider/json_provider.dart';
import 'package:json_app/screen/photos/provider/photos_provider.dart';
import 'package:provider/provider.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({super.key});

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {

  PhotosProvider? providerR;
  PhotosProvider? providerW;

  void initState() {
    super.initState();
    context.read<PhotosProvider>().getJsonData();
  }
  @override
  Widget build(BuildContext context) {
    providerW=context.watch<PhotosProvider>();
    providerR=context.read<PhotosProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text("Photos",style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: providerW!.photosList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage("${providerW!.photosList[index].url}"),),
            title: Text("${providerW!.photosList[index].id}"),
            subtitle: Text("${providerW!.photosList[index].title}"),

          );
        },),

    );
  }
}
