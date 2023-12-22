// Flutter imports:
import 'package:flutter/material.dart';
import 'package:infixedu_copy/utils/card_item.dart';
import 'package:infixedu_copy/utils/custom_app_bar_widget.dart';
import 'package:infixedu_copy/utils/function_data.dart';

// Project imports:

// ignore: must_be_immutable
class AdminFeesReportMain extends StatefulWidget {
  List<String>? _titles;
  List<String>? _images;

   AdminFeesReportMain(this._titles, this._images, {super.key});

  @override
  _AdminFeesReportMainState createState() =>
      _AdminFeesReportMainState();
}

class _AdminFeesReportMainState extends State<AdminFeesReportMain> {
  bool isTapped = false;
  dynamic currentSelectedIndex;

  @override
  void initState() {
    super.initState();
    isTapped = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: 'Fees',
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.builder(
          itemCount: widget._titles!.length,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return CustomWidget(
              index: index,
              isSelected: currentSelectedIndex == index,
              onSelect: () {
                setState(() {
                  currentSelectedIndex = index;
                  AppFunction.getAdminFeesReportPage(context,widget._titles![index]);
                });
              },
              headline: widget._titles![index],
              icon: widget._images![index],
            );
          },
        ),
      ),
    );
  }
}
