import 'package:custom_numeric_pad/custom_numpad_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomNumPad adds number to text field', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: CustomNumPad(
        buttonHeight: 50,
        buttonWidth: 70,
        rowSpacing: 5,
        columnSpacing: 5,
        // Add other required parameters for your CustomNumPad widget
      ),
    ));

    // Add your test scenarios here
    // For instance, interact with the CustomNumPad widget and check the behavior.
  });

  testWidgets('CustomNumPad changes appearance with different parameters', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: CustomNumPad(
        buttonHeight: 60,
        buttonWidth: 120,
        rowSpacing: 10,
        columnSpacing: 10,
        buttonRadius: 20,
        buttonColor: Colors.red,
        bgColor: Colors.yellow,
      ),
    ));

    // Add expectations to validate the appearance of the CustomNumPad based on the provided parameters
    // For example, expect certain colors, sizes, or spacings.
  });

  testWidgets('CustomNumPad behaves correctly with initial controller value', (WidgetTester tester) async {
    final initialController = TextEditingController(text: '123');
    await tester.pumpWidget(MaterialApp(
      home: CustomNumPad(
        buttonHeight: 50,
        buttonWidth: 70,
        rowSpacing: 5,
        columnSpacing: 5,
        controller: initialController,
      ),
    ));
    expect(find.byType(TextFormField), findsOneWidget);
    expect(find.byType(Container), findsNWidgets(12));
    expect(find.byType(TextButton), findsNWidgets(9));
    await tester.tap(find.widgetWithText(TextButton, '1'));
    await tester.tap(find.widgetWithText(TextButton, '2'));
    await tester.tap(find.widgetWithText(TextButton, '3'));
    expect(find.text('123'), findsOneWidget);
  });

}
