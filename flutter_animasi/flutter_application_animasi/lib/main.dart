import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animation Example',
      home: AnimationExample(),
    );
  }
}

class AnimationExample extends StatefulWidget {
  const AnimationExample({super.key});

  @override
  State<AnimationExample> createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> {
  Color _backgroundColor = Colors.blue;

  void _changeColor() {
    setState(() {
      _backgroundColor = _backgroundColor == Colors.blue
          ? Colors.pink
          : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Example'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: GestureDetector(
          onTap: _changeColor,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            color: _backgroundColor,
            width: 200,
            height: 200,
            child: const Center(
              child: Text(
                'Tap me!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColor,
        backgroundColor: Colors.blue, // <-- Tambahkan baris ini
        foregroundColor: Colors
            .white, // <-- Tambahkan ini juga jika ingin ikonnya berwarna putih
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}
