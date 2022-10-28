import 'package:alifsoft/add_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => Add_Screen()));
              },
              child: Text("Add screen"))
        ],
      ),
    );
  }
}
