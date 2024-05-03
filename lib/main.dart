import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//-----------------------------------------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

//-----------------------------------------------------

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print('Decrement');
  }

//---------------------------------------------------
  void increment() {
    print('Increment');
  }

//----------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Pode Entrar!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              )),
          const Text('0',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                ),
                child: const Text(
                  'Saiu',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ),
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                ),
                child: const Text(
                  'Entrou',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//------------------------------------------------------