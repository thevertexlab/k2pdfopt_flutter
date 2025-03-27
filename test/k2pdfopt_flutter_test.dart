import 'package:flutter_test/flutter_test.dart';
import 'package:k2pdfopt_flutter/k2pdfopt_flutter.dart';
import 'package:k2pdfopt_flutter/k2pdfopt_flutter_platform_interface.dart';
import 'package:k2pdfopt_flutter/k2pdfopt_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockK2pdfoptFlutterPlatform
    with MockPlatformInterfaceMixin
    implements K2pdfoptFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final K2pdfoptFlutterPlatform initialPlatform = K2pdfoptFlutterPlatform.instance;

  test('$MethodChannelK2pdfoptFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelK2pdfoptFlutter>());
  });

  test('getPlatformVersion', () async {
    K2pdfoptFlutter k2pdfoptFlutterPlugin = K2pdfoptFlutter();
    MockK2pdfoptFlutterPlatform fakePlatform = MockK2pdfoptFlutterPlatform();
    K2pdfoptFlutterPlatform.instance = fakePlatform;

    expect(await k2pdfoptFlutterPlugin.getPlatformVersion(), '42');
  });
}
