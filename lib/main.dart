import 'package:calcu_ladora/bloc/calculator/calculator_bloc.dart';
import 'package:calcu_ladora/src/page_dos.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:calcu_ladora/src/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<CalculatorBloc>(create: (_) => CalculatorBloc())
    ], child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'calculadora',
      // sirve para enrutar paginas
      initialRoute: 'home_screen',
      routes: <String, WidgetBuilder>{
        'home_screen': (_) => HomeScreen(),
        'page_dos': (BuildContext context) => PageDos(),
      },
    );
  }
}
