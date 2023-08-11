import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: FlashlightApp(),
    ),
  );
}

class FlashlightApp extends StatefulWidget {
  const FlashlightApp({super.key});

  @override
  State<FlashlightApp> createState() => _FlashlightAppState();
}

class _FlashlightAppState extends State<FlashlightApp> {
  int imageNumPic = 0;
  void changeFlashlight() {
    setState(() {
      if (imageNumPic == 0) {
        imageNumPic = 1;
      } else {
        imageNumPic = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFcf3470),
      appBar: AppBar(
        title: const Text('Flashlight App'),
        backgroundColor: const Color(0xFF312e46),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            changeFlashlight();
          },
          child: Image(
            image: AssetImage('images/light$imageNumPic.png'),
            width: 400,
          ),
        ),
      ),
    );
  }
}
