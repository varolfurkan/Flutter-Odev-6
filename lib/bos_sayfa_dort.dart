import 'package:flutter/material.dart';

class BosSayfaDort extends StatefulWidget {
  const BosSayfaDort({super.key});

  @override
  State<BosSayfaDort> createState() => _BosSayfaDortState();
}

class _BosSayfaDortState extends State<BosSayfaDort> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Boş sayfa Dört", style: TextStyle(fontSize: 30,color: Colors.black54)),
    );
  }
}
