import 'package:flutter/material.dart';
import 'dart:math';

class Segitiga extends StatefulWidget {
  const Segitiga({Key? key}) : super(key: key);

  @override
  State<Segitiga> createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  final TextEditingController _aController = TextEditingController();
  final TextEditingController _bController = TextEditingController();
  final TextEditingController _cController = TextEditingController();
  double _luassegitiga = 0.0;
  double _kelilingsegitiga = 0.0;

  void _hitungluas() {
    double sisi1 = double.parse(_aController.text);
    double sisi2 = double.parse(_bController.text);
    double sisi3 = double.parse(_cController.text);
    double luas = (sisi1 + sisi2 + sisi3) / 2;
    _luassegitiga =
        sqrt(luas * (luas - sisi1) * (luas - sisi2) * (luas - sisi3));
    setState(() {});
  }

  void _hitungkeliling() {
    double sisi1 = double.parse(_aController.text);
    double sisi2 = double.parse(_bController.text);
    double sisi3 = double.parse(_cController.text);
    _kelilingsegitiga = sisi1 + sisi2 + sisi3;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas dan Keliling Segitiga'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200,
              child: Image.asset('images/segitiga.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: 10.0,
                height: 10.0,
              ),
            ),
            TextField(
              controller: _aController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Sisi 1',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: 10.0,
                height: 10.0,
              ),
            ),
            TextField(
              controller: _bController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Sisi 2',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: 10.0,
                height: 10.0,
              ),
            ),
            TextField(
              controller: _cController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Sisi 3',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _hitungluas,
              child: Text('Hitung Luas'),
            ),
            SizedBox(height: 16),
            Text(
              'Luas: $_luassegitiga cm persegi',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _hitungkeliling,
              child: Text('Hitung Keliling'),
            ),
            SizedBox(height: 10),
            Text(
              'Keliling: $_kelilingsegitiga cm',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
