import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close, size: 18),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  child: Text('Sign up with Email'),
                  onPressed: () {
                    // Handle email sign up
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  child: Text('Sign up with Telephone Number'),
                  onPressed: () {
                    // Handle phone number sign up
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SignInButton(
                Buttons.Google,
                onPressed: () {
                  // Handle Google sign up
                },
              ),
              SizedBox(height: 16),
              SignInButton(
                Buttons.Facebook,
                onPressed: () {
                  // Handle Facebook sign up
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
