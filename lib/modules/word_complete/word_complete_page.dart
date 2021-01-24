import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'word_complete_controller.dart';

class WordCompletePage extends StatelessWidget {
  final controller = Get.put(WordCompleteController());

  final List<TextEditingController> listTextCTRL = List.generate(4, (i) => TextEditingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Word Comp Module')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(child: Column(children: [_listTile(), SizedBox(height: 16)])),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton.extended(
              onPressed: () {},
              label: Obx(() => Text('${controller.points.value}')),
              heroTag: 'points',
            ),
            FloatingActionButton.extended(
              onPressed: () => {controller.verifyPoints()},
              label: Text('Verificar'),
              heroTag: 'varifyPoints',
            ),
          ],
        ),
      ),
    );
  }

  Widget _listTile() {
    final listWordsToComplete = controller.listWordsToCompleteLVL1;
    return Container(
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.listWordsToCompleteLVL1['images'].length,
            itemBuilder: (context, index) {
              final imageByIndex = listWordsToComplete["images"][index];
              final controllerName = 'textController${index + 1}';
              return Padding(
                padding: EdgeInsets.all(8),
                child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        maxRadius: 48,
                        child: Image.asset(
                          'assets/word_complete/$imageByIndex',
                          fit: BoxFit.fitHeight,
                        )),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${listWordsToComplete["fields"][index]}',
                          style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                        ),
                        TextField(
                          controller: listTextCTRL[index],
                        ),
                      ],
                    )),
              );
            }));
  }
}
