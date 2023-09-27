import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetP extends StatefulWidget {
  const ForgetP({super.key});

  @override
  State<ForgetP> createState() => _ForgetPState();
}
class _ForgetPState extends State<ForgetP> {
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
                    fontSize: 25,
                    fontFamily: 'Arvo',
                    fontWeight:FontWeight.w900,),)
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
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'New Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))
                        ),),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Confirm Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))
                        ),),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context,'login');
                          },
                            child: Text(
                            'Reset Password', style: TextStyle(
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
