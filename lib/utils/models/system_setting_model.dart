// To parse this JSON data, do
//
//     final systemSettings = systemSettingsFromJson(jsonString);

import 'dart:convert';

SystemSettings systemSettingsFromJson(String str) =>
    SystemSettings.fromJson(json.decode(str));

String systemSettingsToJson(SystemSettings data) => json.encode(data.toJson());

class SystemSettings {
  SystemSettings({
     this.success,
     this.data,
     this.message,
  });

  bool? success;
  SystemData? data;
  dynamic message;

  factory SystemSettings.fromJson(Map<String, dynamic> json) => SystemSettings(
    success: json["success"],
    data: SystemData.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data!.toJson(),
    "message": message,
  };
}

class SystemData {
  SystemData({
    this.id,
    required this.schoolName,
    required this.siteTitle,
    required this.schoolCode,
    required this.address,
    required this.phone,
    required this.email,
    required this.fileSize,
    required this.currency,
    required this.currencySymbol,
    required this.logo,
    required this.favicon,
    required this.systemVersion,
    required this.currencyCode,
    required this.copyrightText,
    this.schoolId,
    required this.lesson,
    required this.chat,
    this.feesCollection,
    required this.razorPay,
    required this.saas,
    required this.zoom,
    required this.bbb,
    this.videoWatch,
    required this.jitsi,
    required this.onlineExam,
    required this.xenditPayment,
    required this.wallet,
    this.university,
    this.feesStatus,
    required this.khaltiPayment,
    required this.appSlider,
    required this.raudhahpay,
    this.preloaderStatus,
    required this.preloaderImage,
    required this.fees,
  });

  dynamic id;
  String schoolName;
  String siteTitle;
  String schoolCode;
  String address;
  String phone;
  String email;
  String fileSize;
  String currency;
  String currencySymbol;
  String logo;
  String favicon;
  String systemVersion;
  String currencyCode;
  String copyrightText;
  dynamic schoolId;
  int lesson;
  int chat;
  dynamic feesCollection;
  int razorPay;
  int saas;
  int zoom;
  int bbb;
  dynamic videoWatch;
  int jitsi;
  int onlineExam;
  int xenditPayment;
  int wallet;
  dynamic university;
  dynamic feesStatus;
  int khaltiPayment;
  int appSlider;
  int raudhahpay;
  dynamic preloaderStatus;
  String preloaderImage;
  bool fees;

  factory SystemData.fromJson(Map<String, dynamic> json) => SystemData(
    id: json["id"],
    schoolName: json["school_name"],
    siteTitle: json["site_title"],
    schoolCode: json["school_code"],
    address: json["address"],
    phone: json["phone"],
    email: json["email"],
    fileSize: json["file_size"],
    currency: json["currency"],
    currencySymbol: json["currency_symbol"],
    logo: json["logo"],
    favicon: json["favicon"],
    systemVersion: json["system_version"],
    currencyCode: json["currency_code"],
    copyrightText: json["copyright_text"],
    schoolId: json["school_id"],
    lesson: json["Lesson"],
    chat: json["Chat"],
    feesCollection: json["FeesCollection"],
    razorPay: json["RazorPay"],
    saas: json["Saas"],
    zoom: json["Zoom"],
    bbb: json["BBB"],
    videoWatch: json["VideoWatch"],
    jitsi: json["Jitsi"],
    onlineExam: json["OnlineExam"],
    xenditPayment: json["XenditPayment"],
    wallet: json["Wallet"],
    university: json["University"],
    feesStatus: json["fees_status"],
    khaltiPayment: json["KhaltiPayment"],
    appSlider: json["AppSlider"],
    raudhahpay: json["Raudhahpay"],
    preloaderStatus: json["preloader_status"],
    preloaderImage: json["preloader_image"],
    fees: json["Fees"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "school_name": schoolName,
    "site_title": siteTitle,
    "school_code": schoolCode,
    "address": address,
    "phone": phone,
    "email": email,
    "file_size": fileSize,
    "currency": currency,
    "currency_symbol": currencySymbol,
    "logo": logo,
    "favicon": favicon,
    "system_version": systemVersion,
    "currency_code": currencyCode,
    "copyright_text": copyrightText,
    "school_id": schoolId,
    "Lesson": lesson,
    "Chat": chat,
    "FeesCollection": feesCollection,
    "RazorPay": razorPay,
    "Saas": saas,
    "Zoom": zoom,
    "BBB": bbb,
    "VideoWatch": videoWatch,
    "Jitsi": jitsi,
    "OnlineExam": onlineExam,
    "XenditPayment": xenditPayment,
    "Wallet": wallet,
    "University": university,
    "fees_status": feesStatus,
    "KhaltiPayment": khaltiPayment,
    "AppSlider": appSlider,
    "Raudhahpay": raudhahpay,
    "preloader_status": preloaderStatus,
    "preloader_image": preloaderImage,
    "Fees": fees,
  };
}
