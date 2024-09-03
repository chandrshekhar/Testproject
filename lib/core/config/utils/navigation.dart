import 'package:flutter/material.dart';

navigation(BuildContext context, Widget screen) {
  return Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
}

navigatePushReplacement(BuildContext context, Widget screen) {
  return Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (_) => screen));
}

navigatePushRemoveUntil(BuildContext context, Widget screen) {
  return Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (_) => screen), (route) => false);
}

navigateWithPushNamed(BuildContext context, String screen) {
  return Navigator.pushNamed(context, screen);
}

navigateWithPushNamedAndRemoveUntil(BuildContext context, String screen) {
  return Navigator.pushNamedAndRemoveUntil(context, screen, (route) => false);
}

navigationNamePushReplacement(BuildContext context, String screen) {
  return Navigator.pushReplacementNamed(context, screen);
}

backNavigation(BuildContext context) {
  return Navigator.pop(context);
}
