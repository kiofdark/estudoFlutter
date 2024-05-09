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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//-----------------------------------------------------
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
      print(count);
    });
  }

//---------------------------------------------------
  void increment() {
    setState(() {
      count++;
      print(count);
    });
  }

//------------------------------------------------
  bool get isEmppty => count == 0;
  bool get isFull => count == 20;

//----------------------------------------------------
  @override
  Widget build(BuildContext context) {
    print('Build');

    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/sorvete plano de fundo.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isFull ? 'Lotado' : 'Pode Entrar',
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.pink,
                  fontWeight: FontWeight.w700,
                )),
            Text('$count',
                style: const TextStyle(
                  fontSize: 100,
                  color: Colors.pink,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmppty ? null : decrement,
                  style: TextButton.styleFrom(
                    backgroundColor:
                        isEmppty ? Colors.white.withOpacity(0.2) : Colors.white,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text(
                    'Saiu',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                //-------------------------------------
                const SizedBox(width: 32),
                //---------------------------------------
                TextButton(
                  onPressed: isFull ? null : increment,
                  style: TextButton.styleFrom(
                    backgroundColor:
                        isFull ? Colors.white.withOpacity(0.2) : Colors.white,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
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
      ),
    );
  }
}
