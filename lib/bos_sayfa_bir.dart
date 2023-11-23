import 'package:flutter/material.dart';
import 'package:odev6/oyunlar.dart';

class BosSayfa extends StatefulWidget {
  const BosSayfa({super.key});

  @override
  State<BosSayfa> createState() => _BosSayfaState();
}

class _BosSayfaState extends State<BosSayfa> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Boş sayfa Bir", style: TextStyle(fontSize: 30,color: Colors.black54)),
    );
  }
}
