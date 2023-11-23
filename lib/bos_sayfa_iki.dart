import 'package:flutter/material.dart';

class BosSayfaIki extends StatefulWidget {
  const BosSayfaIki({super.key});

  @override
  State<BosSayfaIki> createState() => _BosSayfaIkiState();
}

class _BosSayfaIkiState extends State<BosSayfaIki> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Boş sayfa İki", style: TextStyle(fontSize: 30,color: Colors.black54)),
    );
  }
}
