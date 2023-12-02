import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'lunar_datetime_picker_platform_interface.dart';

/// An implementation of [LunarDatetimePickerPlatform] that uses method channels.
class MethodChannelLunarDatetimePicker extends LunarDatetimePickerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('lunar_datetime_picker');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
