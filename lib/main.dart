
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

import 'package:flutter_infinte_list_bloc/bloc/bloc.dart';
import 'package:flutter_infinte_list_bloc/pages/HomePage.dart';

void main() {
  BlocSupervisor().delegate = SimpleBlocDelegate();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Infinite Scroll',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: HomePage(),
      ),
    );
  }
}
