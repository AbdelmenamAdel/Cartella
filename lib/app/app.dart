import 'package:cartella/app/env.variables.dart';
import 'package:flutter/material.dart';

class Cartella extends StatelessWidget {
  const Cartella({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
      home: const Scaffold(),
    );
  }
}
