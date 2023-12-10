/*
* KODUMUN
* HATASI
* */
import 'package:dermanapps/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'DermanApp',
        //theme customitazion
        theme: ThemeData.dark().copyWith(
            primaryColor: Colors.white,
            scaffoldBackgroundColor: Colors.white,
            //appbar theme
            appBarTheme: AppBarTheme(
              toolbarHeight: 7.h,
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.pink,
                size: 20.sp,
              ),
              titleTextStyle: GoogleFonts.mulish(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
                fontSize: 16.sp,
              ),
            ),
            textTheme: TextTheme(
              displaySmall: TextStyle(
                  fontSize: 28.sp,
                  color: Colors.pink,
                  fontWeight: FontWeight.w200),
              headlineMedium: GoogleFonts.aBeeZee(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: Colors.pink,
              ), //textstyle
              titleSmall:
                  GoogleFonts.poppins(fontSize: 12.sp, color: Colors.pink),
              labelMedium: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: Colors.pinkAccent,
              ),
            ),
            inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 0.7,
                ),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.cyan
                )
              )
            )),
        home: const HomePage(),
      );
    });
  }
}
