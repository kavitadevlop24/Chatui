import 'package:chatui/Components/my_button.dart';
import 'package:chatui/Components/textfields.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  void signIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 100,),
                Icon(Icons.message,
                size: 100,
                  color: Colors.grey[800],
                ),
                const SizedBox(height: 50,),
                const Text("Welcome back you've been missed!",
                style: TextStyle(
                  fontSize: 16,
                ),
                ),
                const SizedBox(height: 25,),
                MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                ),
                const SizedBox(height: 25,),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                  const SizedBox(height: 25,),
                  MyButton(onTap: signIn, text: "Sign In"),
                  const SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text('Not a member?'),
                        SizedBox(width: 4,),
                     GestureDetector(
                        onTap: widget.onTap,
                        child: Text('Register now',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
              ],),
            ),
          ),
        ),
      ),
    );
  }
}
