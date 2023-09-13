import 'package:flutter/material.dart';
import '/utils/time_extensions.dart';
import '/styles/app_colors.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Toshkent, Uzbekistan",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              DateTime.now().weekMonthDay,
              style: const TextStyle(
                fontSize: 15,
                color: AppColors.greyText,
              ),
            ),
          ],
        ),
      );
}
