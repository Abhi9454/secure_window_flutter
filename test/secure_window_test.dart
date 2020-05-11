import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:secure_window/secure_window.dart';

void main() {
  const MethodChannel channel = MethodChannel('secure_window');
  final List<MethodCall> log = List<MethodCall>();

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      log.add(methodCall);
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('addFlags', () async {
    await SecureWindow.addFlags();
    expect(
      log,
      <Matcher>[
        isMethodCall('addFlags',arguments: null),
      ],
    );
  });
}
