import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gyroloop/pages/login.dart';
import 'package:gyroloop/user_auth/firebase_auth_services.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  SignUpFormState createState() {
    return SignUpFormState();
  }
}

class SignUpFormState extends State<SignUpForm> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
          child: Column(
            children: [
              Center(
                child: Column(children: [
                  Text('Sign Up',
                      style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w500,
                          fontSize: 24.0,
                          color: Color(0xFF545852))),
                  SizedBox(height: 12),
                  Text('Please sign up to continue.',
                      style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          color: Color(0xFF545852))),
                  SizedBox(height: 20),
                ]),
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email Address',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF545852),
                        )),
                    SizedBox(height: 12),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 15.0,
                        ),
                        hintText: 'janedoe@gmail.com',
                        hintStyle: TextStyle(
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Color(0xFF92CA78),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Color(0xFF92CA78),
                            width: 1,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    Text('Password',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF545852),
                        )),
                    SizedBox(height: 12),
                    TextFormField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 15.0,
                        ),
                        hintText: 'Enter your password here',
                        hintStyle: TextStyle(
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Color(0xFF92CA78),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Color(0xFF92CA78),
                            width: 1,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    Text('Confirm Password',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF545852),
                        )),
                    SizedBox(height: 12),
                    TextFormField(
                      obscureText: true,
                      controller: _confirmpasswordController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 15.0,
                        ),
                        hintText: 'Enter your password here',
                        hintStyle: TextStyle(
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Color(0xFF92CA78),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Color(0xFF92CA78),
                            width: 1,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    Align(
                      child: ElevatedButton(
                          onPressed: () {
                            _signUp();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            backgroundColor: Color(0xFF79DC4C),
                            shadowColor: Colors.transparent,
                            elevation: 0,
                          ),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 30.0),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'ProductSans',
                                  color: Colors.white,
                                ),
                              ))),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Padding(
                  padding: EdgeInsets.only(right: 60, left: 60),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: const Color.fromARGB(255, 219, 219, 219),
                          height: 5,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'or sign up with',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: "ProductSans",
                            color: const Color.fromARGB(255, 219, 219, 219),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: const Color.fromARGB(255, 219, 219, 219),
                          height: 5,
                          thickness: 1,
                        ),
                      ),
                    ],
                  )),
              Center(
                  child: Column(children: [
                SizedBox(height: 6),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(
                          color: const Color.fromARGB(255, 215, 215, 215)),
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    shadowColor: Color.fromARGB(255, 241, 241, 241),
                    elevation: 2,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: AssetImage('assets/image/Google Icon.png'),
                          height: 15,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Google Account',
                          style: TextStyle(
                            fontFamily: "ProductSans",
                            color: Color(0xFF929292),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                          color: Color(0xFF929292),
                          fontFamily: "ProductSans",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: Color(0xFF79DC4C),
                          fontFamily: "ProductSans",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                      ),
                    ],
                  ),
                )
              ])),
            ],
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("User successfully created");
      Navigator.pushNamed(context, '/login');
    } else {
      print("Error in creating user");
    }
  }
}
