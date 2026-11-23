
import 'package:flutter_test/flutter_test.dart';
import 'package:prettify/MyHome.dart';

void main() {
  testWidgets('O aplicativo Prettify abre corretamente', (WidgetTester tester) async {
    await tester.pumpWidget(const MyHome());

    expect(find.byType(MyHome), findsOneWidget);
  });
}
