part of 'calculator_bloc.dart';

class CalculatorState {
  final String mathResult;
  final String vfob;
  final String vflete1;
  final String vflete2;
  final String vseguro;
  final String votros;
  final String operation;

  CalculatorState({
    this.mathResult = '30',
    this.vfob = '30',
    this.vflete1 = '30',
    this.vflete2 = '30',
    this.vseguro = '30',
    this.votros = '30',
    this.operation = '+',
  });
}
