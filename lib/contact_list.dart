import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ContactList extends StatefulWidget {
  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _updateController = TextEditingController();

  Box? contatBox;

  @override
  void initState() {
    contatBox = Hive.box('contact_list');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact List')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "input user number",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      final userInput = _controller.text;
                      await contatBox!.add(userInput);
                      Fluttertoast.showToast(msg: 'Added Successfull');
                      _controller.clear();
                    } catch (e) {
                      Fluttertoast.showToast(
                        msg: e.toString(),
                      );
                    }
                  },
                  child: Text('Add Data'),
                ),
              ),
              Expanded(
                  child: ValueListenableBuilder(
                valueListenable: Hive.box('contact_list').listenable(),
                builder: (context, Box, Widget) {
                  return ListView.builder(
                      itemCount: contatBox!.keys.toList().length,
                      itemBuilder: (_, index) {
                        return Card(
                          elevation: 5,
                          child: ListTile(
                            trailing: Container(
                              width: 100,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          barrierDismissible: true,
                                          builder: (_) {
                                            return Dialog(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(20.0),
                                                child: Column(
                                                  children: [
                                                    TextField(
                                                      controller:
                                                          _updateController,
                                                    ),
                                                    ElevatedButton(
                                                        onPressed: () async {
                                                          final updatedInput =
                                                              _updateController
                                                                  .text;
                                                          contatBox!.putAt(
                                                              index,
                                                              updatedInput);
                                                          _updateController
                                                              .clear();
                                                          Navigator.pop(
                                                              context);
                                                          Fluttertoast.showToast(
                                                              msg:
                                                                  'Updated Successfull');
                                                        },
                                                        child: Text('Update'))
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      await contatBox!.deleteAt(index);
                                      Fluttertoast.showToast(
                                          msg: 'deleted Successfull');
                                    },
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            title: Text(contatBox!.getAt(index).toString()),
                          ),
                        );
                      });
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
