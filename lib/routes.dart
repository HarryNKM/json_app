import 'package:flutter/material.dart';
import 'package:json_app/screen/albums/view/albums_screen.dart';
import 'package:json_app/screen/comments/view/comments_screen.dart';
import 'package:json_app/screen/home/view/home_screen.dart';
import 'package:json_app/screen/photos/view/photos_screen.dart';
import 'package:json_app/screen/post/view/post_screen.dart';

Map<String, WidgetBuilder> app_routes = {
  '/': (context) => HomeScreen(),
  'post': (context) => PostScreen(),
  'comment': (context) => CommentScreen(),
  'album': (context) => AlbumScreen(),
  'photo': (context) => PhotoScreen(),
};
