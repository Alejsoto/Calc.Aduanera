import 'package:flutter/material.dart';

class ArancelPage extends StatefulWidget {
  @override
  _ArancelPageState createState() => _ArancelPageState();
}

class _ArancelPageState extends State<ArancelPage> {
  String valueChoose;
  List listItem = [
    'tenis',
    'auriculares',
    'fundas de telefono',
    'accesorios de automoviles',
    'pelota',
    'poleras',
    'chamarras',
    'maquillaje',
    'labial,'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        columnWidths: {0: FractionColumnWidth(0.7)},
        children: [
          TableRow(children: [
            Container(
              padding: const EdgeInsets.only(
                left: 30.0,
              ),
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.cyan, width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: DropdownButton(
                  dropdownColor: Color.fromRGBO(100, 150, 255, 0.6),
                  hint: Text(
                    'Selecciona una mercancía',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                  value: valueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose = newValue;
                    });
                  },
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 40.0),
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
                  hintText: valueChoose,
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: valueChoose,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelStyle: TextStyle(color: Colors.white),
                  helperText: 'Arancel',
                  helperStyle: TextStyle(color: Colors.white),
                  suffixText: '%',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
          ])
        ],
      ),
    );
  }
}
