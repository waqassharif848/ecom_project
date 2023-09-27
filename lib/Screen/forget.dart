import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('Assets/aab.PNG'), fit:BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(left:96, top: 270 ),
                //height: MediaQuery.of(context).size.height*0.7,
                child: Text('Forget Password',
                  style: TextStyle(color: Colors.lightGreen,
                    fontFamily: 'Arvo',
                    fontSize: 25, fontWeight:FontWeight.w900
                  ),)
            ),
            SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.4,
                      right:35, left: 35
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context,'forgetp');
                          },
                           child: Text(
                            'Forget Password', style: TextStyle(
                              fontFamily: 'Arvo',
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
                          TextButton(onPressed: () {
                            Navigator.pushNamed(context,'login');
                          },
                              child: Text('Sign In',
                                style: TextStyle(
                                  fontFamily: 'Arvo',
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),)),
                          TextButton(onPressed: () {
                            Navigator.pushNamed(context, 'register');},
                              child: Text('Sign Up',
                                style: TextStyle(
                                  fontFamily: 'Arvo',
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
