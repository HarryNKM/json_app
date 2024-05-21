import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_app/routes.dart';
import 'package:json_app/screen/albums/provider/album_provider.dart';
import 'package:json_app/screen/comments/provider/comments_provider.dart';
import 'package:json_app/screen/home/provider/json_provider.dart';
import 'package:json_app/screen/photos/provider/photos_provider.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: jsonProvider()),
      ChangeNotifierProvider.value(value: CommentsProvider()),
      ChangeNotifierProvider.value(value: AlbumProvider()),
      ChangeNotifierProvider.value(value: PhotosProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
    ),
  ));
}