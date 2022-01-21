

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    const fontSize = TextStyle(fontSize: 30);
    int _counter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Titulo'), 
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
            _counter++;
          },
          child: const Icon(Icons.add),
        ),
    );
  }

}