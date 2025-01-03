import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class VapViewForIos extends StatelessWidget {
  VapViewForIos({
    required this.onCreated,
  });

  final Function(int id) onCreated;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> creationParams = <String, dynamic>{};
    return UiKitView(
      viewType: "flutter_vap",
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: StandardMessageCodec(),
      onPlatformViewCreated: (id) {
        onCreated(id);
      },
    );
  }
}
