## Flutter 农历日期选择器

| 阳历显示                  | 阴历显示                        |
| ------------------------- | ------------------------------- | -------------------------------- |
| ![](screen_date_time.png) | ![](screen_lunar_date_time.png) | ![](screen_datetime_chinese.png) |

## 引用

```yaml
lunar_datetime_picker: ^0.0.2
```

## 使用

```dart
DatePicker.showDatePicker(
            context,
            lunarPicker: false,
            theme: const LunarDatePickerTheme(
                    doneStyle: TextStyle(color: Colors.green)),
            dateInitTime: DateInitTime(
                currentTime: DateTime.now(),
                maxTime: DateTime(2026, 12, 12),
                minTime: DateTime(2018, 3, 4)),
            onConfirm: (time) {
              debugPrint(time.toString());
            },
            onChanged: (time) {
              debugPrint("change:${time.toString()}");
            },
          );
```

## 感谢

- [flutter_datetime_picker](https://github.com/Realank/flutter_datetime_picker) 提供 PickerView 方案

- [lunar_flutter](https://github.com/6tail/lunar-flutter) 提供农历日期算法
