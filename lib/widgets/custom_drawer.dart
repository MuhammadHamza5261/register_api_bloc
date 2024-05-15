// import 'package:flutter/material.dart';
//
// import '../styles/app_colors.dart';
//
//
// class CustomDrawer extends StatelessWidget {
//   const CustomDrawer({Key? key});
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     //Creating a instance of singleton
//     // Singleton singletonInstance = Singleton.instance;
//
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           //drawer header
//           DrawerHeader(
//             decoration: const BoxDecoration(
//               color: AppColors.primary,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const CircleAvatar(
//                   radius: 30.0,
//                   backgroundImage: AssetImage('assets/images/profile.png'),
//                 ),
//                 const SizedBox(height: 10),
//                 Text(
//
//                   singletonInstance.superAdminName ?? 'Super Admin',
//                   style: const TextStyle(
//                     overflow: TextOverflow.ellipsis,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600,
//                     color: AppColors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   singletonInstance.email ?? 'email@example.com',
//                   style: const TextStyle(
//                     overflow: TextOverflow.ellipsis,
//                     fontSize: 18,
//                     color: AppColors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // drawer List
//           ListTile(
//             leading: const Icon(Icons.home),
//             title:  Text('Home',
//               style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500,fontSize: 16),
//             ),
//             onTap: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => const OrderListScreen(),
//               ));
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.person),
//             title:  Text('Profile',
//               style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500,fontSize: 16),
//             ),
//             onTap: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => const ProfileScreen(),
//               ));
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.logout),
//             title:  Text('Log Out',
//               style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500,fontSize: 16),
//             ),
//             onTap: () {
//               myAlertDialog(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }