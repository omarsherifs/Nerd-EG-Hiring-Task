import 'package:flutter_test/flutter_test.dart';
import 'package:nerd_eg_hiring_task/features/auth/views/sign_in_view.dart';

import '../../helpers/helpers.dart';

void main() {
  group('SignInView', () {
    testWidgets('renders SignInView', (tester) async {
      await tester.pumpApp(const SignInView());
      expect(find.byType(SignInView), findsOneWidget);
    });
  });
}
