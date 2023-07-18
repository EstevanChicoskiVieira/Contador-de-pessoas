import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      if (count >= 1){
        count--;
      }
    });
  }

  void increment() {
    setState(() {
      if (count <= 19){
        count++;
      }
    });
  }

  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isFull ? 'Lotado!' : 'Pode entrar',
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: Colors.white
            )
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Text(
              '$count',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w800,
                color: isFull ? Colors.red : Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(120, 120),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                child: const Text(
                  'Saiu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25
                  )
                ),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(120, 120),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                ),
                child: const Text(
                    'Entrou',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25
                    )
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

