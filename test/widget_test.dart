import 'package:flutter_test/flutter_test.dart';
import 'package:learnify/main.dart';
import 'package:learnify/pages/splash_page.dart';
import 'package:learnify/pages/login_page.dart';

void main() {
  testWidgets('Splash page navigates to Login page after delay',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Verify that SplashPage is shown initially
    expect(find.byType(SplashPage), findsOneWidget);

    // Advance time by 3 seconds
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();

    // Verify that we are now on the LoginPage
    expect(find.byType(LoginPage), findsOneWidget);
  });
}
