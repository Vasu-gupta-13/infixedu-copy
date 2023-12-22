// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infixedu_copy/controller/system_controller.dart';
import 'package:infixedu_copy/utils/card_item.dart';
import 'package:infixedu_copy/utils/custom_app_bar_widget.dart';
import 'package:infixedu_copy/utils/function_data.dart';

// Project imports:

// ignore: must_be_immutable
class AdminFeesHome extends StatefulWidget {
 List<String> titles;
  List<String>? images;
  dynamic? id;
  String? profileImage;

  AdminFeesHome( { required this.titles,required this.images,  this.profileImage,});



  @override
  _AdminFeesHomeState createState() => _AdminFeesHomeState();
}

class _AdminFeesHomeState extends State<AdminFeesHome> {
  dynamic currentSelectedIndex;
  bool isTapped =false;


  final SystemController _systemController = Get.put(SystemController());

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
                  print(_systemController.systemSettings.value.data!.feesStatus);
                  if (_systemController.systemSettings.value.data!.feesStatus ==
                     0) {
                    AppFunction.getAdminFeePage(context, widget.titles[index]);
                  } else {
                    AppFunction.getAdminFeePageNew(context, widget.titles![index]);
                  }
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
