import 'package:flutter/material.dart';
import 'widget/weeks_info.dart';
import '/styles/app_colors.dart';
import 'widget/custom_appbar.dart';
import 'widget/tommorow_info.dart';

class SceduledPage extends StatefulWidget {
  const SceduledPage({super.key});

  @override
  State<SceduledPage> createState() => _SceduledPageState();
}

class _SceduledPageState extends State<SceduledPage> {
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
                  CustomAppbar(),
                  TommorowInfo(),
                  WeeksInfo(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
