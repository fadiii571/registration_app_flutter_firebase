import 'package:flutter/material.dart';
import 'package:registration_app_flutter_firebase/authservice.dart';

class forgotpass extends StatefulWidget {
  const forgotpass({super.key});

  @override
  State<forgotpass> createState() => _forgotpassState();
}

class _forgotpassState extends State<forgotpass> {
  final  formkey=GlobalKey<FormState>();
  TextEditingController emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Form(key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enter your email and we'll send you a link to get back into your account.",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),
               
                TextFormField(controller: emailcontroller,
                validator: (value) {
                  if(value == null || value.isEmpty){
                  return "email is required";}
                  return null;
                },
                  decoration: InputDecoration(prefixIcon: Icon(Icons.email),
                  hintText: "email",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))
                  ),
                ),
                SizedBox(height: 20,),
                 ElevatedButton(onPressed: (){
                  if (formkey.currentState!.validate()){forgotp(email: emailcontroller.text, context: context);}}, child: Text("Sent link",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),style:ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue,foregroundColor: Colors.white),),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}