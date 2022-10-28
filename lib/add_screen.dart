import 'package:alifsoft/chat_screen.dart';
import 'package:flutter/material.dart';

class Add_Screen extends StatelessWidget {
  const Add_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation & Route'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  //Navigator.pushReplacement(context,MaterialPageRoute(builder: (_) => ChatScreen(),));
                  //Navigator.pop(context,MaterialPageRoute(builder: (_) => ChatScreen(),),);
                  Navigator.pushNamed(context, '/chatscreen');
                },
                child: Text("chat screen"))
          ],
        ),
      ),
    );
  }
}
