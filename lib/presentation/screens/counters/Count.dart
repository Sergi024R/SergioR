import 'package:flutter/material.dart';

class Counter extends StatefulWidget {

  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  int numero = 4;
  String texto = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numero.toString(),
              style:
                  const TextStyle(fontSize: 130, fontWeight: FontWeight.w100),
            ),
            Text(
              texto,
              style: const TextStyle(
                fontSize: 70,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                numero -= 1; //Icons.exposute_minus_1
                if (numero < 0) {
                  numero = 0;
                }
                if (numero > 1) {
                  texto="Clicks";
                }if(numero==1) {
                  texto="Click";
                }
              });
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(
            height: 18,
          ),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  numero += 1; //Icons.exposute_max_1
                  if (numero > 1) {
                  texto="Clicks";
                }if(numero==1) {
                  texto="Click";
                }
                });
              },
              child: const Icon(Icons.plus_one)),
          const SizedBox(
            height: 18,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                numero = 0;
                if (numero > 1) {
                  texto="Clicks";
                }if(numero==1 || numero==0) {
                  texto="Click";
                }
              });
            },
            child: const Icon(Icons.refresh_rounded),
          )
        ],
      ),
    );
  }
}