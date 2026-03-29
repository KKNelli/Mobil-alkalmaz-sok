import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const GuessApp());
}

class GuessApp extends StatelessWidget {
  const GuessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Számkitaláló',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GuessPage(),
    );
  }
}

class GuessPage extends StatefulWidget {
  const GuessPage({super.key});

  @override
  State<GuessPage> createState() => _GuessPageState();
}

class _GuessPageState extends State<GuessPage> {
  final TextEditingController _controller = TextEditingController();
  int _targetNumber = Random().nextInt(100) + 1;
  String _message = 'Tippelj egy számot 1 és 100 között!';
  int _attempts = 0;

  void _checkGuess() {
    final guess = int.tryParse(_controller.text);
    if (guess == null) {
      setState(() {
        _message = 'Kérlek adj meg egy számot!';
      });
      return;
    }

    setState(() {
      _attempts++;

      if (guess < _targetNumber) {
        _message = 'Nagyobb!';
      } else if (guess > _targetNumber) {
        _message = 'Kisebb!';
      } else {
        _message = '🎉 Eltaláltad $_attempts próbálkozásból!';
      }
    });

    _controller.clear();
  }

  void _resetGame() {
    setState(() {
      _targetNumber = Random().nextInt(100) + 1;
      _attempts = 0;
      _message = 'Új játék! Tippelj!';
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: const Text('Számkitaláló játék'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _message,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Tipp',
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _checkGuess,
              child: const Text('Tippelés'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: _resetGame,
              child: const Text('Új játék'),
            ),

            const SizedBox(height: 20),

            Text(
              'Próbálkozások: $_attempts',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}