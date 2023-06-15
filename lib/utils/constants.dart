// Define a constant variable to be used as decoration for text fields
import 'package:flutter/material.dart';

const String kAppTitle = "Zensar Recipe App";
const String kWelComeScreenTitle = "Welcome to Zensar Recipe App";
const String kWelcomeScreenSubTitle = "";//'Your new recipe cook book';
const String kWelcomeScreenRegister = 'Register';
const String kWelcomeScreenRegisterAlready = 'Already registered?';
const String kWelcomeScreenLogin = 'Login';
const String kLoginTextFieldEmail = 'Email';
const String kLoginTextFieldPassword = 'Password';
const String kLoginScreenButon = 'Log In';
const kBrightness = Brightness.light;
const kOrange = Colors.orange;
const kDark = Brightness.dark;

const kWelcomeScreenTitleStyle = TextStyle(
    fontSize: 24.0, color: Colors.lightBlue, fontWeight: FontWeight.bold);
const kWelcomeScreenSubTitleStyle = TextStyle(
    fontSize: 20.0, color: Colors.lightBlue, fontWeight: FontWeight.bold);

const kWelcomeScreenButStyle =
    TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold);
const kLoginScreenTitleStyle = TextStyle(
  fontSize: 32.0,
  fontWeight: FontWeight.bold,
);
const kLoginScreenButStyle =
TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold);
//TextStyle(fontSize: 22.0, color: Color(0xFF81838E));

const kTextFieldDecoration = InputDecoration(
// Set a default hint text
  hintText: 'Enter a value',
// Set padding for the text field content
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
// Define the border for the text field
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
// Define the enabled border for the text field
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
// Define the focused border for the text field
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
