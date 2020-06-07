import '../shared/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jiffy/jiffy.dart';

String _textValidator(String value, String labelText, bool isRequired) {
  if (isRequired && (value == null || value.isEmpty))
    return Constant.isRequired(labelText);
}

Widget TextInputField({
  String labelText,
  IconData icon,
  bool isRequired = false,
  onChanged,
  String Function() errorText,
}) =>
    TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        icon: Icon(icon) ?? null,
        errorText: _textValidator(errorText(), labelText, isRequired),
      ),
    );

String _numberValidator(String value, String labelText, bool isRequired) {
  if (isRequired && value.isEmpty) return Constant.isRequired(labelText);
}

Widget NumericInputField({
  String labelText,
  IconData icon,
  int mantissaLength = 0,
  bool isRequired = false,
}) =>
    TextFormField(
      inputFormatters: <TextInputFormatter>[
        LengthLimitingTextInputFormatter(12),
        // WhitelistingTextInputFormatter(RegExp("^[-]([0-9])*")),
        WhitelistingTextInputFormatter.digitsOnly
      ],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: labelText,
        icon: Icon(icon) ?? null,
      ),
      validator: (value) => _numberValidator(value, labelText, isRequired),
    );

DatePickerInputField({
  BuildContext context,
  DateTime initialDate,
  int firstDate,
  DateTime lastDate,
}) async {
  DateTime date = await showDatePicker(
    context: context,
    initialDate: initialDate ?? DateTime.now(),
    firstDate: firstDate ?? Jiffy(DateTime.now()).subtract(years: 100),
    lastDate: lastDate ?? Jiffy(DateTime.now()).add(years: 10),
  );

  return date;
}
