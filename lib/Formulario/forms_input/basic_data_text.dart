import 'package:formz/formz.dart';

// Define input validation errors
enum TextoInputError { empty }

// Extend FormzInput and provide the input type and error type.
class TextoInput extends FormzInput<String, TextoInputError> {
  // Call super.pure to represent an unmodified form input.
  const TextoInput.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const TextoInput.dirty({String value = ''}) : super.dirty(value);

  // Override validator to handle validating a given input value.
  @override
  TextoInputError? validator(String value) {
    return value.isEmpty ? TextoInputError.empty : null;
  }
}