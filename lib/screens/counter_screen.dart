

import 'package:flutter/material.dart';

class CounterScren extends StatefulWidget {
  const CounterScren({Key? key}) : super(key: key);

  @override
  State<CounterScren> createState() => _CounterScrenState();
}

class _CounterScrenState extends State<CounterScren> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    const fontSize = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'), 
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Counter clicks', style: fontSize),
              Text(_counter.toString(), style: fontSize),
            ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black,
              onPressed: () {
                _counter++;
                setState(() {});
              },
              child: const Icon(Icons.exposure_plus_1),
            ),
            const SizedBox(width: 20),
            FloatingActionButton.extended(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black,
              onPressed: () {
                _counter = 0;
                setState(() {});
              },
              label: const Text('RESET')
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black,
              onPressed: () {
                _counter--;
                setState(() {});
              },
              child: const Icon(Icons.exposure_minus_1),
            ),
          ],
        ),
    );
  }
}