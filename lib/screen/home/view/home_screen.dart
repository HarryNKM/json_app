import 'package:flutter/material.dart';
import 'package:json_app/screen/home/provider/json_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text("JSON",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(onPressed: () {
              Navigator.pushNamed(context, 'post');
                }, child: Text("POST"),),
                TextButton(onPressed: () {
            
                }, child: Text("COMMENTS")),
                TextButton(onPressed: () {
            
                }, child: Text("ALBUMS")),
                TextButton(onPressed: () {
            
                }, child: Text("PHOTOS")),
                TextButton(onPressed: () {
            
                }, child: Text("TODOS")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
