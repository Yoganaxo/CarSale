import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Register')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Username',

              ),
          ),
          const SizedBox(height: 16.0,),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Email'
            ),
          ),
          const SizedBox(height: 16.0,),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          const SizedBox(height: 24.0,),
        ElevatedButton(onPressed: () {
                print("register  pressed");
              }, 
         child: const Text('Register'),)
           
        ],
      ),
      ),
    );
  }
}