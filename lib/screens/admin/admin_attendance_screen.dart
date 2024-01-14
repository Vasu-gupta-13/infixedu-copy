// Flutter imports:
import 'package:flutter/material.dart';
import 'package:infixedu_copy/utils/card_item.dart';
import 'package:infixedu_copy/utils/custom_app_bar_widget.dart';
import 'package:infixedu_copy/utils/function_data.dart';

// Project imports:


class AdminAttendanceHomeScreen extends StatefulWidget {
  final List<String>? _titles;
  final List<String>? _images;
  final bool? isTapped;

  const AdminAttendanceHomeScreen({Key? key, List<String>? titles, List<String>? images, this.isTapped}):
        _titles = titles,
        _images = images;

  List<String>? get titles => _titles;
  List<String>? get images => _images;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<AdminAttendanceHomeScreen> {
  bool? isTapped;
  int? currentSelectedIndex;
  @override
  void initState() {
    super.initState();
    isTapped = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: 'Attendance',
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.builder(
          itemCount: widget.titles!.length,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return CustomWidget(
              index: index,
              isSelected: currentSelectedIndex == index,
              onSelect: () {
                setState(() {
                  currentSelectedIndex = index;
                  AppFunction.getAdminAttendanceDashboardPage(
                      context, widget.titles![index]);
                });
              },
              headline: widget.titles![index],
              icon: widget.images![index],
            );
          },
        ),
      ),
    );
  }
}
