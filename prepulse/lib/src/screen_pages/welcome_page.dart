// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:prepulse/src/constants/colors.dart';
import 'package:prepulse/src/constants/image_string.dart';


import 'login_page.dart';
import 'signup_page.dart';



class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text("WELCOME", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40
                  ),),
                ),

                SizedBox(height: 5,),
                Text("Prepulse manage your business with ease and takes your worries away.", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                 color: pSourCandyColor,
                ),),
              ],),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(Welcome))
                  ),
                ),
              ),

            // Login button
              Column(
                children: [SizedBox(height: 60, width: 350,
                  child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      color: Theme.of(context).primaryColor,
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));},
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: pSecondaryColor),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text("Login", 
                      style: TextStyle(
                      fontWeight:  FontWeight.w700, fontSize: 18, color: Theme.of(context).secondaryHeaderColor, ),),),
                ),
              
                          // Signup button
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(child: SizedBox(height: 60, width: 350,
                        child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));},
                        color: pSourCandyColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text("Sign up",
                          style: TextStyle(color: Theme.of(context).secondaryHeaderColor,
                          fontWeight: FontWeight.w700, fontSize: 18),),),
                      )
                        
                  ),
                ),
              ],
              )
            ],
          ),
      
          ),
      ),
    );
  }
}