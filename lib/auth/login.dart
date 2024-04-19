import 'package:demo/auth/register.dart';
import 'package:demo/home.dart';
import 'package:demo/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

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
                  labelText: "Số di động hoặc email",
                ),
                onChanged: (val) {
                  setState(() {
                    email = val;
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
                    password = val;
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
                    "Đăng nhập",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: (){
                    _goToHome();
                  },
                ),
              ),
              const SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "Bạn quên mật khẩu ư?",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          // decoration: TextDecoration.underline
                        ),
                        recognizer: TapGestureRecognizer()..onTap = (){
                        }
                      )
                    ]
                  )
                ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                      // backgroundColor: Colors.blue,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(width: 2,color: Colors.blue),
                      )
                  ),
                  child: const Text(
                    "Tạo tài khoản mới",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: (){
                    _goToRegister();
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    ));
  }

  void _goToRegister(){
    Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => const Register(),
        ));
  }
  void _goToHome(){
    Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ));
  }
}
