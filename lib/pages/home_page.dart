import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: const Text("Home Page", style: TextStyle(fontWeight: FontWeight.w600),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You push this button many times "),
             Text(counter.toString(), style: const TextStyle(fontSize: 25),),

            ElevatedButton(
                onPressed:_incrementCounter,
                child: const Text("Push"))
          ],
        ),
      )

    );
  }
}
