import 'package:flutter/services.dart';

var passwordFormatter = FilteringTextInputFormatter.deny(RegExp("é"));

var keyWordFormatter = FilteringTextInputFormatter.deny(RegExp("[A-Z]"));

var onlyNumberValidation = FilteringTextInputFormatter.allow(RegExp(r"[0-9.]"));

var userNameFormatter =
    FilteringTextInputFormatter.deny(RegExp(r'[!@#$%^&()?"{}|<>+]'));

var urlPattern = r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+';

var onlyOneDashHundredValidation =
    FilteringTextInputFormatter.allow(RegExp(r"^([0-9]|[1-9][0-9]|100)$"));

var passwordValidation =
    RegExp("^(?=.[A-Z])(?=.[a-z])(?=.[0-9])(?=.[!@#\$%^&(),.?:{}|<>]).");

var nameValidation = FilteringTextInputFormatter.deny(
    RegExp(r'[!@#<>?/":_`~;,.₺$£"{}[\]\\|=+)(*&^%0-9-]'));
