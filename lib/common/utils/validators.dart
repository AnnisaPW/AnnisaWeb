part of '_index.dart';

class Vld {
  Vld._();

  static String? scan(List<String?> errorTextList) {
    for (var errorText in errorTextList) {
      if (errorText != null) return errorText;
    }
    return null;
  }

  static String? isNotEmpty(val) {
    var x = GetUtils.isNullOrBlank(val);
    if (x == true || x == null) {
      return 'this field is required';
    }
    return null;
  }

  static String? minChars(val, int min) {
    if (GetUtils.isLengthLessThan(val, min)) {
      return 'min $min characters';
    }
    return null;
  }

  static String? maxChars(val, int max) {
    if (GetUtils.isLengthGreaterThan(val, max)) {
      return 'max $max characters';
    }
    return null;
  }

  static String? email(val) {
    if (!GetUtils.isEmail(val)) {
      return 'email format not valid';
    }
    return null;
  }

  static String? isNum(val) {
    if (!GetUtils.isNum(val)) {
      return "only allow number format";
    }
    return null;
  }

  static String? alpha(val) {
    if (!GetUtils.isAlphabetOnly(val)) {
      return 'only allow [a-z][A-Z]';
    }
    return null;
  }

  static String? alphaSpace(val) {
    if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(val)) {
      return "only allow [a-z][A-Z][space]";
    }
    return null;
  }

  static String? numeric(val) {
    if (!GetUtils.isNumericOnly(val)) {
      return 'only allow [0-9]';
    }
    return null;
  }

  static String? numericSpace(val) {
    if (!GetUtils.isNumericOnly(val)) {
      return 'only allow [0-9][space]';
    }
    return null;
  }

  static String? alphaNumeric(val) {
    if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(val)) {
      return "only allow [a-z][A-Z][0-9]";
    }
    return null;
  }

  static String? alphaNumericSpace(val) {
    if (!RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(val)) {
      return "only allow [a-z][A-Z][0-9][space]";
    }
    return null;
  }

  static String? spaceNotAllowed(val) {
    if (!RegExp(r'^\S+$').hasMatch(val)) {
      return "[space] is not allowed";
    }
    return null;
  }

  static String? fullName(val) {
    if (!RegExp(r"^[a-zA-Z \,\.\']*$").hasMatch(val)) {
      return "only allow [a-z][A-Z][,.']";
    }
    return null;
  }

  static String? description(val) {
    if (!RegExp(r"^[a-zA-Z0-9 \n\,\.\'\!\?]*$").hasMatch(val)) {
      return "only allow [a-z][A-Z][0-9][,.'!?][space][enter]";
    }
    return null;
  }

  static String? pwdContain(val) {
    if (!RegExp(r"^(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)$").hasMatch(val)) {
      return "must contain number and letter";
    }
    return null;
  }

  static String? mustEqual(value1, value2) {
    if (value1 != value2) {
      return "not equals";
    }
    return null;
  }

  static String? regExp(val, RegExp regExp) {
    if (!regExp.hasMatch(val)) {
      return "some character is not allowed";
    }
    return null;
  }
}
