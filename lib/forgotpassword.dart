import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather/constants/constans.dart';
import 'package:weather/utils/costumebutton.dart';
import 'package:weather/utils/textfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: kTertiary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Forgot Password',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Compact',
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text(
                  'Dont worry sometimes people can forget too, enter your email and we will send you a reset password link.',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Compact',
                      color: Colors.black)),
              SizedBox(
                height: 32,
              ),
              CostumeTextField(labeltext: 'Email', icon: Icon(Iconsax.direct)),
              SizedBox(
                height: 32,
              ),
              CostumeButton(label: 'Submit', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
