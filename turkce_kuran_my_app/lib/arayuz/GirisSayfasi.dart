
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:turkce_kuran_my_app/arayuz/fatihaayetleri.dart';
import 'package:turkce_kuran_my_app/arayuz/iceriksayfasi.dart';
import 'package:turkce_kuran_my_app/model/sureler.dart';

class GirisSayfasi extends StatefulWidget {
  @override
  _GirisSayfasiState createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  var url = Uri.parse('https://api.acikkuran.com/surahs');
  int counter;
  var sureindexi;

  Future sureler() async {
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        var result = surelerFromJson(response.body);
        if (mounted)
          setState(() {
            counter = result.data.length;
            sureindexi = result;
          });
        return result;
      } else {
        print(response.statusCode.toString() + "   hatası ");
      }
    } catch (e) {
      print(e.toString() + "  hatası ");
    }
  }

  @override
  void initState() {
    super.initState();
    sureler();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              "Türkçe Kuran",
              style: TextStyle(
                fontSize: 33,
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: counter != null
            ? GridView.builder(
                itemCount: counter,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      shape: StadiumBorder(),
                      elevation: 30,
                      color: Colors.black12,
                      child: Center(
                        child: ListTile(
                          onTap: () {
                            index == 0
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FatihaSuresi(),
                                    ),
                                  )
                                : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Icerik(
                                        alinacakindex: index + 1,
                                      ),
                                    ),
                                  );
                          },
                          title: Center(
                            child: Text(
                              sureindexi.data[index].name,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            : Center(child: CircularProgressIndicator())
            );
  }
}
