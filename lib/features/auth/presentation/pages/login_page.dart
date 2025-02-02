/*

LOGIN PAGE

on this page, an existing user can login with their

-email
-pw
--------------------------------------
Once the user successfully logs in, they will be redirected to home page

if user doesn't have an account yet, they can go to register page from here to create one

 */

import 'package:flutter/material.dart';
import 'package:social_media_app_pl/features/auth/presentation/components/my_button.dart';
import 'package:social_media_app_pl/features/auth/presentation/components/my_text_field.dart';

class LoginPage extends StatefulWidget {

  final void Function()? togglePages;
   LoginPage({super.key, required this.togglePages});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //logo
                Icon(
                  Icons.lock_open_rounded,
                  size: 80,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(height: 50),
                // welcome back msg
                Text(
                  "Welcome back. you've been missed",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                SizedBox(
                  height: 20
                ),
                // email textField
                MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false
                ),
                SizedBox(
                    height: 10
                ),
                // pw textField
                MyTextField(
                    controller: pwController,
                    hintText: 'Password',
                    obscureText: true
                ),
                SizedBox(
                    height: 25
                ),
                //login btn
                MyButton(
                    onTap: (){},
                    text: "Login"
                ),
                SizedBox(
                  height: 50
                ),
                // not a member? register now btn
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Not a member?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.togglePages,
                      child: Text(
                        " Register now",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

