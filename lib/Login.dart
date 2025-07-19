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
 bool visible=false; 
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        child: Padding(
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
                TextFormField(
                  validator: (value) {
                    if(value==null||value.isEmpty)
                    {
                      return "email is required";
                    }
                    return null;
                  },
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
                TextFormField(
                  obscureText: !visible,
                   validator: (value) {
                    if(passwordcontroller.text.length!=8){
                      return "password must be 8 characters";
                    }
                    return null;
                  },
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    filled: true,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        visible=!visible;
                      });
                    }, icon: visible?Icon(Icons.visibility):Icon(Icons.visibility_off)),
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
                      if(formkey.currentState!.validate()){
                      login(
                        email: emailcontroller.text.trim(),
                        password: passwordcontroller.text.trim(),
                        context: context,
                      );}
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
                Image.asset('assets/login.png',
                  
                  height: 300,
                  width: 300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
