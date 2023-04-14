
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {

  final auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn =GoogleSignIn(scopes :['email']);
  final loginResult =  FacebookAuth.instance;


}