import 'package:flutter/material.dart';

class Account_Screen extends StatelessWidget {
  TextEditingController _eamilcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Validation")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: Column(children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _eamilcontroller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'enter your email',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "this field can't be empty";
                } else if (value.length < 5) {
                  return "enter your full name ";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              controller: _passwordcontroller,
              decoration: InputDecoration(
                hintText: 'enter your password',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "this field can't be empty";
                } else if (value.length < 6) {
                  return "enter correct password ";
                } else {
                  return null;
                }
              },
            ),
            Divider(
              color: Colors.transparent,
            ),
            SizedBox(
                width: 320,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("validation succesfull");
                      } else {
                        print("failded");
                      }
                    },
                    child: Text("login")))
          ]),
        ),
      ),
    );
  }
}
