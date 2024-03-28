import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI',
      
      home: Scaffold(
        appBar: AppBar(
          title: Center( 
            child: Text(
              'Daftar POLI',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: const MyHomePage(title: ""), 
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: const Text(
                        'POLI MATA',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 4.0,
                    right: 4.0,
                    child: ElevatedButton(
                      onPressed: () {
                        // Tindakan yang ingin Anda lakukan ketika tombol ditekan
                        print('Tombol "Pilih" ditekan di poli mata');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Warna hijau
                      ),
                      child: Text(
                        'Pilih',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: const Text(
                        'POLI GIGI',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 4.0,
                    right: 4.0,
                    child: ElevatedButton(
                      onPressed: () {
                        // Tindakan yang ingin Anda lakukan ketika tombol ditekan
                        print('Tombol "Pilih" ditekan di Poli Gigi');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Warna hijau
                      ),
                      child: Text(
                        'Pilih',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
