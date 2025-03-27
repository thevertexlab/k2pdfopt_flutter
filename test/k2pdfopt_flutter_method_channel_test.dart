import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:k2pdfopt_flutter/k2pdfopt_flutter_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelK2pdfoptFlutter platform = MethodChannelK2pdfoptFlutter();
  const MethodChannel channel = MethodChannel('k2pdfopt_flutter');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
