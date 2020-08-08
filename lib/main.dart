import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(Sorry());

class Sorry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.pink, Colors.pink[200]],
              ),
            ),
          ),
          title: Text(
            'I am sorry',
            style: GoogleFonts.sriracha(),
          ),
        ),
        body: sry(),
      ),
    );
  }
}

class sry extends StatefulWidget {
  double custFontsize = 25;
  void remorse() {}
  @override
  _sryState createState() => _sryState();
}

class _sryState extends State<sry> {
  double a = 35;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              child: Image.network(
                  'https://media1.tenor.com/images/0720ffb69ab479d3a00f2d4ac7e0510c/tenor.gif'),
            ),
            Text('Thats me getting punished for my mistake :P',
                style: GoogleFonts.openSans(fontSize: 15)),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 100, 100, 30),
              child: FlatButton(
                child: Icon(
                  Icons.favorite,
                  color: Colors.pink[400],
                  size: a,
                ),
                onPressed: () {
                  setState(() {
                    a += 10;
                  });
                },
              ),
            ),
            Text(
              'I am sorry :(',
              style: (GoogleFonts.sriracha(fontSize: 25)),
            ),
            Text(
              'Oiii minna, tap the heart to see my love grow for you',
              style: GoogleFonts.openSans(
                  fontSize: 13, fontWeight: FontWeight.bold),
            ),
            Text(
              'Yours truly - Bub',
              style: GoogleFonts.openSans(
                  fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
