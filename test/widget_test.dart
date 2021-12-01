import 'package:flutter_test/flutter_test.dart';

import 'package:yafa_quiz/main.dart';

void main() {
  testWidgets('It should start with home page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our app starts with home page
    expect(find.text("It's Quiz Time"), findsOneWidget);
  });
}
