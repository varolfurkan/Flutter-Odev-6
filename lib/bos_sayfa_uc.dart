import 'package:flutter/material.dart';

class BosSayfaUc extends StatefulWidget {
  const BosSayfaUc({super.key});

  @override
  State<BosSayfaUc> createState() => _BosSayfaUcState();
}

class _BosSayfaUcState extends State<BosSayfaUc> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Boş sayfa Üç", style: TextStyle(fontSize: 30,color: Colors.black54)),
    );
  }
}
