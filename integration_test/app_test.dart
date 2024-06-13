import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:keep_automating/main.dart' as app;
import 'page_objects/welcome_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Welcome Page Test', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    // Create page objects
    final welcomePage = WelcomePage(tester);

    // Test welcome screen
    expect(await welcomePage.isVisible(welcomePage.automateMeButton),
        isTrue);
    await welcomePage.clickAutomateMe();

    // Add further checks or navigation as needed
  });
}
