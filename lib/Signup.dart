import 'package:flutter/material.dart';
import 'package:registration_app_flutter_firebase/Login.dart';
import 'package:registration_app_flutter_firebase/authservice.dart';

class Sign extends StatefulWidget {
  Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController cpasswordcontroller = TextEditingController();
  final formkey=GlobalKey<FormState>();
  bool visible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formkey,
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Create an account its free",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10),
                Align(alignment: Alignment.topLeft, child: Text("Username")),
                TextFormField(
                  validator: (value) {
                    if(value==null||value.isEmpty){
                      return " username is required";
                    }
                    return null;
                  },
                  controller: namecontroller,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 10),
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
                    suffixIcon: IconButton(onPressed: (){setState(() {
                      visible=!visible;
                    });}, icon:  visible?Icon(Icons.visibility):Icon(Icons.visibility_off)),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Conform password"),
                ),
                TextFormField(
                  obscureText: !visible,
                  validator: (value) {
                    if(value!=passwordcontroller.text){
                      return "password do not match";
                    }
                    return null;
                  },
                  controller: cpasswordcontroller,
                  decoration: InputDecoration(
                    filled: true,
                     suffixIcon: IconButton(onPressed: (){setState(() {
                      visible=!visible;
                    });}, icon:  visible?Icon(Icons.visibility):Icon(Icons.visibility_off)),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 55,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {}
                      register(
                        username: namecontroller.text,
                        Email: emailcontroller.text,
                        password: passwordcontroller.text,
                        conformpassword: cpasswordcontroller.text,
                        context: context,
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
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
                          MaterialPageRoute(builder: (context) => Loginn()),
                        );
                      },
                      child: Text("Login", style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
