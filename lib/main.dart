import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_app/routes.dart';
import 'package:json_app/screen/home/provider/json_provider.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: jsonProvider())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
    ),
  ));
}