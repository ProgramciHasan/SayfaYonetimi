import 'package:flutter/material.dart';
import 'package:sayfa_gecis/SayfaA.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {




  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>SayfaA()));
                },
                child: const Text('Sayfa "A"ya  Git'),
              ),
            ),


          ],

        ),
      ),

    );
  }
}
