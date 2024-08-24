import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sampletodo_10/cubic/tudo_add_cubic.dart';
import 'package:flutter_sampletodo_10/view/home_screen.dart';
import 'package:flutter_sampletodo_10/view/tudo_add.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=>TudoAddCubic(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
      ),
    );
  }
}
