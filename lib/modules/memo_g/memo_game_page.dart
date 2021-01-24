import 'package:flutter/material.dart';
import 'package:rotappcismo/data/data.dart';

import '../../data/data.dart';
import '../../data/data.dart';
import '../../data/data.dart';
import '../../data/data.dart';

class MemogamePage extends StatefulWidget {
  @override
  _MemogamePageState createState() => _MemogamePageState();
}

class _MemogamePageState extends State<MemogamePage> {
  @override
  void initState() {
    super.initState();
    initStateComplement();
  }

  void initStateComplement() {
    pairs = getPairs();
    pairs.shuffle();
    points = 0;
    cardOpened = 0;
    visiblePairs = pairs;
    cardSelected = true;
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        visiblePairs = getQuestions();
        cardSelected = false;
      });
      print('done');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogo da Memória'),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.all(4.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton.extended(
              heroTag: 'points',
              onPressed: () {},
              label: Text('$points'),
            ),
            if (cardOpened >= 12)
              FloatingActionButton.extended(
                heroTag: 'nextLevel',
                onPressed: () {
                  initStateComplement();
                  setState(() {});
                },
                label: Text('Próx. Nível >'),
              ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    mainAxisSpacing: 0.0,
                  ),
                  children: List.generate(visiblePairs.length, (index) {
                    return Tile(
                      imagePath: visiblePairs[index].getImagePath,
                      pairIndex: index,
                      isNamed: pairs[index].isNamed,
                      parent: this,
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  final bool isNamed;
  final int pairIndex;
  final String imagePath;
  final _MemogamePageState parent;
  Tile({this.imagePath, this.parent, this.pairIndex, this.isNamed});
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!cardSelected) {
          if (selectedImagePath != '') {
            if (selectedImagePath == pairs[widget.pairIndex].getImagePath) {
              print('U got it');
              cardSelected = true;
              Future.delayed(Duration(milliseconds: 850), () {
                cardSelected = false;
                points += 100;
                cardOpened += 1;
                selectedImagePath = '';
                setState(() {});
                widget.parent.setState(() {
                  pairs[widget.pairIndex].setImagePath('');
                  pairs[selectedTileIndex].setImagePath('');
                });
              });
            } else {
              print('missing out it');
              cardSelected = true;
              Future.delayed(Duration(milliseconds: 850), () {
                points -= 50;
                cardSelected = false;
                widget.parent.setState(() {
                  pairs[widget.pairIndex].setIsSelected(false);
                  pairs[selectedTileIndex].setIsSelected(false);
                });
                selectedImagePath = '';
              });
            }
          } else {
            selectedTileIndex = widget.pairIndex;
            selectedImagePath = pairs[widget.pairIndex].getImagePath;
          }
          setState(() {
            pairs[widget.pairIndex].setIsSelected(true);
          });
          print('click');
        }
      },
      child: Container(
        margin: EdgeInsets.all(4.5),
        child: (pairs[widget.pairIndex].getImagePath == '')
            ? Image.asset('assets/memo_g/check.png')
            : (pairs[widget.pairIndex].getIsSelected && widget.isNamed)
                ? Center(
                    child: Text('${pairs[widget.pairIndex].getName}',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.green[400],
                          fontSize: 18,
                        )))
                : Image.asset(
                    (pairs[widget.pairIndex].getIsSelected) ? pairs[widget.pairIndex].getImagePath : widget.imagePath),
      ),
    );
  }
}
