import 'package:flutter/material.dart';
import 'package:future_builder/main/main_service.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(child: MainService.users()),
    );
  }
}
/*
FutureBuilder(
          future: MainService.getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Loading();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('ERROR!!!');
              } else {
                return UserList(snapshot);
              }
            }
          },
        ),
 */
