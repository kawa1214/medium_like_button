import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medium_like_button/medium_like_button.dart';

void main() {
  const MethodChannel channel = MethodChannel('medium_like_button');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MediumLikeButton.platformVersion, '42');
  });
}
