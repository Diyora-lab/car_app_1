abstract class AppValidators {
  String? getValidators(String? value);
}

class SignInValidators implements AppValidators {
  @override
  String? getValidators(String? value) {
    if (value?.isEmpty ?? false) {
      return "Error";
    }
    return null;
  }
}
