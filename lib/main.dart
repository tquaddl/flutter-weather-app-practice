import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';
import 'consts/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        fontFamily: 'poppins',
        useMaterial3: true,
      ),
      home: const WeatherApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    var date = DateFormat('yMMMd').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: '$date'.text.gray700.make(),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.light_mode,
                color: Vx.gray600,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Vx.gray600,
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'MINSK'
                .text
                .fontFamily('poppins_bold')
                .size(32)
                .letterSpacing(3)
                .make(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/weather/01d.png',
                  width: 80,
                  height: 80,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '37$degree',
                        style: TextStyle(
                          color: Vx.gray900,
                          fontSize: 64,
                          fontFamily: 'poppins',
                        ),
                      ),
                      TextSpan(
                        text: 'Sunny',
                        style: TextStyle(
                          color: Vx.gray700,
                          letterSpacing: 3,
                          fontSize: 14,
                          fontFamily: 'poppins_light',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: null,
                  icon: Icon(
                    Icons.expand_less_rounded,
                    color: Vx.gray400,
                  ),
                  label: '41$degree'.text.make(),
                ),
                TextButton.icon(
                  onPressed: null,
                  icon: Icon(
                    Icons.expand_more_rounded,
                    color: Vx.gray400,
                  ),
                  label: '26$degree'.text.make(),
                ),
              ],
            ),
            Row(
              children: List.generate(3, (index) {
                return Column();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
