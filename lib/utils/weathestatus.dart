import 'package:flutter/material.dart';

class WeatherStatus extends StatelessWidget {
  const WeatherStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage('images/icons8-sun.gif')),
        SizedBox(
          height: 12,
        ),
        Text('4km/h',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Compact',
                fontWeight: FontWeight.bold)),
        Text('Sunny',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Compact',
                fontWeight: FontWeight.bold))
      ],
    );
  }
}
