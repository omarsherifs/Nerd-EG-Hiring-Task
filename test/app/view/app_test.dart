import 'package:flutter_test/flutter_test.dart';
import 'package:nerd_eg_hiring_task/app/app.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      // expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
