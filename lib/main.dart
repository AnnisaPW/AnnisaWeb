import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'app/_index.dart';

void main() async {
  await inits();
  setPathUrlStrategy();
  runApp(const App());
}
