// import 'dart:io';
// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return HomePage();
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   File _image?;

//   Future<void> getimageditor() =>
//       Navigator.push(context, MaterialPageRoute(builder: (context) {
//         return ImageEditorPro(
//           appBarColor: Colors.black87,
//           bottomBarColor: Colors.black87,
//           pathSave: null,
//         );
//       })).then((geteditimage) {
//         if (geteditimage != null) {
//           setState(() {
//             _image = geteditimage;
//           });
//         }
//       }).catchError((er) {
//         print(er);
//       });

//   @override
//   Widget build(BuildContext context) {
//     return condition(
//             condtion: _image == null,
//             isTrue: 'Open Editor'.text().xRaisedButton(
//               onPressed: () {
//                 getimageditor();
//               },
//             ).toCenter(),
//             isFalse:
//                 _image == null ? Container() : Image.file(_image).toCenter())
//         .xScaffold(
//             appBar: 'Image Editor Pro example',
//             floatingActionButton:
               
//   }
// }

// Widget condition({bool condtion, Widget isTrue, Widget isFalse}) {
//   return condtion ? isTrue : isFalse;
// }
