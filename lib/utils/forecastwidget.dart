import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WeeklyForecast extends StatelessWidget {
  const WeeklyForecast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 110,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 3)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              '31°',
              style: TextStyle(
                  fontFamily: 'Compact',
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            Icon(
              Iconsax.cloud_sunny,
              size: 18,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '26 May',
              style: TextStyle(
                  fontFamily: 'Compact',
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
