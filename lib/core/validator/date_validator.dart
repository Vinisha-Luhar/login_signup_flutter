

class DateValidator{
  static String? validateDOB(DateTime? selectedDate)
  {
    if(selectedDate == null)
      {
        return "Please Select Your Birth Date";
      }

    final today=DateTime.now();
    if(selectedDate.isAfter(today))
      {
        return "Birth date cannot be in future";
      }

    final age=today.year-selectedDate.year;
    if(age<15)
      {
        return "You must be atleast 15 years old";
      }

    return null;
  }
}