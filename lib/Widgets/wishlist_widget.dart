// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
// import 'package:flutter/material.dart';
// import 'package:online_store_customers/Providers/theme_provider.dart';
// import 'package:online_store_customers/Widgets/heart_button.dart';
// import 'package:online_store_customers/Widgets/text_widget.dart';
// import 'package:provider/provider.dart';
//
// class WishlistWidget extends StatelessWidget {
//   const WishlistWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     final Color color =
//     themeProvider.getDarkTheme ? Colors.white : Colors.black;
//     Size size = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.all(4.0),
//       child: InkWell(
//         onTap: () {
//           // Navigator to ProductDetails
//         },
//         child: Container(
//           height: size.height * 0.20,
//           decoration: BoxDecoration(
//             color: Theme.of(context).cardColor,
//             border: Border.all(color: color, width: 1),
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: Row(
//             children: [
//               Container(
//                 margin: const EdgeInsets.only(left: 8),
//                 width: size.width * 0.2,
//                 height: size.width * 0.25,
//                 child: FancyShimmerImage(
//                   imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
//                   boxFit: BoxFit.fill,
//                 ),
//               ),
//               Column(
//                 children: [
//                   Flexible(
//                     child: Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.shopping_bag_outlined,
//                             color: color,
//                           ),
//                         ),
//                       //  const HeartButton(),
//
//
//                       ],
//                     ),
//                   ),
//                   Flexible(
//                     child: TextWidget(
//                       text: 'Title',
//                       color: color,
//                       textSize: 20.0,
//                       maxLines: 2,
//                       isTitle: true,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   TextWidget(
//                     text: '\$2.59',
//                     color: color,
//                     textSize: 18.0,
//                     maxLines: 1,
//                     isTitle: true,
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
