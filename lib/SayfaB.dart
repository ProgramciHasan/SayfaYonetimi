import 'package:flutter/material.dart';
import 'package:sayfa_gecis/main.dart';
class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  Future<bool>geriDonusTusu(BuildContext context) async {
    print("geri tuşu tıklandı");
    return true;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Sayfa B"),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 75,
                child:
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Geldiği Sayfaya  Dön '),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 75,
                  child:
                  TextButton(

                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.black,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);

                    },
                    child: const Text('Anasayfaya Dön'),
                  ),
                ),
              ),

              SizedBox(
                height: 75,
                child:
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Anasayfa()));
                  },
                  child: const Text('Anasayfaya Geçiş Yap.'),
                ),
              ),


            ],

          ),
        ),
      ),

    );
  }
}
