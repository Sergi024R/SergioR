import 'package:flutter/material.dart';
import 'package:guillermo_grellas/presentation/custom_button.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int numero = 0;
  String texto = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sergio Reyes"),centerTitle: true,),
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
          const SizedBox(
            height: 18,
          ),
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                numero -= 1; //Icons.exposute_minus_1
                if (numero < 0) {
                  numero = 0;
                }
                if (numero > 1) {
                  texto = "Clicks";
                }
                if (numero == 1) {
                  texto = "Click";
                }
              });
            },
          ),
          const SizedBox(
            height: 18,
          ),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                numero += 1; //Icons.exposute_max_1
                if (numero > 1) {
                  texto = "Clicks";
                }
                if (numero == 1) {
                  texto = "Click";
                }
              });
            },
          ),
          const SizedBox(
            height: 18,
          ),
          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () {
              setState(() {
                numero = 0;
                if (numero > 1) {
                  texto = "Clicks";
                }
                if (numero == 1 || numero == 0) {
                  texto = "Click";
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
