import 'package:apexcart/constants/global_variables.dart';
import 'package:apexcart/features/auth/screens/auth_screen.dart';
import 'package:apexcart/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apexcart',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: GlobalVariables.secondaryColor,
          foregroundColor: Colors.black,
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Heyyy'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text(
                'Flutter Demo Home Page',
              ),
            ),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AuthScreen.routeName);
                  },
                  child: const Text('Tap'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
