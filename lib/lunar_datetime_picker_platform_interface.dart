import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'lunar_datetime_picker_method_channel.dart';

abstract class LunarDatetimePickerPlatform extends PlatformInterface {
  /// Constructs a LunarDatetimePickerPlatform.
  LunarDatetimePickerPlatform() : super(token: _token);

  static final Object _token = Object();

  static LunarDatetimePickerPlatform _instance = MethodChannelLunarDatetimePicker();

  /// The default instance of [LunarDatetimePickerPlatform] to use.
  ///
  /// Defaults to [MethodChannelLunarDatetimePicker].
  static LunarDatetimePickerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LunarDatetimePickerPlatform] when
  /// they register themselves.
  static set instance(LunarDatetimePickerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
