import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/SignupImage.png",
          fit: BoxFit.cover,
          height: 350,
          alignment: Alignment.center,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Welcome, $name",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    changeButton = true;
                  });
                  Future.delayed(Duration(milliseconds: 500), () {
                    Navigator.pushNamed(context, myRoutes.homeRoute);
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: changeButton ? 50 : 120,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 35,
                        )
                      : Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 10)),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
