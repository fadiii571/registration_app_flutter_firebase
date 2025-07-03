import 'package:flutter/material.dart';
import 'package:registration_app_flutter_firebase/Login.dart';
import 'package:registration_app_flutter_firebase/Signup.dart';

class Welcomee extends StatelessWidget {
  const Welcomee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
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
            Image.network(
              "data:image/png;base64,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",
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
    );
  }
}
