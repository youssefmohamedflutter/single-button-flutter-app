
import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Single Button App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      home: const ButtonHomePage(),
    );
  }
}

class ButtonHomePage extends StatefulWidget {
  const ButtonHomePage({super.key});

  @override
  State<ButtonHomePage> createState() => _ButtonHomePageState();
}

class _ButtonHomePageState extends State<ButtonHomePage> {
  String message = 'Press the button to see a message';

  void _changeMessage() {
    setState(() {
      message = 'Hello! Welcome to my Flutter app.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Button App'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _changeMessage,
                child: const Text('Show Message'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
