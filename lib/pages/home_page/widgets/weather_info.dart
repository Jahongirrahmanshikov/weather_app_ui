import 'package:flutter/material.dart';
import '/styles/app_colors.dart';
import '/styles/app_icons.dart';
import '/utils/list_extension.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          const DetailItem(
            icon: AppIcons.icUmbrella,
            info: "Rain Fall",
            action: "3cm",
          ),
          const DetailItem(
            icon: AppIcons.icWind,
            info: "Wind",
            action: "19km/h",
          ),
          const DetailItem(
            icon: AppIcons.icHumidity,
            info: "Humidity",
            action: "64%",
          ),
        ].addBetween(
          const SizedBox(height: 5),
        ),
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  const DetailItem({
    required this.icon,
    required this.info,
    required this.action,
    super.key,
  });
  final String icon;
  final String info;
  final String action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            width: 1.0,
            color: AppColors.white30,
          ),
          color: AppColors.white30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (info == "Humidity")
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 15,
                      right: 10,
                      bottom: 10,
                    ),
                    child: Image(
                      image: AssetImage(icon),
                      width: 42,
                      height: 42,
                      fit: BoxFit.cover,
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Image(
                      image: AssetImage(icon),
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                Text(
                  info,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                action,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
