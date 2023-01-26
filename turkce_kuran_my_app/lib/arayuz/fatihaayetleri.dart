
import 'package:flutter/material.dart';

class FatihaSuresi extends StatefulWidget {
  @override
  _FatihaSuresiState createState() => _FatihaSuresiState();
}

class _FatihaSuresiState extends State<FatihaSuresi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 85,
        title: Center(
          child: Text(
            "Fatiha",
            style: TextStyle(
              fontSize: 33,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Divider(
            height: 50,
          ),
        
          ListTile(
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (builder) {
                    return Dialog(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int bela) {
                          return Column(
                            children: [
                              Divider(
                                height: 50,
                              ),
                              ListTile(
                                title: Center(
                                  child: Text(
                                    "Gösterilebilecek  Açıklama Yok",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 30,
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                  );
            },
            title: Text(
              "Övülmeye değer olan yalnızca alemlerin Rabb'i Allah'tır.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            leading: Text(
              "1 -",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (builder) {
                    return Dialog(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int bela) {
                          return Column(
                            children: [
                              Divider(
                                height: 50,
                              ),
                              ListTile(
                                title: Center(
                                  child: Text(
                                    "Gösterilebilecek  Açıklama Yok",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 30,
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                  );
            },
            title: Text(
              "O'nun Rahmeti Bol ve Kesintisizdir.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "الرَّحْمنِ الرَّحِيمِ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            leading: Text(
              "2 -",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (builder) {
                    return Dialog(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int bela) {
                          return Column(
                            children: [
                              Divider(
                                height: 50,
                              ),
                              ListTile(
                                title: Center(
                                  child: Text(
                                    "Gösterilebilecek  Açıklama Yok",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 30,
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                  );
            },
            title: Text(
              "O,  Hesap Günü'nün sahibidir.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "مَلِكِ يَوْمِ الدِّينِ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            leading: Text(
              "3 -",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (builder) {
                    return Dialog(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int bela) {
                          return Column(
                            children: [
                              Divider(
                                height: 50,
                              ),
                              ListTile(
                                title: Center(
                                  child: Text(
                                    "Gösterilebilecek  Açıklama Yok",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 30,
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                  );
            },
            title: Text(
              "Yalnız Sana kulluk eder ve yalnız Sen'den yardım dileriz.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "إِيَّاكَ نَعْبُدُ وإِيَّاكَ نَسْتَعِينُ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            leading: Text(
              "4 -",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (builder) {
                    return Dialog(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int bela) {
                          return Column(
                            children: [
                              Divider(
                                height: 50,
                              ),
                              ListTile(
                                title: Center(
                                  child: Text(
                                    "Gösterilebilecek  Açıklama Yok",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 30,
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                  );
            },
            title: Text(
              "Bize doğru yolu göster;",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "اهدِنَا الصِّرَاطَ المُستَقِيمَ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            leading: Text(
              "5 -",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (builder) {
                    return Dialog(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int bela) {
                          return Column(
                            children: [
                              Divider(
                                height: 50,
                              ),
                              ListTile(
                                title: Center(
                                  child: Text(
                                    "Gösterilebilecek  Açıklama Yok",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 30,
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                  );
            },
            title: Text(
              "Nimet verdiklerinin yolunu. Gazabına uğrayanların ve sapkınların yolunu değil.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "صِرَاطَ الَّذِينَ أَنعَمتَ عَلَيهِمْ غَيرِ المَغضُوبِ عَلَيهِمْ وَلاَ الضَّالِّينَ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            leading: Text(
              "6 -",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
