import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:registration_app_flutter_firebase/home.dart';

Future<void> register({
  required String username,
  required String Email,
  required String password,
  required String conformpassword,
  required BuildContext context,
}) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: Email, password: password);
    User? user = userCredential.user;
    await FirebaseFirestore.instance.collection("users").doc(user?.uid).set({
      "Name": username,
      "Email": Email,
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Signup Sucessfull")));
    
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> login({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {UserCredential userCredential=
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    User? user=userCredential.user;
    DocumentSnapshot userDoc= await FirebaseFirestore.instance.collection("users").doc(user?.uid).get();
    String username=userDoc['Name']??"";
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("login successfull")));
       Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homesc(username: username)),
    );
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> forgotp({
  required String email,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Check your inbox")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
