// import 'package:flutter/material.dart';
// import 'package:rotappcismo/data/data.dart';

// class Tile extends StatefulWidget {
//   final int pairIndex;
//   final String imagePath;
//   final _HomePageState parent;
//   Tile({this.imagePath, this.parent, this.pairIndex});
//   @override
//   _TileState createState() => _TileState();
// }

// class _TileState extends State<Tile> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         if (!cardSelected) {
//           if (selectedImagePath != '') {
//             if (selectedImagePath == pairs[widget.pairIndex].getImagePath) {
//               print('U got it');
//               cardSelected = true;
//               Future.delayed(Duration(milliseconds: 850), () {
//                 cardSelected = false;
//                 points += 100;
//                 selectedImagePath = '';
//                 setState(() {});
//                 widget.parent.setState(() {
//                   pairs[widget.pairIndex].setImagePath('');
//                   pairs[selectedTileIndex].setImagePath('');
//                 });
//               });
//             } else {
//               print('missing out it');
//               cardSelected = true;
//               Future.delayed(Duration(milliseconds: 850), () {
//                 points -= 50;
//                 cardSelected = false;
//                 widget.parent.setState(() {
//                   pairs[widget.pairIndex].setIsSelected(false);
//                   pairs[selectedTileIndex].setIsSelected(false);
//                 });
//                 selectedImagePath = '';
//               });
//             }
//           } else {
//             selectedTileIndex = widget.pairIndex;
//             selectedImagePath = pairs[widget.pairIndex].getImagePath;
//           }
//           setState(() {
//             pairs[widget.pairIndex].setIsSelected(true);
//           });
//           print('click');
//         }
//       },
//       child: Container(
//         margin: EdgeInsets.all(4.5),
//         child: pairs[widget.pairIndex].getImagePath == ''
//             ? Image.asset('assets/memo_g/check.png')
//             : Image.asset(
//                 pairs[widget.pairIndex].getIsSelected ? pairs[widget.pairIndex].getImagePath : widget.imagePath,
//               ),
//       ),
//     );
//   }
// }
