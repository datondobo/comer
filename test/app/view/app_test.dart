import 'package:flutter_test/flutter_test.dart';
import 'package:la_comer/app/app.dart';
import 'package:la_comer/login/login.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(LoginPage), findsOneWidget);
    });
  });
}
