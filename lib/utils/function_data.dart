import 'package:flutter/material.dart';
import 'package:infixedu_copy/screens/dashboard.dart';
import 'package:infixedu_copy/screens/home.dart';
import 'package:infixedu_copy/utils/widgets/scale_route.dart';

class AppFunction {
  static var students = [
    'Homework',
    'Study Materials',
    'Timeline',
    'Attendance',
    'Wallet',
    'Examination',
    'Online Exam',
    'Lesson',
    'Leave',
    'Notice',
    'Subjects',
    'Teacher',
    'Library',
    'Transport',
    'Dormitory',
    'Class',
    'Settings',
  ];
  static var studentIcons = [
    'assets/images/homework.png',
    'assets/images/downloads.png',
    'assets/images/timeline.png',
    'assets/images/attendance.png',
    'assets/images/fees_icon.png',
    'assets/images/examination.png',
    'assets/images/onlineexam.png',
    'assets/images/routine.png',
    'assets/images/leave.png',
    'assets/images/notice.png',
    'assets/images/subjects.png',
    'assets/images/teacher.png',
    'assets/images/library.png',
    'assets/images/transport.png',
    'assets/images/dormitory.png',
    'assets/images/myroutine.png',
    'assets/images/addhw.png',
  ];

  static var teachers = [
    'Students',
    'Academic',
    'Attendance',
    'Leave',
    'Content',
    'Notice',
    'Library',
    'Homework',
    'About',
    'Class',
    'Settings',
  ];

  static var teachersIcons = [
    'assets/images/students.png',
    'assets/images/academics.png',
    'assets/images/attendance.png',
    'assets/images/leave.png',
    'assets/images/contents.png',
    'assets/images/notice.png',
    'assets/images/library.png',
    'assets/images/homework.png',
    'assets/images/about.png',
    'assets/images/myroutine.png',
    'assets/images/addhw.png',
  ];

  static var admins = [
    'Students',
    'Leave',
    'Staff',
    'Dormitory',
    'Attendance',
    'Fees',
    'Content',
    'Notice',
    'Library',
    'Transport',
    'Class',
    'Settings',
  ];
  static var adminIcons = [
    'assets/images/students.png',
    'assets/images/leave.png',
    'assets/images/staff.png',
    'assets/images/dormitory.png',
    'assets/images/attendance.png',
    'assets/images/fees_icon.png',
    'assets/images/contents.png',
    'assets/images/notice.png',
    'assets/images/library.png',
    'assets/images/transport.png',
    'assets/images/myroutine.png',
    'assets/images/addhw.png',
  ];

  static var parent = [
    'Child',
    'About',
    'Settings',
  ];
  static var parentIcons = [
    'assets/images/mychild.png',
    'assets/images/about.png',
    'assets/images/addhw.png',
  ];

  static var parent2 = [
    'Child',
    'About',
    'Settings',
  ];

  static var parentIcons2 = [
    'assets/images/mychild.png',
    'assets/images/about.png',
    'assets/images/addhw.png',
  ];

  static var adminTransport = [
    'Route',
    'Vehicle',
    'Assign Vehicle',
    'Transport',
  ];
  static var adminTransportIcons = [
    'assets/images/transport.png',
    'assets/images/transport.png',
    'assets/images/addhw.png',
    'assets/images/transport.png',
  ];

  static var adminDormitory = [
    'Add Dormitory',
    'Add Room',
    'Room List',
  ];
  static var adminDormitoryIcons = [
    'assets/images/addhw.png',
    'assets/images/addhw.png',
    'assets/images/dormitory.png',
  ];

  static var librarys = [
    'Book List',
    'Books Issued',
  ];
  static var libraryIcons = [
    'assets/images/library.png',
    'assets/images/library.png',
  ];
  static var examinations = [
    'Schedule',
    'Result',
  ];
  static var examinationIcons = [
    'assets/images/examination.png',
    'assets/images/examination.png',
  ];

  static var onlineExaminations = [
    'Active Exam',
    'Exam Result',
  ];
  static var onlineExaminationIcons = [
    'assets/images/onlineexam.png',
    'assets/images/onlineexam.png',
  ];

  static var homework = [
    'Add HW',
    'HW List',
  ];
  static var homeworkIcons = [
    'assets/images/addhw.png',
    'assets/images/hwlist.png',
  ];

  static var contents = [
    'Add Content',
    'Content List',
  ];
  static var contentsIcons = [
    'assets/images/addhw.png',
    'assets/images/hwlist.png',
  ];

  static var leaves = [
    'Apply Leave',
    'Leave List',
  ];
  static var leavesIcons = [
    'assets/images/hwlist.png',
    'assets/images/addhw.png',
  ];

  static var adminLibrary = [
    'Add Book',
    'Book List',
    'Add Member',
  ];
  static var adminLibraryIcons = [
    'assets/images/addhw.png',
    'assets/images/hwlist.png',
    'assets/images/addhw.png',
  ];

  static var academics = [
    'My Routine',
    'Class Routine',
    'Subjects',
  ];
  static var academicsIcons = [
    'assets/images/myroutine.png',
    'assets/images/classroutine.png',
    'assets/images/subjects.png',
  ];

  static var attendance = [
    'Class Atten',
    'Subject Atten',
    'Search Atten',
    'Search Sub Atten',
  ];
  static var attendanceIcons = [
    'assets/images/classattendance.png',
    'assets/images/classattendance.png',
    'assets/images/searchattendance.png',
    'assets/images/searchattendance.png',
  ];

  static var studentattendance = [
    'Search Atten',
    'Search Sub Atten',
  ];
  static var studentattendanceIcons = [
    'assets/images/searchattendance.png',
    'assets/images/searchattendance.png',
  ];

  static var downloadLists = [
    'Assignment',
    'Syllabus',
    'Other Downloads',
  ];
  static var downloadListIcons = [
    'assets/images/downloads.png',
    'assets/images/downloads.png',
    'assets/images/downloads.png',
  ];

  static var studentLeaves = [
    'Apply Leave',
    'Leave List',
  ];

  static var studentLeavesIcons = [
    'assets/images/hwlist.png',
    'assets/images/addhw.png',
  ];

  static var studentLessonPlan = [
    'Lesson Plan',
    'Overview',
  ];

  static var studentLessonPlanIcons = [
    'assets/images/routine.png',
    'assets/images/routine.png',
  ];

  static var adminFees = [
    'Add Fee',
    'Fee List',
  ];
  static var adminFeeIcons = [
    'assets/images/fees_icon.png',
    'assets/images/addhw.png',
  ];
  static var adminFeesNew = [
    'Fee Group',
    'Fee Type',
    'Fee Invoice',
    'Bank Payment',
    'Reports',
  ];
  static var adminFeeIconsNew = [
    'assets/images/fees_icon.png',
    'assets/images/fees_icon.png',
    'assets/images/fees_icon.png',
    'assets/images/fees_icon.png',
    'assets/images/fees_icon.png',
  ];

  static var adminFeesReport = [
    'Due Report',
    'Fine Report',
    'Payment Report',
    'Balance Report',
    'Waiver Report',
  ];

  static var driver = [
    'Transport',
    'About',
    'Settings',
  ];
  static var driverIcons = [
    'assets/images/transport.png',
    'assets/images/about.png',
    'assets/images/addhw.png',
  ];

  static void getFunctions(BuildContext context, String rule) {
    Route route;

    switch (rule) {
      case '1':
        route = ScaleRoute(page: Home(rule: rule, image: adminIcons, title: admins,));
        Navigator.of(context, rootNavigator: true)
            .pushAndRemoveUntil(route, (Route<dynamic> route) => false);
        break;
      case '2':
        route =
            ScaleRoute(page: DashboardScreen(title:students, image:studentIcons,rule: rule));
        Navigator.of(context, rootNavigator: true)
            .pushAndRemoveUntil(route, (Route<dynamic> route) => false);
        break;
      case '3':
        route = ScaleRoute(page: Home(rule: rule, image: parentIcons, title: parent,));
        Navigator.of(context, rootNavigator: true)
            .pushAndRemoveUntil(route, (Route<dynamic> route) => false);
        break;
      case '4':
        route =
            ScaleRoute(page: DashboardScreen(title:teachers, image:teachersIcons,rule: rule));
        Navigator.of(context, rootNavigator: true)
            .pushAndRemoveUntil(route, (Route<dynamic> route) => false);
        break;
      case '5':
        route = ScaleRoute(page: Home(rule: rule, image: adminIcons, title: admins,));
        Navigator.of(context, rootNavigator: true)
            .pushAndRemoveUntil(route, (Route<dynamic> route) => false);
        break;
      case '9':
        route = ScaleRoute(page: Home(rule: rule, image: driverIcons, title: driver,));
        Navigator.of(context, rootNavigator: true)
            .pushAndRemoveUntil(route, (Route<dynamic> route) => false);
        break;

    }
  }
}