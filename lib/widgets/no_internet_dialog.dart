// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
//
// import '../styles/app_colors.dart';
// import '../styles/app_images.dart';
// import '../utils/utils.dart';
//
//
// class NoInternetDialog {
//
//   static void show(BuildContext context, {VoidCallback? onRefresh}) {
//     showModalBottomSheet(
//         context: context,
//         isDismissible: true,
//         shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20),
//               topRight: Radius.circular(20),
//             )),
//         builder: (context) {
//           return SizedBox(
//
//             height: MediaQuery.of(context).size.height * 0.4,
//             width: MediaQuery.of(context).size.width,
//
//
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width,
//                     child: Center(
//                       child: SizedBox(
//                         height: 180,
//                         width: 180,
//
//                         child: Lottie.asset(AppImages.noInternetAnimation),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: const EdgeInsets.only(top: 10, bottom: 20),
//                     child: Text(
//                       "No internet connection",
//                       style: Theme.of(context)
//                           .textTheme
//                           .titleLarge!
//                           .copyWith(fontSize: 25, color: AppColors.whiteGrey),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 200,
//                     child: MaterialButton(
//                       onPressed: onRefresh ?? () {
//                         Navigator.of(context).pop();
//                         Utils.isInternetConnected().then((value) {
//                           if(!value) {
//                             show(context);
//                           }
//                         }) ;
//                       },
//                       height: 45,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(18),
//                       ),
//                       color: AppColors.primary,
//                       child: Center(
//                         child: Text(
//                           "Refresh",
//                           style: Theme.of(context).textTheme.titleMedium!.copyWith(
//                               color: AppColors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ]),
//           );
//         });
//   }
//
//
// }