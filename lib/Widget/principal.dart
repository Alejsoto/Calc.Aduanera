import 'dart:math';
import 'dart:ui';

import 'package:calcu_ladora/Widget/arancel.dart';
import 'package:calcu_ladora/src/page_dos.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final formKey = GlobalKey<FormState>();
  String fob = '';
  String flete1 = '';
  String flete2 = '';
  String seguro = '';
  String otros = '';

  final vfob = TextEditingController();
  final vflete1 = TextEditingController();
  final vflete2 = TextEditingController();
  final vseguro = TextEditingController();
  final votros = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final d = Decimal;

  String muestreImc = "";
  String pesoSugerido = "";

  void valorCIF() {
    int pesoidealm = 21;
    int decimals = 2; //solo me muestre dos decimales
    int fad = pow(10, decimals); //formula mayor a 10 decimales

    //realizamos las validaciones si algun campo este vacio
    if (formkey.currentState.validate()) {
      double peso = double.parse(vfob.text);
      double altura = double.parse(vflete1.text);
      double rtaAltura = (altura) / 100;
      double alturapordos = rtaAltura * rtaAltura;
      double result = peso / alturapordos;

      double d = result;
      d = (d * fad).round() / fad;

      //formula para sugerir el peso de la persona
      double sugerido = (pesoidealm * peso) / d;
      sugerido = (sugerido * fad).round() / fad;

      muestreImc = "IMC es: $d";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Table(children: [
      TableRow(
        children: [
          _valorFob(),
        ],
      ),
      TableRow(
        children: [
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      TableRow(
        children: [
          ArancelPage(),
        ],
      ),
      TableRow(
        children: [
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      TableRow(
        children: [
          _valorFlete1(),
        ],
      ),
      TableRow(
        children: [
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      TableRow(children: [
        _valorFlete2(),
      ]),
      TableRow(
        children: [
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      TableRow(children: [
        _valorSeguro(),
      ]),
      TableRow(
        children: [
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      TableRow(children: [
        _valorOtros(),
      ]),
      TableRow(
        children: [
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      TableRow(children: [
        _calculo(context),
      ]),
    ]);
  }

  Widget _valorFob() {
    return Theme(
      data: ThemeData(primaryColor: Colors.cyan),
      child: Padding(
        padding: EdgeInsets.only(
          left: 40.0,
          right: 40.0,
          bottom: 5.0,
        ),
        child: TextFormField(
          controller: vfob,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white),
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.cyan,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: 'Valor FOB',
            hintStyle: TextStyle(color: Colors.white),
            labelText: 'Ingrese Valor FOB',
            labelStyle: TextStyle(color: Colors.white),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            helperText: 'Es la factura comercial',
            helperStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.monetization_on_sharp,
              color: Colors.white,
            ),
            suffixText: 'USD',
            suffixStyle: TextStyle(color: Colors.white),
          ),
          validator: (value) {
            if (value.length < 1) {
              return 'Espacio Obligatorio';
            } else {
              return null;
            }
          },
          onChanged: (valor) => setState(() {
            fob = valor;
            print(fob);
          }),
        ),
      ),
    );
  }

  Widget _valorFlete1() {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.cyan,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextFormField(
          controller: vflete1,
          style: TextStyle(color: Colors.white),
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.cyan,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: 'Flete I',
              hintStyle: TextStyle(color: Colors.white),
              labelText: 'Ingrese el Valor del Flete I',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(color: Colors.white),
              helperText: 'Si es por via maritima es el B/L',
              helperStyle: TextStyle(color: Colors.white),
              suffixText: 'USD',
              prefixIcon: Icon(
                Icons.attach_money,
                color: Colors.white,
              )),
          validator: (value) {
            if (value.length < 1) {
              return 'Espacio Obligatorio';
            } else {
              return null;
            }
          },
          keyboardType: TextInputType.number,
          onChanged: (valorflete1) {
            setState(() {
              flete1 = valorflete1;
              print(flete1);
            });
          },
        ),
      ),
    );
  }

  Widget _valorFlete2() {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.cyan,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextField(
          controller: vflete2,
          style: TextStyle(color: Colors.white),
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.cyan,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: 'Flete II',
              hintStyle: TextStyle(color: Colors.white),
              labelText: 'Ingrese el Valor del Flete II',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(color: Colors.white),
              helperText: 'Es el Segundo Documento via Terrestre MIC/DTA',
              helperStyle: TextStyle(color: Colors.white),
              suffixText: 'USD',
              prefixIcon: Icon(
                Icons.attach_money,
                color: Colors.white,
              )),
          keyboardType: TextInputType.number,
          onChanged: (valorflete2) {
            flete2 = valorflete2;
            print(flete2);
          },
        ),
      ),
    );
  }

  Widget _valorSeguro() {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.cyan,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextField(
          controller: vseguro,
          style: TextStyle(color: Colors.white),
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.cyan,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: 'Flete I',
              hintStyle: TextStyle(color: Colors.white),
              labelText: 'Ingrese el Seguro',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(color: Colors.white),
              helperText: 'Es la poliza de seguro',
              helperStyle: TextStyle(color: Colors.white),
              suffixText: 'USD',
              prefixIcon: Icon(
                Icons.attach_money,
                color: Colors.white,
              )),
          keyboardType: TextInputType.number,
          onChanged: (valorseguro) {
            seguro = valorseguro;
            print(seguro);
          },
        ),
      ),
    );
  }

  Widget _valorOtros() {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.cyan,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextField(
          style: TextStyle(color: Colors.white),
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.cyan,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: 'Flete I',
              hintStyle: TextStyle(color: Colors.white),
              labelText: 'Ingrese Otros Gastos',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(color: Colors.white),
              helperText: 'representa a gastos de ASPB',
              helperStyle: TextStyle(color: Colors.white),
              suffixText: 'USD',
              prefixIcon: Icon(
                Icons.attach_money,
                color: Colors.white,
              )),
          keyboardType: TextInputType.number,
          onChanged: (valorotros) {
            otros = valorotros;
            print(otros);
          },
        ),
      ),
    );
  }

  Widget _calculo(context) {
    return Theme(
        data: ThemeData(primaryColor: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(right: 55.0, left: 55.0),
          child: ElevatedButton(
            onPressed: () {
              final route = MaterialPageRoute(builder: (context) {
                return PageDos(
                  fob: fob,
                  flete1: flete1,
                  flete2: flete2,
                  seguro: seguro,
                  otros: otros,
                  muestreImc: muestreImc,
                );
              });
              Navigator.push(context, route);

              // print(double.parse(flete1) + double.parse(fob));
            },
            child: Text('Calcular'),
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(20.0),
            ),
          ),
        ));
  }
}
