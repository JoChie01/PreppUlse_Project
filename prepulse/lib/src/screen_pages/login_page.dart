// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_print, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prepulse/pages/01.home/home_page.dart';
import 'package:prepulse/src/fields/email_field.dart';
import 'package:prepulse/src/fields/password_field.dart';
import 'package:prepulse/src/screen_pages/auth_page.dart';
import '../constants/colors.dart';
import '../constants/image_string.dart';


class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isHiddenPassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void togglePasswordVisibility() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ Container( 
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF216A08),
                pSourCandyColor,
                pDarkGreen
              ])
          ),
          child: const Padding(padding: EdgeInsets.only(top: 60.0, left: 22.0),
          child: Text("WELCOME TO BACK!", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700
          ))),),



          Padding(
            padding: const EdgeInsets.only(top: 200.0), 
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)),
                color: Theme.of(context).scaffoldBackgroundColor,),
              height: double.infinity,
              width: double.infinity,
              
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(right: 350, left: 350),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [const SizedBox(height: 100),
                    
                    //email
                     EmailField(
                      controller: emailController ,
                    ),
                
                    const SizedBox(height: 20),

                    //password
                      PasswordField(
                      controller: passwordController,
                      isHiddenPassword: isHiddenPassword,
                      togglePasswordVisibility: togglePasswordVisibility,
                    ),
                     
                     
                     const SizedBox(height: 20),
                     
                     //button
                     SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(onPressed: _signIn,
                      child: Text('Sign In')),
                     ),
                     
                     SizedBox(height: 8,),

                     //forgot password
                    TextButton(onPressed: (){},
                    child: Text('Forgot Password?', style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ))),
                    
                    const SizedBox(height: 5,),

                    Align(alignment: Alignment.centerLeft,
                    child: Text('Continue with:', style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),),),

                    // google button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton.icon(
                          icon: Image(image: AssetImage(Google),width: 80,),
                          onPressed: (){}, 
                          label: Text('Google', style: TextStyle(color: Theme.of(context).primaryColor),),
                        ),
                      
                    
                    //apple buttom
                      TextButton.icon(
                          icon: Image(image: AssetImage(Facebook),width: 60,),
                          onPressed: (){}, 
                          label: Text('Facebook',style: TextStyle(color: Theme.of(context).primaryColor)),
                        ),
                    
                      // facebook button
                      TextButton.icon(
                          icon: Image(image: AssetImage(Apple),width: 60,),
                          onPressed: (){}, 
                          label: Text('Apple',style: TextStyle(color: Theme.of(context).primaryColor)),
                        ),
                      ],
                    )
                    ],
                  ),
                ),
              ),
            ),
          ),

      ]),
        
    );
  }

void _signIn() async{
  String email = emailController.text;
  String password = passwordController.text;

  User? user = await _auth.signInWithEmailAndPassword(email, password);

  if(user != null){
    print("User is successfully signed In");
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  } else {
    print("Some error happened");
  }

}
  
} 