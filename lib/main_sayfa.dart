import 'package:flutter/material.dart';
import 'package:odev6/oyunlar.dart';

class MainSayfa extends StatefulWidget {
  const MainSayfa({super.key});

  @override
  State<MainSayfa> createState() => _MainSayfaState();
}

class _MainSayfaState extends State<MainSayfa> {
  Future<List<Oyunlar>> oyunlariYukle() async {
    var oyunlarListesi = <Oyunlar>[];
    var o1 = Oyunlar(id: 1, ad: "Diablo IV", resim: "diablo.jpg", fiyat: 69.99);
    var o2 = Oyunlar(id: 2, ad: "Sea of Thieves", resim: "sea_of_thieves.jpg", fiyat: 59.99);
    var o3 = Oyunlar(id: 3, ad: "STAR WARS Jedi: Survivor™", resim: "jedi.jpg", fiyat: 35.99);
    var o4 = Oyunlar(id: 4, ad: "God Of War", resim: "god_of_war.jpg", fiyat: 29.99);
    var o5 = Oyunlar(id: 5, ad: "EA SPORTS FC™ 24", resim: "fc_24.jpg", fiyat: 34.99);
    oyunlarListesi.add(o1);
    oyunlarListesi.add(o2);
    oyunlarListesi.add(o3);
    oyunlarListesi.add(o4);
    oyunlarListesi.add(o5);

    return oyunlarListesi;
  }
  Future<List<Oyunlar>> ikincioyunlariYukle() async {
    var oyunlarListesi = <Oyunlar>[];
    var o1 = Oyunlar(id: 1, ad: "Sons Of Forest", resim: "sons_of_forest.jpg", fiyat: 69.99);
    var o2 = Oyunlar(id: 2, ad: "Witcher 3", resim: "witcher.jpg", fiyat: 59.99);
    var o3 = Oyunlar(id: 3, ad: "Sekiro Die Twice", resim: "sekiro.jpg", fiyat: 35.99);
    var o4 = Oyunlar(id: 4, ad: "Grounded", resim: "grounded.jpg", fiyat: 29.99);
    var o5 = Oyunlar(id: 5, ad: "Battle Bit Remastered", resim: "battle_bit.jpg", fiyat: 34.99);
    oyunlarListesi.add(o1);
    oyunlarListesi.add(o2);
    oyunlarListesi.add(o3);
    oyunlarListesi.add(o4);
    oyunlarListesi.add(o5);

    return oyunlarListesi;
  }

  Future<List<Oyunlar>> ucuncuoyunlariYukle() async {
    var oyunlarListesi = <Oyunlar>[];
    var o1 = Oyunlar(id: 1, ad: "Read Dead Redemption", resim: "red_dead.jpg", fiyat: 69.99);
    var o2 = Oyunlar(id: 2, ad: "Rainbow", resim: "rainbow.jpg", fiyat: 59.99);
    var o3 = Oyunlar(id: 3, ad: "Lords Fallen", resim: "lords_fallen.jpg", fiyat: 35.99);
    var o4 = Oyunlar(id: 4, ad: "Hogwarts Legacy", resim: "hogwarts_legacy.jpg", fiyat: 29.99);
    var o5 = Oyunlar(id: 5, ad: "Forza 5", resim: "forza.jpg", fiyat: 34.99);
    var o6 = Oyunlar(id: 6, ad: "Elden Ring", resim: "elden_ring.jpg", fiyat: 34.99);
    var o7 = Oyunlar(id: 7, ad: "Bannerlord", resim: "bannerlord.jpg", fiyat: 34.99);
    var o8 = Oyunlar(id: 8, ad: "Counter Strike 2", resim: "cs2.png", fiyat: 34.99);
    oyunlarListesi.add(o1);
    oyunlarListesi.add(o2);
    oyunlarListesi.add(o3);
    oyunlarListesi.add(o4);
    oyunlarListesi.add(o5);
    oyunlarListesi.add(o6);
    oyunlarListesi.add(o7);
    oyunlarListesi.add(o8);

    return oyunlarListesi;
  }

  bool aramaTiklandiMi = false;
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              backgroundColor: const Color(0xFF171a21),
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 240,
                        height: 45,
                        child: TextField(
                          onTap: () {
                            setState(() {
                              aramaTiklandiMi = true;
                            });
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            prefixIcon: aramaTiklandiMi
                                ? null
                                : Image.asset("resimler/header_logo.png",
                                width: 120),
                            suffixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: -1.5708,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_control_rounded,
                                color: Colors.white)),
                      ),
                      Image.asset("resimler/profile_photo.jpg", width: 50),
                    ],
                  ),
                ),
              ),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text(
                              "MENU",
                              style:
                              TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text(
                              "WISHLIST",
                              style:
                              TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text(
                              "WALLET",
                              style:
                              TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            Text(
                              "(\$56.37 USD)",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ];
        },

        body:SingleChildScrollView(
          child: Container(
            color: const Color(0xFF1b2838),
            child: Column(
              children: [
                Image.asset("resimler/cover_page.png"),
                FutureBuilder<List<Oyunlar>>(
                  future: oyunlariYukle(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      var oyunlarListesi = snapshot.data;
                      return SizedBox(
                        height: 400,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: oyunlarListesi!.length,
                          itemBuilder: (context, indeks) {
                            var oyun = oyunlarListesi[indeks];
                            return Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 320,
                                    height: 380,
                                    child: Stack(
                                      children: [
                                        ClipRect(
                                          child: Image.asset(
                                            "resimler/${oyun.resim}",
                                            fit: BoxFit.cover,
                                            width: 320,
                                            height: 380,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          right: 3,
                                          child: Container(
                                            padding: const EdgeInsets.all(8.0),
                                            color: const Color(0xFF344654),
                                            child: Text(
                                              "\$${oyun.fiyat.toStringAsFixed(2)} USD",
                                              style: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      );

                    } else {
                      return const Center();
                    }
                  },
                ),
                FutureBuilder<List<Oyunlar>>(
                  future: ikincioyunlariYukle(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      var oyunlarListesi = snapshot.data;
                      return SizedBox(
                        height: 400,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: oyunlarListesi!.length,
                          itemBuilder: (context, indeks) {
                            var oyun = oyunlarListesi[indeks];
                            return Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 320,
                                    height: 380,
                                    child: Stack(
                                      children: [
                                        ClipRect(
                                          child: Image.asset(
                                            "resimler/${oyun.resim}",
                                            fit: BoxFit.cover,
                                            width: 320,
                                            height: 380,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          right: 3,
                                          child: Container(
                                            padding: const EdgeInsets.all(8.0),
                                            color: const Color(0xFF344654),
                                            child: Text(
                                              "\$${oyun.fiyat.toStringAsFixed(2)} USD",
                                              style: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      );

                    } else {
                      return const Center();
                    }
                  },
                ),
                const SizedBox(height: 25),
                const Text("YOUR WISHLIST",style: TextStyle(color: Colors.white,fontSize: 30),),
                FutureBuilder<List<Oyunlar>>(
                  future: ucuncuoyunlariYukle(),
                  builder: (context, snapshot){
                    if (snapshot.hasData) {
                      var oyunlarListesi = snapshot.data;
                      return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: oyunlarListesi!.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisExtent: 130.0,
                          ),
                          itemBuilder: (context, indeks){
                            var oyun = oyunlarListesi[indeks];
                            return Column(
                              children: [
                                Stack(
                                  children:[
                                    ClipRect(
                                      child: Image.asset(
                                        "resimler/${oyun.resim}",
                                        fit: BoxFit.fill,
                                        width: 240,
                                        height: 120,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        color: const Color(0xFF344654),
                                        child: Text(
                                          "\$${oyun.fiyat.toStringAsFixed(2)} USD",
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                    }  else{
                      return const Center();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      );
  }
}