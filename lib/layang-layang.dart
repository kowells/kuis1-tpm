import 'package:flutter/material.dart';
import 'dart:math';

class Layanglayang extends StatefulWidget {
  const Layanglayang({Key? key}) : super(key: key);

  @override
  State<Layanglayang> createState() => _LayanglayangState();
}

class _LayanglayangState extends State<Layanglayang> {
  final _formKey = GlobalKey<FormState>();
  final _diagonalSatuController = TextEditingController();
  final _diagonalDuaController = TextEditingController();
  final _sisiSatuController = TextEditingController();
  final _sisiDuaController = TextEditingController();
  double _luaslayang = 0.0;
  double _kelilinglayang = 0.0;
  void _hitungluas() {
    double d1 = double.parse(_diagonalSatuController.text);
    double d2 = double.parse(_diagonalDuaController.text);
    _luaslayang = (d1 * d2) / 2;
    setState(() {});
  }

  void _hitungkeliling() {
    double s1 = double.parse(_sisiSatuController.text);
    double s2 = double.parse(_sisiDuaController.text);
    _kelilinglayang = (s1 + s2) * 2;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas dan Keliling Layang-Layang'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 200,
                  child: Image.asset('images/layang2.jpg'),
                ),
                TextFormField(
                  controller: _diagonalSatuController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Diagonal 1',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Diagonal 1 belum diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _diagonalDuaController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Diagonal 2',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Diagonal 2 belum diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _sisiSatuController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Sisi 1',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Sisi 1 belum diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _sisiDuaController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Sisi 2',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Sisi 2 belum diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _hitungluas,
                  child: Text('Hitung Luas'),
                ),
                SizedBox(height: 16),
                Text(
                  'Luas: $_luaslayang cm persegi',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _hitungkeliling,
                  child: Text('Hitung Keliling'),
                ),
                SizedBox(height: 20),
                Text(
                  'Keliling: $_kelilinglayang cm',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
