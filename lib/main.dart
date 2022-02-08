import 'package:flutter/material.dart';

import 'login/login_widget.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFilms',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Color.fromRGBO(3, 37, 65, 1),),
       ),
      home: loginWidget(), // dfsafadff
    );
  }
}