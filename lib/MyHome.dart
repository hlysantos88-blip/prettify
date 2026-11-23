
import 'package:flutter/material.dart';
import 'package:prettify/MyAppBar.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String texto = "Olá 2ª série B";

  void embelezar() {
    setState(() {
      texto = "Olá meus alunos lindos";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: const MyAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Text(texto),
              ),
            ),
            

ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.deepPurple,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 18),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
  ),
  onPressed: embelezar,
  child: const Text("Embelezar"),
),
          ], //children da column
        ), //Column
      ), //Scaffold
    ); //MaterialApp
  }
}