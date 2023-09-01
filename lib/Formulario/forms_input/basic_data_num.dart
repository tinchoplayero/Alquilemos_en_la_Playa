import 'package:formz/formz.dart';

// Define input validation errors
enum NumeroInputError { empty }

// Extend FormzInput and provide the input type and error type.
class NumeroInput extends FormzInput<int, NumeroInputError> {
  // Call super.pure to represent an unmodified form input.
  const NumeroInput.pure() : super.pure(0);

  // Call super.dirty to represent a modified form input.
  const NumeroInput.dirty({int value = 0}) : super.dirty(value);

  // Override validator to handle validating a given input value.
  @override
  NumeroInputError? validator(int value) {
    return value.isNaN ? NumeroInputError.empty : null;
  }
}