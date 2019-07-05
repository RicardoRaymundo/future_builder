import 'package:flutter/material.dart';
import 'package:future_builder/user/user.dart';

class UserDetail extends StatelessWidget {
  final User user;

  UserDetail(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(user.picture),
            minRadius: 20,
          ),
          Text(user.about),
        ],
      ),
    );
  }
}
