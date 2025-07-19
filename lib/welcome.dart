import 'package:flutter/material.dart';
import 'package:registration_app_flutter_firebase/Login.dart';
import 'package:registration_app_flutter_firebase/Signup.dart';

class Welcomee extends StatelessWidget {
  const Welcomee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Image.asset('assets/welcom.jpg',
                height: 350,
                width: 350,
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 55,
                width: 300,
                child: ElevatedButton(
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder:(context)=>Loginn() ));},
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 55,
                width: 300,
                child: ElevatedButton(
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder:(context)=>Sign() ));},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
