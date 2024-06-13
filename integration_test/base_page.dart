import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class BasePage {
  final WidgetTester tester;

  BasePage(this.tester);

  Future<void> tap(Finder finder) async {
    await tester.tap(finder);
    await tester.pumpAndSettle();
  }

  Future<void> enterText(Finder finder, String text) async {
    await tester.enterText(finder, text);
    await tester.pumpAndSettle();
  }

  Future<bool> isVisible(Finder finder) async {
    return finder.evaluate().isNotEmpty;
  }

  Finder findByKey(Key key) {
    return find.byKey(key);
  }

  Finder findByText(String text) {
    return find.text(text);
  }
}
