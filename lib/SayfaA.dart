import 'package:flutter/material.dart';
import 'package:sayfa_gecis/SayfaB.dart';
import 'package:sayfa_gecis/main.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa 'A' "),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa(),));
          }
          ),
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 75,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>SayfaB()));

                },
                child: const Text("Sayfa B'ye   Git"),
              ),
            ),


          ],

        ),
      ),

    );
  }
}
