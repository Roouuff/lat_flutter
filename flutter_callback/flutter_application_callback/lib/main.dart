import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Callback Example',
      home: CallbackExample(),
    );
  }
}

class CallbackExample extends StatelessWidget {
  const CallbackExample({super.key});

  // Membuat fungsi callback yang menerima String
  void _showMessage(String message) {
    debugPrint('Message received: $message');

    // Tambahkan logika lain sesuai kebutuhan aplikasi
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Callback Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,   // <--- Kotak warna biru
                foregroundColor: Colors.white,  // <--- Teks warna putih
              ),
              onPressed: () {
                // Memanggil fungsi callback saat tombol ditekan
                _showMessage('Button pressed');
              },
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
