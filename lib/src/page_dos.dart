import 'package:flutter/material.dart';

import 'package:calcu_ladora/Widget/bacground.dart';

class PageDos extends StatefulWidget {
  const PageDos(
      {Key key,
      this.fob,
      this.flete1,
      this.flete2,
      this.seguro,
      this.otros,
      this.muestreImc})
      : super(key: key);

  @override
  _PageDosState createState() => _PageDosState();
  final String fob;
  final String flete1;
  final String flete2;
  final String seguro;
  final String otros;
  final String muestreImc;

  // final formkey = GlobalKey<FormState>();
  // final d = Decimal;
  // String cif;

}

class _PageDosState extends State<PageDos> {
  //Formula para hacer una operacion arimetica

  // void OperacionMatematica() {
  //   //realizamos las validaciones si algun campo este vacio
  //   if (formkey.currentState.validate()) {
  //     double vfob = double.parse(fob.text);
  //     double vflete1 = double.parse(flete1.text);

  //     double result = vfob / vflete1;
  //     //lo puede cambiar por +  o  - o *

  //     setState(() {
  //       muestrefob = "La division es: $result";
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          //Fondo
          Background(),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 60.0),
            child: Table(
              children: [
                TableRow(
                  children: [
                    Text(
                      'Valor FOB',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      'USD.   ' + widget.fob,
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'Flete I',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      'USD.   ' + widget.flete1,
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'Flete II',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      'USD.   ' + widget.flete2,
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'Seguro',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      'USD.   ' + widget.seguro,
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2.0, color: Colors.cyan))),
                  children: [
                    Text(
                      'Otros Gastos',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      'USD.   ' + widget.otros,
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'CIF',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      'USD.   ' + widget.muestreImc,
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 3.0, color: Colors.cyan))),
                  children: [
                    Text(
                      'Tipo de Cambio',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      '6.96',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'CIF',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      'Bs.',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'Gravamen Arancelario',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      'Bs.' '123',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 3.0, color: Colors.cyan))),
                  children: [
                    Text(
                      'IVA',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      '14,94%',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'Total Tributos a Pagar',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      'Bs.',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

// class _HomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         child: Column(
//       children: [
//         //Tituloss
//         PageTitle(),

//         //Tarjetas

//         Principal(),
//       ],
//     ));
//   }
// }
