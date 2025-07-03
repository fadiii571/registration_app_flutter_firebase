import 'package:flutter/material.dart';
import 'package:registration_app_flutter_firebase/Signup.dart';
import 'package:registration_app_flutter_firebase/authservice.dart';
import 'package:registration_app_flutter_firebase/forgot.dart';

class Loginn extends StatefulWidget {
  const Loginn({super.key});

  @override
  State<Loginn> createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 35,),
              Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Login to your account",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Align(alignment: Alignment.topLeft, child: Text("Email")),
              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.topLeft, child: Text("Password")),
              TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => forgotpass()),
                    );
                  },
                  child: Text(
                    "forgot password?",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 55,
                width:double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    login(
                      email: emailcontroller.text.trim(),
                      password: passwordcontroller.text.trim(),
                      context: context,
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont't have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sign()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Image.network(
                "data:image/jpeg;base64,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",
                height: 300,
                width: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
