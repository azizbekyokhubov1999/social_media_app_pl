import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  final emailController = TextEditingController();
  final pwController = TextEditingController();
  final nameController = TextEditingController();
  final confirmPwController = TextEditingController();

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
                  "Let's create an account for you",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                SizedBox(
                    height: 20
                ),
                // name textField
                MyTextField(
                    controller: nameController,
                    hintText: 'Name',
                    obscureText: false
                ),
                SizedBox(
                    height: 10
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
                    height: 10
                ),
                // confirm pw textField
                MyTextField(
                    controller: confirmPwController,
                    hintText: 'Confirm Password',
                    obscureText: true
                ),
                SizedBox(
                    height: 25
                ),
                //Register btn
                MyButton(
                    onTap: (){},
                    text: "Register"
                ),
                SizedBox(
                    height: 50
                ),
                // Already a member? Login now btn
                Text(
                  "Already a member? Login now",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

