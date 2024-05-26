import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather/constants/constans.dart';
import 'package:weather/utils/forecastwidget.dart';
import 'package:weather/utils/weathestatus.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTertiary,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Paris',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Compact',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 30,
              width: 200,
              child: Align(
                alignment: Alignment.center,
                child: Text('Sunday, 26 May 2024',
                    style: TextStyle(
                        color: kTertiary, fontFamily: 'Compact', fontSize: 16)),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text('Sunny',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Compact',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
            Text('31°',
                style: TextStyle(
                  fontSize: 250,
                  fontFamily: 'Compact',
                  color: Colors.black,
                )),
            Container(
              width: double.infinity,
              height: 190,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WeatherStatus(),
                    WeatherStatus(),
                    WeatherStatus(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Weekly forecast',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Compact',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.refresh,
                      color: Colors.black,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WeeklyForecast(),
                WeeklyForecast(),
                WeeklyForecast(),
                WeeklyForecast()
              ],
            )
          ],
        ),
      )),
    );
  }
}
