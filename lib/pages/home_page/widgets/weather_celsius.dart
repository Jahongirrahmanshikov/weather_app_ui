import 'package:flutter/material.dart';
import '/styles/app_icons.dart';

class WeatherCelsius extends StatelessWidget {
  const WeatherCelsius({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 4,
        bottom: 4,
        right: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(AppIcons.icCloudyRainSun),
            height: 200,
            width: 220,
            fit: BoxFit.cover,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "19",
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      height: 0.8,
                    ),
                  ),
                  Text(
                    "Rainy",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Text(
                "°C",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
