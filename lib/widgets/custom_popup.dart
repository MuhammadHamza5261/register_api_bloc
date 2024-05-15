// import 'package:flutter/material.dart';
//
// import '../styles/theme.dart';
//
//
// class CustomPopup {
//
//    showOrderTypes(BuildContext context,FacilitiesList model) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           backgroundColor: Colors.transparent,
//           insetPadding: const EdgeInsets.all(10),
//           child: Stack(
//             clipBehavior: Clip.none,
//             alignment: Alignment.center,
//             children: <Widget>[
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.85,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.white
//                 ),
//                 padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Center(
//                       child: Text(
//                         model.facilityName!,
//                         textAlign: TextAlign.center,
//                         style: AppTheme.appTheme.textTheme.bodyText1?.copyWith(
//                             fontWeight: FontWeight.bold, fontSize: 18),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//
//                     const SizedBox(
//                       height: 7,
//                     ),
//
//                     Visibility(
//                       visible: model.orderByStatus!.standingOrderCount != 0,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           _orderData(context,"Standing Orders", model.orderByStatus!.standingOrderCount!),
//                           const SizedBox(height: 15),
//                         ],
//                       ),
//                     ),
//
//
//                     Visibility(
//                       visible: model.orderByStatus!.partialCollectionNewOrderCount != 0,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           _orderData(context,"Partially Collected Orders", model.orderByStatus!.partialCollectionNewOrderCount!),
//                           const SizedBox(height: 15),
//                         ],
//                       ),
//                     ),
//
//                     Visibility(
//                       visible: model.orderByStatus!.reDrawOrderCount != 0,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           _orderData(context,"ReDraw Orders", model.orderByStatus!.reDrawOrderCount!),
//                           const SizedBox(height: 15),
//                         ],
//                       ),
//                     ),
//
//                     Visibility(
//                       visible: model.orderByStatus!.collectionRequestOrderCount != 0,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           _orderData(context,"Collection Request Orders", model.orderByStatus!.collectionRequestOrderCount!),
//                           const SizedBox(height: 15),
//                         ],
//                       ),
//                     ),
//
//                     SizedBox(height: 10,),
//
//                     Center(
//                         child: SizedBox(
//                           width: 130, // Set the desired width
//                           child: ElevatedButton(
//                             style: ButtonStyle(
//                               elevation: MaterialStateProperty.all<double>(0),
//                               backgroundColor:
//                               MaterialStateProperty.all<Color>(Colors.green),
//                               shape:
//                               MaterialStateProperty.all<RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(18.0),
//                                 ),
//                               ),
//                             ),
//                             onPressed: () {
//
//                               Navigator.pop(context);
//                               // Navigator.push(
//                               //   context,
//                               //   MaterialPageRoute(
//                               //       builder: (context) => const OrderListScreen()),
//                               // );
//                             },
//                             child: Text(
//                               'Close',
//                               style: AppTheme.appTheme.textTheme.bodyText1
//                                   ?.copyWith(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                   fontSize: 18),
//                             ),
//                           ),
//                         ))
//                   ],
//                 ),
//               ),
//               const Positioned(
//                   top: -50,
//                   child: CircleAvatar(
//                     radius: 40,
//                     backgroundColor: Colors.white,
//                     child: CircleAvatar(
//                       radius: 38,
//                       backgroundColor: Colors.orange,
//                       child: Icon(
//                         Icons.info,
//                         color: Colors.white,
//                         size: 70,
//                       ),
//                     ),
//                   ))
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//
//   Widget _orderData(BuildContext context, String title, int count){
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Expanded(
//           flex: 2,
//           child: Text(
//             '$title: ',
//             style: AppTheme.appTheme.textTheme.bodyText1
//                 ?.copyWith(color: Colors.grey),
//           ),
//         ),
//         Expanded(
//           child: Text(count.toString(),
//             style: const TextStyle(fontWeight: FontWeight.bold),
//           ),
//         )
//       ],
//     );
//   }
//
// }