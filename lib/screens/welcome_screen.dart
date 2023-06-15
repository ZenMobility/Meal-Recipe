// Import necessary packages
import 'package:flutter/material.dart';
import 'package:zensar_recipe_app/utils/constants.dart';
import 'register_screen.dart';

import 'login_screen.dart';

// Define the welcome screen stateless widget
class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

// Build the welcome screen widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
// Display the app logo
            Image.asset(
              'assets/images/food_img.png',
              height: 400,
              width: 400,
            ),
            SizedBox(height: 2.0),
// Display the app title
            TitleText(),
            SizedBox(height: 5.0),
// Display the register and login buttons
            RegisterLoginButtons(),
          ],
        ),
      ),
    );
  }
}

// Define the title text stateless widget
class TitleText extends StatelessWidget {
  const TitleText({Key? key}) : super(key: key);

// Build the title text widget
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          kWelComeScreenTitle,
          style: kWelcomeScreenTitleStyle,
        ),
        SizedBox(height: 8.0),
        Text(
          kWelcomeScreenSubTitle,
          style: kWelcomeScreenSubTitleStyle,
        ),
      ],
    );
  }
}

// Define the register and login buttons stateless widget
class RegisterLoginButtons extends StatelessWidget {
  const RegisterLoginButtons({Key? key}) : super(key: key);

// Build the register and login buttons widget
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
// Display the register button
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RegisterScreen.id);
          },
          child: Text(kWelcomeScreenRegister,style: kWelcomeScreenButStyle,),
        ),
        SizedBox(height: 10.0),
        Text(
          kWelcomeScreenRegisterAlready,
          style: kWelcomeScreenSubTitleStyle
        ),
        SizedBox(height: 8.0),
// Display the login button
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, LoginScreen.id);
          },
          child: Text(kWelcomeScreenLogin,style: kWelcomeScreenButStyle,
        )),
      ],
    );
  }
}
