

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
      floatingActionButton:
        FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.black,
          onPressed: () {
            print(_counter);
            /*
            _counter++;
            setState(() {});
            */
            /*
            _counter++;
            setState(() => {});
            */
            setState(() => {
              _counter++
            });
          },
          child: const Icon(Icons.add),
        ),
    );
  }
}