import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 73, 72, 72)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(
              Icons.heart_broken,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            ),
          ],
          title: const Text(
            'Instagram',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 56, 55, 55),
        ),
        body: const Center(
          child: Text('tu'),
        ),
      ),
    );
  }
}
