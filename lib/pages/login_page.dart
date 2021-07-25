import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter user Name", labelText: "User Name"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(height: 48),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50: 150,
                        height: 40,
                        //color: Colors.deepPurple,
                        alignment: Alignment.center,
                        child: changeButton ? Icon(Icons.done) :Text(
                          "LogIn",
                          style: TextStyle(
                            fontSize: 18,
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,

                          borderRadius: BorderRadius.circular(changeButton? 50:8)
                        ),
                      ),
                    )


                    /*ElevatedButton(
                      child: Text("LogIn"),
                      style: TextButton.styleFrom(minimumSize: Size(180, 40)),
                      onPressed: () {
                        print("Hi Codepur");
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    )*/
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
