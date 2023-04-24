import 'package:advanceexam/screens/todoscreen/model/todo_model.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class TodoHomeScreen extends StatefulWidget {
  const TodoHomeScreen({Key? key}) : super(key: key);

  @override
  State<TodoHomeScreen> createState() => _TodoHomeScreenState();
}

class _TodoHomeScreenState extends State<TodoHomeScreen> {
  TextEditingController txtdata = TextEditingController();
  TextEditingController txtdate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("ToDo Screen"),
          actions: [
            IconButton(
              onPressed: () async {
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            controller: txtdata,
                          ),
                          TextFormField(
                            controller: txtdate,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                l1.add(Model(
                                    data: txtdata.text, date: txtdate.text));
                                print(l1);
                                Navigator.pop(context);
                                txtdate.clear();
                                txtdata.clear();
                              });
                            },
                            child: Text("submit"),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("${l1[index].data}"),
                      Text("${l1[index].date}"),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        l1.removeAt(index);
                      });
                    },
                    icon: Icon(Icons.delete),
                  ),
                  IconButton(
                    onPressed: () async {
                      TextEditingController txtdata1 =
                          TextEditingController(text: "${l1[index].data}");
                      TextEditingController txtdate2 =
                          TextEditingController(text: "${l1[index].date}");
                      return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextFormField(
                                  controller: txtdata1,
                                ),
                                TextFormField(
                                  controller: txtdate2,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      l1[index].data = txtdata1.text;
                                      l1[index].date = txtdate2.text;

                                      print(l1);
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Text("submit"),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.edit),
                  ),
                ],
              )),
          itemCount: l1.length,
        ),
      ),
    );
  }
}
