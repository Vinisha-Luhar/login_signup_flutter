
class UsernameValidator{

  static String? validate(String? value){
    if(value == null || value.isEmpty)
      {
        return 'Username is required';
      }

    if(value.length < 3 || value.length >20)
      {
        return "Username must be 3-20 characters";
      }

    final regex=RegExp(r'^[a-zA-Z][a-zA-Z0-9_]*$');
    if(!regex.hasMatch(value))
      {
        return "Only letters, numbers & underscore allowed";
      }

    return null;
  }

}