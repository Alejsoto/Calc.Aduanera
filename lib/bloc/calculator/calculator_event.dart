part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}



class Addnumber extends CalculatorEvent {
  final String number;

  Addnumber(this.number);
}
