import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Advance Flutter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'pattern');
                },
                child: Text("Pattern screen"),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'todo');
                },
                child: Text("ToDo screen"),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'api');
                },
                child: Text("Api screen"),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
