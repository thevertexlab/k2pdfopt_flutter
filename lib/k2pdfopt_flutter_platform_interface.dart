import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'k2pdfopt_flutter_method_channel.dart';

abstract class K2pdfoptFlutterPlatform extends PlatformInterface {
  /// Constructs a K2pdfoptFlutterPlatform.
  K2pdfoptFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static K2pdfoptFlutterPlatform _instance = MethodChannelK2pdfoptFlutter();

  /// The default instance of [K2pdfoptFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelK2pdfoptFlutter].
  static K2pdfoptFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [K2pdfoptFlutterPlatform] when
  /// they register themselves.
  static set instance(K2pdfoptFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
