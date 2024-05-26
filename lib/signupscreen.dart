import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather/constants/constans.dart';
import 'package:weather/homescreen.dart';
import 'package:weather/utils/costumebutton.dart';
import 'package:weather/utils/textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondary,
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          backgroundColor: kSecondary,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(24.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Lets Create Your Account',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Compact'),
            ),
            SizedBox(
              height: 24,
            ),
            Form(
                child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: CostumeTextField(
                      icon: Icon(Iconsax.user),
                      labeltext: 'First Name',
                    )),
                    SizedBox(width: 16),
                    Expanded(
                        child: CostumeTextField(
                            labeltext: 'Last Name', icon: Icon(Iconsax.user))),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                CostumeTextField(
                    labeltext: 'Username', icon: Icon(Iconsax.user_edit)),
                SizedBox(
                  height: 16,
                ),
                CostumeTextField(
                    labeltext: 'Email', icon: Icon(Iconsax.direct)),
                SizedBox(
                  height: 16,
                ),
                CostumeTextField(labeltext: 'Phone', icon: Icon(Iconsax.call)),
                SizedBox(
                  height: 16,
                ),
                CostumePasswordTextField(
                  labeltext: 'Password',
                  icon: Icon(Iconsax.key),
                  password: true,
                  icon2: Icon(Iconsax.eye_slash),
                ),
                SizedBox(
                  height: 32,
                ),
                CostumeButton(
                    label: 'Create Account',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomeScreen()));
                    })
              ],
            ))
          ]),
        )));
  }
}
