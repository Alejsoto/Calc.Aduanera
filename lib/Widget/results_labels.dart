import 'package:flutter/material.dart';
import 'package:calcu_ladora/bloc/calculator/calculator_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultsLabels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column();
      },
    );
  }
}
