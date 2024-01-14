import 'package:flutter/material.dart';
import 'package:infixedu_copy/utils/card_item.dart';
import 'package:infixedu_copy/utils/custom_app_bar_widget.dart';
import 'package:infixedu_copy/utils/function_data.dart';

// Project imports:

// ignore: must_be_immutable
class AdminLibraryHome extends StatefulWidget {
  final List<String>? _titles;   // Make titles private
  final List<String>? _images;   // Make images private
  dynamic id;
  final bool? isTapped;
  final String? profileImage;

  AdminLibraryHome({Key? key, List<String>? titles, List<String>? images, this.profileImage, this.isTapped})
      : _titles = titles,
        _images = images;

  List<String>? get titles => _titles; // Getter for titles
  List<String>? get images => _images; // Getter for images

  @override
  _AdminLibraryHomeState createState() => _AdminLibraryHomeState();
}

class _AdminLibraryHomeState extends State<AdminLibraryHome> {
  bool? isTapped;
  dynamic currentSelectedIndex;

  @override
  void initState() {
    super.initState();
    isTapped = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Library',
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.builder(
          itemCount:  widget.titles!.length,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return CustomWidget(
              index: index,
              isSelected: currentSelectedIndex == index,
              onSelect: () {
                setState(() {
                  currentSelectedIndex = index;
                  AppFunction.getAdminLibraryPage(context, widget.titles![index]);
                });
              },
              headline:  widget.titles![index],
              icon:  widget.images![index],
            );
          },
        ),
      ),
    );
  }
}
