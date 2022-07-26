import 'package:flutter/material.dart';

import '../../resouces/strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OrderTennis"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                obscureText: false,
                decoration: const InputDecoration(
                    hintText: 'Username',
                    hintStyle:
                    TextStyle(color: Color(0xff43a047)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xff43a047))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xff43a047)))),
                cursorColor: Colors.white,
                maxLines: 1,
                style: const TextStyle(color: Colors.black),
                controller: TextEditingController(text: "nguyen.van.bac33@gmail.com"),
              ),
              const SizedBox(height: 16,),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Password',
                    hintStyle:
                    TextStyle(color: Color(0xff43a047)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xff43a047))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xff43a047)))),
                cursorColor: Colors.white,
                maxLines: 1,
                style: const TextStyle(color: Colors.black),
                controller: TextEditingController(text: "123456789"),
              ),
              const SizedBox(height: 16,),
              ElevatedButton(
                  onPressed: () { Navigator.pushNamed(context, Strings.schedulerScreen); },
                  child: const Text(
                      "Login"
                  ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
