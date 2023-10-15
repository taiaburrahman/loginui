import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.centerLeft,
                colors: [
              Color.fromARGB(255, 197, 40, 150),
              Color.fromARGB(255, 121, 15, 170)
            ])),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding:
                    EdgeInsets.only(top: 35, left: 25, right: 25, bottom: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                    Text(
                      'Sign in to continue',
                      style: TextStyle(fontSize: 16, color: Colors.black38),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: isObsecure,
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.vpn_key_outlined),
                          labelText: 'Password',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isObsecure = !isObsecure;
                                });
                              },
                              icon: Icon(isObsecure == true
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined))),
                    ),
                    SizedBox(height: 25),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 400,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.centerLeft,
                                          colors: [
                                            Color.fromARGB(255, 197, 40, 150),
                                            Color.fromARGB(255, 121, 15, 170)
                                          ])),
                                  child: Text(
                                    'Log in',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 15),
                                        child: Text(
                                          'Forgot Password?',
                                          style:
                                              TextStyle(color: Colors.black38),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 50),
                                        child: Text(
                                          'Sign up',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
