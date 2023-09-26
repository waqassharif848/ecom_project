import 'package:ecom_project/Screen/home.dart';
import 'package:ecom_project/Screen/register.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('Assets/aab.PNG'), fit:BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:109, top: 290 ),
                child: Text('Welcome Back',
                style: TextStyle(color: Colors.lightGreen, fontSize: 25, fontWeight:FontWeight.w900,),)
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.4,
                   right:35, left: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))
                    ),),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () {
                        Navigator.pushNamed(context, 'home');
                        },
                          child: Text(
                          'Sign In', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),),),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context,'register');
                        },
                            child: Text('Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              color: Colors.black,
                            ),)),
                        SizedBox(width: 20,),
                        TextButton(onPressed: () {
                          Navigator.pushNamed(context, 'forget');
                        },
                            child: Text('Forget Passsword',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 15,
                                color: Colors.black,
                              ),))
                      ],
                    ),
                      ],
                    )

                ),
              ),

          ],
        ),
      ),
    );
  }
}
