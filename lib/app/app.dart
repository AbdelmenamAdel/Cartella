import 'package:cartella/core/app/connectivity_controller.dart';
import 'package:cartella/core/app/env.variables.dart';
import 'package:cartella/core/common/screens/no_network_view.dart';
import 'package:flutter/material.dart';

class Cartella extends StatelessWidget {
  const Cartella({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            title: 'Cartella',
            builder: (context, widget) {
              return Scaffold(
                body: Builder(
                  builder: (context) {
                    ConnectivityController.instance.initialize();
                    return widget!;
                  },
                ),
              );
            },
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Cartella'),
              ),
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            title: 'Cartella no network',
            home: const NoNetworkView(),
          );
        }
      },
    );
  }
}
