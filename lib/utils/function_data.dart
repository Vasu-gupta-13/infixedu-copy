import 'package:flutter/material.dart';
import 'package:infixedu_copy/screens/admin/library/add_library_book.dart';
import 'package:infixedu_copy/screens/admin/library/admin_add_member.dart';
import 'package:infixedu_copy/screens/admin/library/admin_library_screen.dart';
import 'package:infixedu_copy/screens/dashboard.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/admin_fee_list.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/admin_fee_home.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/admin_fee_type.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/fees_admin_new/fee_bank_payment.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/fees_admin_new/fee_group.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/fees_admin_new/fee_invoice.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/fees_admin_new/fee_type.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/fees_admin_new/fee_waiver_report.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/report/fee_balance_report.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/report/fee_dues_report.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/report/fee_fine_report.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/report/fee_payment_report.dart';
import 'package:infixedu_copy/screens/fees/fees__admin/report/report_main.dart';
import 'package:infixedu_copy/screens/home.dart';
import 'package:infixedu_copy/screens/teacher/students/student_search.dart';
import 'package:infixedu_copy/utils/models/system_setting_model.dart';
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
  static void getSaasAdminDashboardPage(BuildContext context, String title,
      String uid, SystemSettings systemSettings) {
    switch (title) {
      case 'Students':
        Navigator.push(context, ScaleRoute(page: StudentSearch()));
        break;
      case 'Fees':
        if (systemSettings.data!.feesStatus == 0) {
          debugPrint('FeesStatus == 0 ');
          // Navigator.push(context,
          //     ScaleRoute(page: AdminFeesHome(adminFees, adminFeeIcons)));
        } else {
          debugPrint('Fees');
          // Navigator.push(context,
          //     ScaleRoute(page: AdminFeesHome(adminFeesNew, adminFeeIconsNew)));
        }
        break;
      case 'Library':
        debugPrint('Library');
        // Navigator.push(
        //     context,
        //     ScaleRoute(
        //         page: AdminLibraryHome(adminLibrary, adminLibraryIcons)));
        break;
      case 'Attendance':
        debugPrint('Attendance');
        // Navigator.push(
        //     context,
        //     ScaleRoute(
        //         page: AttendanceHomeScreen(attendance, attendanceIcons)));
        break;
      case 'Content':
        debugPrint('Content');
        // Navigator.push(context,
        //     ScaleRoute(page: ContentHomeScreen(contents, contentsIcons)));
        break;
      case 'Transport':
        debugPrint('Transport');
        // Navigator.push(
        //     context,
        //     ScaleRoute(
        //         page: AdminTransportHome(adminTransport, adminTransportIcons)));
        break;
      case 'Staff':
        debugPrint('Staff');
        // Navigator.push(context, ScaleRoute(page: const AdminStaffList()));
        break;
      case 'Dormitory':
        debugPrint('Dormitory');
        // Navigator.push(
        //     context,
        //     ScaleRoute(
        //         page: AdminDormitoryHome(adminDormitory, adminDormitoryIcons)));
        break;
      case 'Notice':
        debugPrint('Leave');
        // Navigator.push(context, ScaleRoute(page: const StaffNoticeScreen()));
        break;
      case 'Leave':
        debugPrint('Leave');
        // Navigator.push(context, ScaleRoute(page:  LeaveAdminHomeScreen()));
        break;
      case 'Settings':
        debugPrint('Settings');
        // Navigator.push(context, ScaleRoute(page:  SettingScreen()));
        break;

      case 'Class':
        debugPrint('Class');
        // pushNewScreen(
        //   context,
        //   screen: VirtualClassMain(),
        //   withNavBar: false,
        // );
        break;
    }
  }
  static void getAdminDashboardPage(BuildContext context, String title,
      String uid, SystemSettings systemSettings) {
    switch (title) {
      case 'Students':
        Navigator.push(context, ScaleRoute(page: StudentSearch()));
        break;
      case 'Fees':
        print(systemSettings.data);
        if (systemSettings.data!.feesStatus == 0) {
          Navigator.push(context,
              ScaleRoute(page: AdminFeesHome(titles: adminFees, images: adminFeeIcons)));
        } else {
          Navigator.push(context,
              ScaleRoute(page: AdminFeesHome(titles: adminFeesNew, images: adminFeeIconsNew)));
        }
        break;
      case 'Library':
        Navigator.push(
            context,
            ScaleRoute(
                page: AdminLibraryHome(titles: adminLibrary,images: adminLibraryIcons)));
        break;
      case 'Attendance':
        Navigator.push(
            context,
            ScaleRoute(
                page: AdminAttendanceHomeScreen(attendance, attendanceIcons)));
        break;
      // case 'Transport':
      //   Navigator.push(
      //       context,
      //       ScaleRoute(
      //           page: AdminTransportHome(adminTransport, adminTransportIcons)));
      //   break;
      // case 'Staff':
      //   Navigator.push(context, ScaleRoute(page: const AdminStaffList()));
      //   break;
      // case 'Content':
      //   Navigator.push(context,
      //       ScaleRoute(page: ContentHomeScreen(contents, contentsIcons)));
      //   break;
      // case 'Notice':
      //   Navigator.push(context, ScaleRoute(page: const StaffNoticeScreen()));
      //   break;
      // case 'Dormitory':
      //   Navigator.push(
      //       context,
      //       ScaleRoute(
      //           page: AdminDormitoryHome(adminDormitory, adminDormitoryIcons)));
      //   break;
      // case 'Leave':
      //   Navigator.push(context, ScaleRoute(page: const LeaveAdminHomeScreen()));
      //   break;
      // case 'Settings':
      //   Navigator.push(context, ScaleRoute(page: const SettingScreen()));
      //   break;
      // case 'Class':
      //   pushNewScreen(
      //     context,
      //     screen: VirtualClassMain(),
      //     withNavBar: false,
      //   );
      //   break;
    }
  }
  static void getAdminFeePage(BuildContext context, String title) {
    print(title);
    switch (title) {
      case 'Add Fee':
        Navigator.push(context, ScaleRoute(page:  AddFeeType()));
        break;
      case 'Fee List':
        Navigator.push(context, ScaleRoute(page:  AdminFeeListView()));
        break;
    }
  }

  static void getAdminFeePageNew(BuildContext context, String title) {
    switch (title) {
      case 'Fee Group':
        Navigator.push(context, ScaleRoute(page:  const FeesGroupScreen()));
        break;
      case 'Fee Type':
        Navigator.push(context, ScaleRoute(page:  const FeesTypeScreen()));
        break;
      case 'Fee Invoice':
        Navigator.push(context, ScaleRoute(page:  FeesInvoiceScreen()));
        break;
      case 'Bank Payment':
        Navigator.push(context, ScaleRoute(page:  FeeBankPaymentSearch()));
        break;
      case 'Reports':
        print('reports');
        Navigator.push(
            context,
            ScaleRoute(
                page: AdminFeesReportMain(adminFeesReport, adminFeeIconsNew)));
        break;
    }
  }
  static void getAdminFeesReportPage(BuildContext context, String title) {
    switch (title) {
      case 'Due Report':
        Navigator.push(context, ScaleRoute(page: const AdminFeesDueReport()));
        break;
      case 'Fine Report':
        Navigator.push(context, ScaleRoute(page: const AdminFeesFineReport()));
        break;
      case 'Payment Report':
        Navigator.push(
            context, ScaleRoute(page: const AdminFeesPaymentReport()));
        break;
      case 'Balance Report':
        Navigator.push(
            context, ScaleRoute(page: const AdminFeesBalanceReport()));
        break;
      case 'Waiver Report':
        Navigator.push(
            context, ScaleRoute(page: const AdminFeesWaiverReport()));
        break;
    }
  }
  static void getAdminLibraryPage(BuildContext context, String title) {
    switch (title) {
      case 'Add Book':
        Navigator.push(context, ScaleRoute(page:  AddAdminBook()));
        break;
      case 'Add Member':
        Navigator.push(context, ScaleRoute(page: const AddMember()));
        break;
      case 'Book List':
      //  Navigator.push(context, ScaleRoute(page: const BookListScreen()));
        break;
    }
  }
  static void getAdminAttendanceDashboardPage(
      BuildContext context, String title) {
    switch (title) {
      case 'Class Atten':
        Navigator.push(
            context, ScaleRoute(page: const StudentAttendanceHome()));
        break;
      case 'Subject Atten':
        Navigator.push(
            context, ScaleRoute(page: const StudentSubjectAttendanceHome()));
        break;
      case 'Search Atten':
        Navigator.push(
            context,
            ScaleRoute(
                page: StudentSearch(
                  status: 'attendance',
                )));
        break;
      case 'Search Sub Atten':
        Navigator.push(
            context,
            ScaleRoute(
                page: SubjectStudentSearch(
                  status: 'attendance',
                )));
        break;
    }
  }
}