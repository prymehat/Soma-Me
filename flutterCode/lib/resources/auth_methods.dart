// ignore_for_file: avoid_print, unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //sign up user
  Future<String> signUpUser({
    required String fullname,
    required String email,
    required String password,
    required String phone,
  }) async {
    String res = "Some error occured";
    try {
      if (fullname.isNotEmpty ||
          email.isNotEmpty ||
          password.isNotEmpty ||
          phone.isNotEmpty) {
        //register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        print(cred.user!.uid);
        //add user to database
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'uid': cred.user!.uid,
          'email': email,
          'phone': phone,
          'fullname': fullname,
        });
        res = 'success';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  //login user
  Future<String> loginUser(
      {required String email, required String password}) async {
    String res = 'Some error ocurred';

    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'success';
      } else {
        res = 'Please enter all the fields';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
