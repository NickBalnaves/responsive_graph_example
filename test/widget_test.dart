import 'package:flutter_test/flutter_test.dart';
import 'package:responsive_graph_example/widgets/detail_button.dart';
import 'package:responsive_graph_example/widgets/rounded_button.dart';
import 'package:responsive_graph_example/widgets/title_text.dart';

void main() {
  testWidgets('Test DetailButton', (WidgetTester tester) async {
    await tester.pumpWidget(const DetailButton());
    expect(find.text('Details'), findsOneWidget);
  });

  testWidgets('Test RoundedButton', (WidgetTester tester) async {
    await tester.pumpWidget(const RoundedButton('test rounded button'));
    expect(find.text('test rounded button'), findsOneWidget);
  });

  testWidgets('Test TitleText', (WidgetTester tester) async {
    await tester.pumpWidget(const TitleText('test title text'));
    expect(find.text('test title text'), findsOneWidget);
  });
}
