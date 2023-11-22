import 'package:equatable/equatable.dart';

abstract class CustomException extends Equatable implements Exception {
  @override
  List<Object> get props => [];

  @override
  String toString() => '$runtimeType Exception';
}