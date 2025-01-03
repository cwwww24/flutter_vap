import 'dart:async';
import 'package:flutter/services.dart';

class VapController {
  late MethodChannel _channel;

  void createChannel(id) {
    _channel = MethodChannel('flutter_vap_controller${id}');
  }

  /// return: play error:       {"status": "failure", "errorMsg": ""}
  ///         play complete:    {"status": "complete"}
  Future<Map<dynamic, dynamic>?> playPath(String path) async {
    return _channel.invokeMethod('playPath', {"path": path});
  }

  Future<Map<dynamic, dynamic>?> playAsset(String asset) {
    return _channel.invokeMethod('playAsset', {"asset": asset});
  }

  stop() {
    _channel.invokeMethod('stop');
  }
}
