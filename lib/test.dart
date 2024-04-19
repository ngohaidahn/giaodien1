//
// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/widgets.dart';
//
// class Test extends StatefulWidget {
//   const Test({super.key});
//
//   @override
//   State<Test> createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.edit,
//               )),
//         ],
//         elevation: 0,
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         title: const Text(
//           "Đoạn chat",
//           style: TextStyle(
//               color: Colors.black, fontSize: 27, fontWeight: FontWeight.bold),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: const EdgeInsets.symmetric(vertical: 50),
//           children: <Widget>[
//             const Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Icon(
//                   Icons.account_circle,
//                   size: 50,
//                 ),
//                 Icon(
//                   Icons.brightness_low,
//                   size: 50,
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ListTile(
//               onTap: () {},
//               contentPadding:
//                   const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//               leading: const Icon(Icons.comment),
//               title: const Text(
//                 "Đoạn chat",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               contentPadding:
//                   const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//               leading: const Icon(Icons.store_mall_directory),
//               title: const Text(
//                 "Marketplace",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               contentPadding:
//                   const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//               leading: const Icon(Icons.chat),
//               title: const Text(
//                 "Tin nhắn đang chờ",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               contentPadding:
//                   const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//               leading: const Icon(Icons.view_agenda),
//               title: const Text(
//                 "Kho lưu chữ",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   "Cộng đồng",
//                   style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 Text.rich(TextSpan(children: <TextSpan>[
//                   TextSpan(
//                       text: "Chỉnh sửa",
//                       style: const TextStyle(
//                         color: Colors.blue,
//                         fontSize: 14,
//                         // decoration: TextDecoration.underline
//                       ),
//                       recognizer: TapGestureRecognizer()..onTap = () {})
//                 ])),
//               ],
//             ),
//           ],
//         ),
//       ),
//
//       //-----------------------------------------------------------------------------------------------
//       body: Column(
//         children: <Widget>[
//           Container(
//             margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
//             child: TextField(
//               decoration: InputDecoration(
//                   prefixIcon: const Icon(Icons.search),
//                   hintText: "Tìm kiếm",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(40),
//                       borderSide: const BorderSide(color: Colors.white70))),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Row(
//               children: [
//                 Column(
//                   children: [
//                     CircleAvatar(
//                       radius: 30,
//                       backgroundImage:
//                           Image.asset('assets/images/anhmes2.jpg').image,
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Text("Ghi chú...")
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 Column(
//                   children: [
//                     CircleAvatar(
//                       radius: 30,
//                       backgroundImage:
//                           Image.asset('assets/images/anhmes2.jpg').image,
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Text(
//                       "NVA",
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 Column(
//                   children: [
//                     CircleAvatar(
//                       radius: 30,
//                       backgroundImage:
//                           Image.asset('assets/images/anhmes2.jpg').image,
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Text(
//                       "NVB",
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 Column(
//                   children: [
//                     CircleAvatar(
//                       radius: 30,
//                       backgroundImage:
//                           Image.asset('assets/images/anhmes2.jpg').image,
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Text(
//                       "NVC",
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Stack(
//             children: [
//               Container(
//                 color: Colors.white,
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           CircleAvatar(
//                             radius: 25,
//                             backgroundImage:
//                                 Image.asset('assets/images/anhmes2.jpg').image,
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Expanded(
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Nguyễn Văn A",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                                 Text(
//                                   "Bạn: Ok",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const Column(
//                             children: [Text(""), Text("09:05 PM")],
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Column(
//                             children: [
//                               Icon(
//                                 Icons.check_circle,
//                                 color: Colors.grey,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           CircleAvatar(
//                             radius: 25,
//                             backgroundImage:
//                                 Image.asset('assets/images/anhmes2.jpg').image,
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Expanded(
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Nguyễn Văn B",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                                 Text(
//                                   "Bạn: Ok",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const Column(
//                             children: [Text(""), Text("12:05 PM")],
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Column(
//                             children: [
//                               Icon(
//                                 Icons.check_circle,
//                                 color: Colors.grey,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           CircleAvatar(
//                             radius: 25,
//                             backgroundImage:
//                                 Image.asset('assets/images/anhmes2.jpg').image,
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Expanded(
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Nguyễn Văn C",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                                 Text(
//                                   "Bạn: Ok",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const Column(
//                             children: [Text(""), Text("04:05 AM")],
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Column(
//                             children: [
//                               Icon(
//                                 Icons.check_circle,
//                                 color: Colors.grey,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           CircleAvatar(
//                             radius: 25,
//                             backgroundImage:
//                                 Image.asset('assets/images/anhmes2.jpg').image,
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Expanded(
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Nguyễn Văn A",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                                 Text(
//                                   "Bạn: Ok",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const Column(
//                             children: [Text(""), Text("09:05 PM")],
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Column(
//                             children: [
//                               Icon(
//                                 Icons.check_circle,
//                                 color: Colors.grey,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           CircleAvatar(
//                             radius: 25,
//                             backgroundImage:
//                                 Image.asset('assets/images/anhmes2.jpg').image,
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Expanded(
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Nguyễn Văn A",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                                 Text(
//                                   "Bạn: Ok",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const Column(
//                             children: [Text(""), Text("09:05 PM")],
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Column(
//                             children: [
//                               Icon(
//                                 Icons.check_circle,
//                                 color: Colors.grey,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//
//                     ],
//                   ),
//                 ),
//
//                 // child: Card(
//                 //
//                 //   color: Colors.white,
//                 //   shape: RoundedRectangleBorder(
//                 //     borderRadius: BorderRadius.circular(10),
//                 //   ),
//                 //
//                 // ),
//               ),
//               Positioned(
//                 left: 10,
//                 right: 10,
//                 bottom: 0.1,
//                 child: Card(
//
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(0),
//                   ),
//                   child:  Padding(
//                     padding: EdgeInsets.all(15.0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           children: [
//
//                             IconButton(onPressed: (){}, icon:
//                             const Icon(Icons.comment)),
//                             SizedBox(height: 5,),
//                             const Text("Đoạn chat"),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             IconButton(onPressed: (){}, icon:
//                             const Icon(Icons.videocam)),
//
//                             const SizedBox(height: 5,),
//                             const Text("Cuộc gọi"),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             IconButton(onPressed: (){}, icon:
//                             const Icon(Icons.contacts)),
//
//                             const SizedBox(height: 5,),
//                             const  Text("Danh bạ"),
//
//                           ],
//                         ),
//                         Column(
//
//                           children: [
//                             IconButton(onPressed: (){}, icon:
//                             const Icon(Icons.subscriptions)),
//
//                             const SizedBox(height: 5,),
//                             const  Text("Tin"),
//
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
