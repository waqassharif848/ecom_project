import 'package:flutter/material.dart';

class MyLogout extends StatefulWidget {
  MyLogout({super.key});

  @override
  State<MyLogout> createState() => _MyLogoutState();


}

class _MyLogoutState extends State<MyLogout> {
  @override
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  String _message = "";

  void _register(){
    String phonenumber = _phoneNumberController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;
    String fullName = _fullNameController.text;
    String userName = _userNameController.text;
    if(
    phonenumber.isEmpty || fullName.isEmpty || email.isEmpty
        || userName.isEmpty || password.isEmpty
        || confirmPassword.isEmpty){
      setState(() {
        _message = "Please fill in all field";
      });
    }
    else if(password != confirmPassword){
      setState(() {
        _message = "Paasword does not match";
      });
    }
    else{
      setState(() {
        _message = "Signup Successful";
      });
    }
  }
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
                padding: EdgeInsets.only(left:90, top: 180 ),
                //height: MediaQuery.of(context).size.height*0.7,
                child: Text('Create New Account',
                  style: TextStyle(color: Colors.lightGreen, fontSize: 25,
                    fontWeight:FontWeight.w900,
                    fontFamily: 'Arvo'
                  ),)
            ),
            SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.3,
                      right:35, left: 35
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Phone No.',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _fullNameController,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Full Name',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _userNameController,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Username',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))
                        ),),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Confirm Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))
                        ),),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _emailController,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context,'login');
                             },
                            child: Text(
                            'Sign Up', style: TextStyle(
                              fontFamily: 'Arvo',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),),),

                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("If You have Already Account?"),
                          TextButton(onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },
                              child: Text('Sign In',
                                style: TextStyle(
                                  fontFamily: 'Arvo',
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),)),
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
