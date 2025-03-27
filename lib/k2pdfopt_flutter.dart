
import 'k2pdfopt_flutter_platform_interface.dart';

class K2pdfoptFlutter {
  Future<String?> getPlatformVersion() {
    return K2pdfoptFlutterPlatform.instance.getPlatformVersion();
  }
}
