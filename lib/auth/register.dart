import 'package:demo/auth/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Register extends StatefulWidget {
  const Register ({super.key});

  @override
  State<Register> createState() => _State();
}

class _State extends State<Register> {
  get formKey => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Tiếng Việt",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: Image.asset('assets/images/anhmes2.jpg').image,
                  ),
                  // Image.asset("assets/anhmessenger.jpg"),
                  // Image(image: AssetImage("assets/images/anhmes2.jpg")),

                  const SizedBox(height: 20),

                  TextFormField(
                    decoration: textInputDecoration.copyWith(
                      labelText: "Nhập vào số di động hoặc email",
                    ),
                    onChanged: (val) {
                      setState(() {
                        // email = val;
                      });
                    },
                  ),

                  const SizedBox(height: 15),
                  TextFormField(
                    obscureText: true,
                    decoration: textInputDecoration.copyWith(
                      labelText: "Password",
                    ),
                    onChanged: (val) {
                      setState(() {
                        // password = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: textInputDecoration.copyWith(
                      labelText: "Confirm Password",
                    ),
                    onChanged: (val) {
                      setState(() {
                        // password = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                      ),
                      child: const Text(
                        "Đăng ký",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: (){},
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text.rich(
                      TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: "Bạn đã có tài khoản!",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  // decoration: TextDecoration.underline
                                ),
                                recognizer: TapGestureRecognizer()..onTap = (){
                                  _goToLogin();
                                }
                            )
                          ]
                      )
                  ),
                  // const SizedBox(height: 30),
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //
                  //       // backgroundColor: Colors.blue,
                  //         elevation: 0,
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //           side: const BorderSide(width: 2,color: Colors.blue),
                  //         )
                  //     ),
                  //     child: const Text(
                  //       "Tạo tài khoản mới",
                  //       style: TextStyle(color: Colors.blue, fontSize: 16),
                  //     ),
                  //     onPressed: (){},
                  //   ),
                  // ),

                ],
              ),
            ),
          ),
        ));
  }
  void _goToLogin(){
    Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ));
  }
}
