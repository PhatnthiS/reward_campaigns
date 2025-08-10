import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reward_campaigns/core/widgets/snack_bar.dart';

void main() {
  testWidgets('AppSnackBar displays correct message, icon, and colors', (WidgetTester tester) async {
    const testMessage = 'Test';
    const testIcon = Icons.error;
    const testColor = Colors.red;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    AppSnackBar(
                      message: testMessage,
                      icon: testIcon,
                      color: testColor,
                    ),
                  );
                },
                child: const Text('Show SnackBar'),
              );
            },
          ),
        ),
      ),
    );

    await tester.tap(find.text('Show SnackBar'));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    expect(find.text(testMessage), findsOneWidget);

    expect(find.byIcon(testIcon), findsOneWidget);

    final container = tester.widget<Container>(find.descendant(
      of: find.byType(SnackBar),
      matching: find.byType(Container),
    ));

    final decoration = container.decoration as BoxDecoration;
    expect(decoration.color, testColor);
  });
}
