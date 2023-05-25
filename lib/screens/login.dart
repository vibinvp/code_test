import 'package:flutter/material.dart';
import 'package:task_ui/constants/style.dart';
import 'package:task_ui/screens/widgets/primarybutton.dart';
import 'package:task_ui/screens/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.4,
            child: Center(
              child: SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset("assets/pnglogo.png")),
            ),
          ),
          Container(
            height: height * 0.6,
            width: double.infinity,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.10),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  GlobalVariabels.vertical20,
                  const Textfield(
                    hintText: 'Mobile number',
                    icon: Icons.phone,
                  ),
                  GlobalVariabels.vertical20,
                  const Textfield(
                    hintText: 'Password',
                    icon: Icons.lock,
                  ),
                  GlobalVariabels.vertical10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "Forgot password?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(255, 139, 34, 1)),
                      )
                    ],
                  ),
                  GlobalVariabels.vertical20,
                  const Primarybutton(
                    colors1: Color.fromRGBO(255, 192, 4, 1),
                    colors2: Color.fromRGBO(255, 116, 47, 1),
                    title: 'Login',
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                  const Primarybutton(
                    colors1: Color.fromRGBO(0, 82, 190, 1),
                    colors2: Color.fromRGBO(11, 125, 196, 1),
                    title: 'Login with OTP',
                  ),
                  GlobalVariabels.vertical20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account?",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "Sign up now",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 139, 34, 1)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
