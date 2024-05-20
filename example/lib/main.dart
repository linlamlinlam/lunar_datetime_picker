import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:lunar_datetime_picker/date_init.dart';
import 'package:lunar_datetime_picker/datetime_picker_theme.dart';
import 'package:lunar_datetime_picker/lunar_datetime_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// 日期
  String? time = '1995-11-8 12:12';

  /// 是否是农历
  bool lunar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("日期选择器"),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "日期:$time",
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {
              DatePicker.showDatePicker(
                context,
                lunarPicker: lunar,
                theme: const LunarDatePickerTheme(
                    backgroundColor: Colors.white,
                    doneStyle: TextStyle(color: Colors.green)),
                dateInitTime: time == null
                    ? DateInitTime(
                        currentTime: DateTime.now(),
                        maxTime: DateTime(2026, 12, 12),
                        minTime: DateTime(1990, 3, 4))
                    : DateInitTime(
                        currentTime:
                            DateFormat("yyyy-MM-dd h:m").parse(time ?? ""),
                        maxTime: DateTime(2026, 12, 12),
                        minTime: DateTime(1990, 3, 4)),
                onConfirm: (time, lunar) {
                  debugPrint(time.toString());
                  setState(() {
                    this.time =
                        "${time.year}-${time.month}-${time.day} ${time.hour}:${time.minute}";
                    this.lunar = lunar;
                  });
                },
                onChanged: (time, lunar) {
                  debugPrint("change:${time.toString()}");
                },
              );
            },
            child: const Text("选择"),
          )
        ],
      )),
    );
  }
}
