import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 224, 224),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.android,
                size: 110,
                ),
                const SizedBox(height: 60,),
            // Hello again!
            const Text(
              'HELLO AGAIN!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              'Welcome back, you\'ve been missed!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 50,),

            // email textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Email'
                ),
              ),
            ),
            const SizedBox(height: 10,),

            // password textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Password'
                ),
              ),
            ),
          const SizedBox(height: 10,),

            // sign in button
           TextButton(
             style: ButtonStyle(
               foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
               backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
             ),
             onPressed: () { },
             child: const Text('Sign in'),
            ),
            const SizedBox(height: 25,),
            
            // not a member? register now
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?'),
                Text(
                  ' Register now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  )
              ],
            ),

           ]
          ),
        ),
      ),
    );
  }
}