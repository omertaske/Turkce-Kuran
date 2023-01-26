import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:turkce_kuran_my_app/model/ayetler.dart';

class Icerik extends StatefulWidget {
  int alinacakindex;
  Icerik({this.alinacakindex});

  @override
  _IcerikState createState() => _IcerikState();
}

class _IcerikState extends State<Icerik> {
  var ayetindexi;
  int yenicounter;
  int sayim = 1;
  String sayimeleman = "fsdf";

  Future ayetler() async {
    int gelenindex = widget.alinacakindex;

    var url = Uri.parse('https://api.acikkuran.com/surah/$gelenindex');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var result = ayetlerFromJson(response.body);
      setState(() {
        ayetindexi = result;
        yenicounter = result.data.verseCount;
      });
      return result;
    } else {
      print(response.statusCode.toString() + "   hatası ");
    }
  }

  @override
  void initState() {
    super.initState();
    ayetler();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 85,
        title: ayetindexi != null
            ? Center(
                child: Text(
                  ayetindexi.data.name + " suresi",
                  style: TextStyle(
                    fontSize: 33,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : Center(child: CircularProgressIndicator()),
      ),
      body: yenicounter != null
          ? ListView.builder(
              itemBuilder: (context, sda) {
                return ListTile(
                  onLongPress: () {
                    return showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: ListView.builder(
                            itemCount: ayetindexi.data.verses[sda].translation
                                        .footnotes ==
                                    null
                                ? sayim
                                : ayetindexi.data.verses[sda].translation
                                    .footnotes.length,
                            itemBuilder: (BuildContext context, int bela) {
                              return Column(
                                children: [
                                  Divider(
                                    height: 50,
                                  ),
                                  ListTile(
                                    leading: ayetindexi.data.verses[sda]
                                                .translation.footnotes ==
                                            null
                                        ? null
                                        : Text(
                                            ayetindexi
                                                    .data
                                                    .verses[sda]
                                                    .translation
                                                    .footnotes[bela]
                                                    .number
                                                    .toString() +
                                                "-",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                    title: ayetindexi.data.verses[sda]
                                                .translation.footnotes ==
                                            null
                                        ? Center(
                                            child: Text(
                                              "Gösterilebilecek  Açıklama Yok",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        : Text(
                                            ayetindexi
                                                .data
                                                .verses[sda]
                                                .translation
                                                .footnotes[bela]
                                                .text,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
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
                    ayetindexi.data.verses[sda].translation.text,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      ayetindexi.data.verses[sda].verse,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  leading: Card(
                    child: Text(
                      ayetindexi.data.verses[sda].verseNumber.toString() +
                          " - ",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
              itemCount: yenicounter,
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
