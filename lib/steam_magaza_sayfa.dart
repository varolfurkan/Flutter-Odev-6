import 'package:flutter/material.dart';
import 'package:odev6/bos_sayfa_bir.dart';
import 'package:odev6/bos_sayfa_dort.dart';
import 'package:odev6/bos_sayfa_iki.dart';
import 'package:odev6/bos_sayfa_uc.dart';
import 'package:odev6/main_sayfa.dart';

class SteamMagazaSayfa extends StatefulWidget {
  const SteamMagazaSayfa({super.key});

  @override
  State<SteamMagazaSayfa> createState() => _SteamMagazaSayfaState();
}

class _SteamMagazaSayfaState extends State<SteamMagazaSayfa> {
  int secilenIndeks = 0;
  var sayfalar = [const MainSayfa(), const BosSayfa(), const BosSayfaIki(), const BosSayfaUc(), const BosSayfaDort()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfalar[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.shield), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: '',),
        ],
        currentIndex: secilenIndeks,
        selectedItemColor: Colors.blueAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        backgroundColor: const Color(0xFF171a21),
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        onTap: (indeks){
          setState(() {
            secilenIndeks = indeks;
          });
        },
      ),
    );

  }
}
