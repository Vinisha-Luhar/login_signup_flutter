

class EmailValidator {

  static String? validate(String? value)
  {
    if(value == null || value.trim().isEmpty)
    {
      return 'Email is Required';
    }

    final emailRegex=RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegex.hasMatch(value.trim())){
      return "Enter a valid email address";
    }
    return null;
  }

}