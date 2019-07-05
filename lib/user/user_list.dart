import 'package:flutter/material.dart';
import 'package:future_builder/user/user_detail.dart';

class UserList extends StatelessWidget {
  final AsyncSnapshot snapshot;

  UserList(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(snapshot.data[index].picture),
          ),
          title: Text(snapshot.data[index].name),
          subtitle: Text(snapshot.data[index].email),
          onTap: () {

            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => UserDetail(snapshot.data[index]))
            );

          },
        );
      },
    );
  }
}
