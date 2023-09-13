import '/pages/home_page/widgets/weather_celsius.dart';
import '/pages/home_page/widgets/custom_app_bar.dart';
import '/pages/home_page/widgets/location_view.dart';
import '/pages/home_page/widgets/weather_info.dart';
import 'widgets/schedule_of_week.dart';
import 'package:flutter/material.dart';
import 'widgets/hourly_weather.dart';
import '/styles/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.appBGGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: const [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  LocationView(),
                  WeatherCelsius(),
                  WeatherInfo(),
                  ScheduleOfWeek(),
                  HourlyWeather(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
