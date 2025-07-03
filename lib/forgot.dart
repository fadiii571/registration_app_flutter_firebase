import 'package:flutter/material.dart';
import 'package:registration_app_flutter_firebase/authservice.dart';

class forgotpass extends StatefulWidget {
  const forgotpass({super.key});

  @override
  State<forgotpass> createState() => _forgotpassState();
}

class _forgotpassState extends State<forgotpass> {
  TextEditingController emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enter your email and we'll send you a link to get back into your account.",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
             
              TextField(controller: emailcontroller,
                decoration: InputDecoration(prefixIcon: Icon(Icons.email),
                hintText: "email",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))
                ),
              ),
              SizedBox(height: 20,),
               ElevatedButton(onPressed: (){forgotp(email: emailcontroller.text, context: context);}, child: Text("Sent link",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),style:ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue,foregroundColor: Colors.white),),
            
            ],
          ),
        ),
      ),
    );
  }
}