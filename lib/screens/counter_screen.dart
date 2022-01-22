

import 'package:flutter/material.dart';

class CounterScren extends StatefulWidget {
  const CounterScren({Key? key}) : super(key: key);

  @override
  State<CounterScren> createState() => _CounterScrenState();
}

class _CounterScrenState extends State<CounterScren> {
  int _counter = 0;

  void increase () => {setState( () => {_counter++})};
  void decrease () => {setState( () => {_counter--})};
  void reset () => {setState( () => {_counter=0})};

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
      floatingActionButton: CustomFloatingActions(
        increseFun: increase,
        decreaseFun: decrease,
        resetFun: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increseFun;
  final Function decreaseFun;
  final Function resetFun;

  const CustomFloatingActions({
    Key? key, 
    required this.increseFun,
    required this.decreaseFun,
    required this.resetFun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
            onPressed: () => increseFun(),
            child: const Icon(Icons.exposure_plus_1),
          ),
          
          const SizedBox(width: 20),

          FloatingActionButton.extended(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
            onPressed: () => resetFun(),
            label: const Text('RESET')
          ),

          const SizedBox(width: 20),

          FloatingActionButton(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
            onPressed: () => decreaseFun(),
            child: const Icon(Icons.exposure_minus_1),
          ),
        ],
      );
  }
}