import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _key = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color(0xffff0A0171)),
        child: Form(
            key: _key,
            child: Stack(
              children: [
                Positioned(
                  left: 0.264 * MediaQuery.of(context).size.width,
                  top: 0.138 * MediaQuery.of(context).size.height,
                  child: Image.asset(
                    'assets/images/signIn.png',
                    width: 0.47 * MediaQuery.of(context).size.width,
                    height: 0.23 * MediaQuery.of(context).size.height,
                  ),
                ),
                Positioned(
                  left: 0.298 * MediaQuery.of(context).size.width,
                  top: 0.451 * MediaQuery.of(context).size.height,
                  child: const Text(
                    'Welcome Back!',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 24.0,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 0.526 * MediaQuery.of(context).size.height,
                  left: 0.133 * MediaQuery.of(context).size.width,
                  child: const Text(
                    "Please Log into your existing account",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                Positioned(
                  left: 0.053 * MediaQuery.of(context).size.width,
                  top: 0.59 * MediaQuery.of(context).size.height,
                  child: Container(
                    height: 0.086 * MediaQuery.of(context).size.height,
                    width: 0.9 * MediaQuery.of(context).size.width,
                    child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter Email Address';
                        }
                      },
                      controller: _emailController,
                      decoration: const InputDecoration(
                        errorBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25.0)),
                            borderSide:
                            BorderSide(width: 1, color: Colors.white)),
                        focusedErrorBorder:  OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25.0)),
                            borderSide:
                            BorderSide(width: 1, color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25.0)),
                            borderSide:
                            BorderSide(width: 1, color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25.0)),
                            borderSide:
                            BorderSide(width: 1, color: Colors.white)),

                        labelText: 'Your Email',
                        labelStyle: TextStyle(
                          fontFamily: 'Raleway',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0.053 * MediaQuery.of(context).size.width,
                  top: 0.701 * MediaQuery.of(context).size.height,
                  child: Container(
                    height: 0.086 * MediaQuery.of(context).size.height,
                    width: 0.9 * MediaQuery.of(context).size.width,
                    child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter Password';
                        }
                      },
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        errorBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25.0)),
                            borderSide:
                            BorderSide(width: 1, color: Colors.white)),
                        focusedErrorBorder:  OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25.0)),
                            borderSide:
                            BorderSide(width: 1, color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.white)),
                          labelText: 'Your Password',
                        labelStyle: TextStyle(
                          fontFamily: 'Raleway',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: Color(0xFFFFFFFF),
                        ),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0.053 * MediaQuery.of(context).size.width,
                  top: 0.826 * MediaQuery.of(context).size.height,
                  child: InkWell(
                    onTap: (){
                      if(_key.currentState!.validate()){}
                    },
                    child: Container(
                      height: 0.086 * MediaQuery.of(context).size.height,
                      width: 0.9 * MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          color: Color(0xffff2BC990)),
                      child: const Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
