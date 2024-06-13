import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../base_page.dart';

class WelcomePage extends BasePage {
  WelcomePage(super.tester);

  final Finder automateMeButton = find.byKey(const Key('automateMeButton'));

  Future<void> clickAutomateMe() async {
    await tap(automateMeButton);
  }
}
