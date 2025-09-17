class Validation {
  static late String _pass;

  Validation._();

  static validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "This field can't be empty";
    }
    if (value[0] != value[0].toUpperCase()) {
      return "First letter must be uppercase";
    } else {
      return null;
    }
  }

  static validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "This field can't be empty";
    }
    if (!value.contains("@")) {
      return "Not valid email ";
    } else {
      return null;
    }
  }

  static validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "This field can't be empty";
    }
    if (value.trim().length < 6) {
      return "Must be at least 6 characters";
    } else {
      _pass = value;
      return null;
    }
  }

  static confirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "This field can't be empty";
    }
    if (value != _pass) {
      return "Password don't match";
    } else {
      return null;
    }
  }
}
