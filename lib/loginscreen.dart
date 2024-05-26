import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather/constants/constans.dart';
import 'package:weather/forgotpassword.dart';
import 'package:weather/homescreen.dart';
import 'package:weather/signupscreen.dart';
import 'package:weather/utils/costumebutton.dart';
import 'package:weather/utils/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 76, bottom: 24, right: 24, left: 24),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Hey, \nWelcome Back',
                      style: TextStyle(
                          fontFamily: 'Compact',
                          fontSize: 30,
                          color: kDark,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Form(
                  child: Column(
                children: [
                  CostumeTextField(
                      labeltext: 'Email', icon: Icon(Iconsax.direct_right)),
                  SizedBox(
                    height: 20,
                  ),
                  CostumePasswordTextField(
                    labeltext: 'Password',
                    icon: Icon(Iconsax.key),
                    password: true,
                    icon2: Icon(Iconsax.eye_slash),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (Value) {},
                            checkColor: Colors.black,
                            activeColor: Colors.white,
                          ),
                          Text(
                            'Remember Me',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Compact',
                                fontSize: 15),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ForgotPassword()));
                          },
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Compact',
                                fontSize: 15),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  CostumeButton(
                    label: 'Sign In',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomeScreen()));
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CostumeButton(
                    label: 'Sign Up',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SignUpScreen()));
                    },
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
