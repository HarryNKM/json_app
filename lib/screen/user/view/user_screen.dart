import 'package:flutter/material.dart';
import 'package:json_app/screen/user/provider/user_provider.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserProvider? providerW;
  UserProvider? providerR;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<UserProvider>().getUserJsonData();
  }
  @override
  Widget build(BuildContext context) {
    providerR=context.read<UserProvider>();
    providerW=context.watch<UserProvider>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("User"),
      ),
      body: ListView.builder(
        itemCount: providerW!.userList.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text("${providerW!.userList[index].id}"),
          subtitle: Text("${providerW!.userList[index].a1!.geo!.lat}"),
        );
      },)
    );
  }
}
