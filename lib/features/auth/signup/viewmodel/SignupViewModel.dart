
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class SignupViewModel extends ChangeNotifier{
  final TextEditingController dobController= TextEditingController();
  DateTime? _selectedDate;

  Future<void> pickDate(BuildContext context)async{
    final now=DateTime.now();
    final pickedDate=await showDatePicker(
        context: context,
        initialDate: DateTime(2000),
        firstDate: DateTime(1900),
        lastDate: now
    );

    if(pickedDate!=null)
      {
        _selectedDate=pickedDate;
        dobController.text=DateFormat('dd/MM/yyyy').format(pickedDate);
        notifyListeners();
      }
  }

  @override
  void dispose() {
    dobController.dispose();
    super.dispose();
  }

}