import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_api/bloc/register_bloc.dart';
import 'package:register_api/styles/app_theme.dart';
import 'dart:async';

import 'package:register_api/ui/register_screen.dart';


void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<RegisterBloc>(create: (context) => RegisterBloc()),
      ],
      child: MyApp(),
    ));

      // MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,

      //  to define the routes
      initialRoute: "/splash",
      routes: {

        "/splash": (context) =>  SignUpScreen(),
        "/signup": (context) => SignUpScreen(),

      },

    );


  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SignUpScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 180,
          ),
          Center(
            // child: Image.asset('assets/images/3.gif'),
          ),
          Text('Master in FLutter ',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 35.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}


