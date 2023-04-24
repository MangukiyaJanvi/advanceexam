import 'package:advanceexam/screens/apiscreen/provider/api_provider.dart';
import 'package:advanceexam/screens/apiscreen/view/data_screen.dart';
import 'package:advanceexam/screens/homescreen/view/home_screen.dart';
import 'package:advanceexam/screens/petternscreen/provider/pattern_provider.dart';
import 'package:advanceexam/screens/petternscreen/view/pattern_screen.dart';
import 'package:advanceexam/screens/todoscreen/view/signup_screen.dart';
import 'package:advanceexam/screens/todoscreen/view/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/apiscreen/view/api_screen.dart';
import 'screens/todoscreen/model/todo_model.dart';
import 'screens/todoscreen/view/todohome_screen.dart';
List<Model> l1=[];
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PatternProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ApiProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'pattern': (context) => PatternScreen(),
          'todo': (context) => ToDoScreen(),
          'api': (context) => ApiScreen(),
          'data': (context) => DataScreen(),
          'signup': (context) => SignupScreen(),
          'todohome': (context) => TodoHomeScreen(),
        },
      ),
    ),
  );
}
