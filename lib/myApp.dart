import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stateful_widget/stateless_mediaquery_wrap_layoutbuilder_widgetbuilder.dart';

import 'Aspect_ratio_Expanded_FractionallySizedBox.dart';
import 'Home.dart';
import 'Sizer_ResponsiveBuilder_DevicePreview.dart';
import 'calculator.dart';
import 'life_cycle.dart';



class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Sizer(
      builder: (context,orientation,screenType) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,

          theme: ThemeData(
            primaryColor: Colors.cyanAccent,
            appBarTheme: AppBarTheme(
              color: Colors.cyanAccent,

              centerTitle: true,
            ),
            scaffoldBackgroundColor: Colors.white,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                foregroundColor: Colors.white))),
          title:"Songit Boss",
          debugShowCheckedModeBanner: false,
          home: Calculatorapp (),
        );
      }
    );
  }
}

