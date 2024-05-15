// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:intl/intl.dart';
// import 'package:phlebotomist_app/config/extensions/extensions.dart';
// import 'package:phlebotomist_app/config/secure_storage/secure_storage_client.dart';
// import 'package:phlebotomist_app/config/styles/app_colors.dart';
// import 'package:phlebotomist_app/data/model/order_list_model.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../../ui/screens/auth/signin/signin_screen.dart';
// import '../navigation_service/navigation_service.dart';
// import '../styles/app_images.dart';
//
//
// class MyClass {
//
// }
//
// class Utils {
//   static const String updateOrderStatusCompleted = 'Completed';
//   static const String updateOrderStatusReCollect = 'Re-Collect';
//   static const String updateOrderStatusPartial = 'Partial';
//   static const String mapKey = 'AIzaSyC8_0GfKS7m12k0nnkjK0ahV0VsKsMh9c8';
//
//   static openUrl(String url) async {
//     if (!await launchUrl(Uri.parse(url))) {
//       throw Exception('Could not launch $url');
//     }
//   }
//
//   static showToast(String message, bool isError) {
//     Fluttertoast.showToast(
//         msg: message,
//         backgroundColor: isError ? AppColors.errorToastColor : AppColors.successToastColor
//     );
//   }
//
//   static void unfocusScreen(BuildContext context) {
//     FocusScope.of(context).unfocus() ;
//   }
//
//
//   static bool isStrongPassword(String password) {
//     final hasUppercase = password.contains(RegExp(r'[A-Z]'));
//     final hasLowercase = password.contains(RegExp(r'[a-z]'));
//     final hasDigits = password.contains(RegExp(r'[0-9]'));
//     final hasSpecialChars = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
//     final hasMinLength = password.length >= 8;
//
//     return hasUppercase && hasLowercase && hasDigits && hasSpecialChars && hasMinLength;
//   }
//
//
//   static bool validateStructure(String value){
//     String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])' ;
//     RegExp regExp = new RegExp(pattern);
//     return regExp.hasMatch(value);
//   }
//
//
//
//
//   static String getFormattedDateTime(String dateTimeString) {
//     DateTime dateTime = DateTime.parse(dateTimeString);
//
//     String formattedDate = DateFormat('MM-dd-yyyy').format(dateTime);
//     String formattedTime = DateFormat('HH:mm:ss').format(dateTime);
//     final date = '$formattedDate $formattedTime';
//     return date;
//   }
//   static String getFormattedDate(String dateTimeString) {
//     DateTime dateTime = DateTime.parse(dateTimeString);
//
//     String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);
//     return formattedDate;
//   }
//
//   static String getFormattedTime(String dateTimeString) {
//     DateTime dateTime = DateTime.parse(dateTimeString);
//
//     String formattedDate = DateFormat('dd-MM-yyyy').format(dateTime);
//     String formattedTime = DateFormat('HH:mm:ss').format(dateTime);
//     return formattedTime;
//   }
//
//   static logout() async {
//     Utils.showToast("Session Expired! Login Again.", true);
//     await SecureStorageClient.instance.clearStorage();
//     const SignInScreen().pushAndClearStack(NavigationService.navigationKey.currentContext!);
//   }
//
//   static void printHelper({required String printValue}) {
//     if (kDebugMode) {
//       print(printValue);
//     }
//   }
//
//
//   static Future<bool> isInternetConnected() async {
//     final connectivityResult = await (Connectivity().checkConnectivity());
//
//     if(connectivityResult == ConnectivityResult.mobile) {
//       return true ;
//     }
//     else if(connectivityResult == ConnectivityResult.wifi) {
//       return true ;
//     }
//     else if(connectivityResult == ConnectivityResult.ethernet) {
//       return true ;
//     }
//     else {
//       return false ;
//     }
//   }
//
//
//   static bool isIdReqOrder(Order order) {
//
//     if(order.requisitionType!.toLowerCase().trim() != "blood") {
//       return true ;
//     }
//     return false ;
//
//   }
//
// }