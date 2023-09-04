import 'package:formz/formz.dart';

// Define input validation errors
enum DateInputError { empty }

// Extend FormzInput and provide the input type and error type.
class DateInput extends FormzInput<DateTime?, DateInputError> {
  // Call super.pure to represent an unmodified form input.
  const DateInput.pure() : super.pure(null);

  // Call super.dirty to represent a modified form input.
  const DateInput.dirty({DateTime? value}) : super.dirty(value);

  // Override validator to handle validating a given input value.
  @override
  DateInputError? validator(DateTime? value) {
    return value == null ? DateInputError.empty : null;
  }
}



