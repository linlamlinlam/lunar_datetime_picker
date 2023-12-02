import 'package:flutter_test/flutter_test.dart';
import 'package:lunar_datetime_picker/lunar_datetime_picker.dart';
import 'package:lunar_datetime_picker/lunar_datetime_picker_platform_interface.dart';
import 'package:lunar_datetime_picker/lunar_datetime_picker_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLunarDatetimePickerPlatform
    with MockPlatformInterfaceMixin
    implements LunarDatetimePickerPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LunarDatetimePickerPlatform initialPlatform =
      LunarDatetimePickerPlatform.instance;

  test('$MethodChannelLunarDatetimePicker is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLunarDatetimePicker>());
  });
}
