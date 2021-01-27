import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'word_complete_controller.dart';

class WordCompletePage extends StatelessWidget {
  final controller = Get.put(WordCompleteController());

  final List<TextEditingController> listTextCTRL = List.generate(34, (i) => TextEditingController());

  final Rx<GlobalKey<FormState>> formKey = GlobalKey<FormState>().obs;

  @override
  Widget build(BuildContext context) {
    controller.getTip(context);
    return Scaffold(
      appBar: AppBar(title: Text('Complete a Palavra!')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(child: Column(children: [_listTile(), SizedBox(height: 64)])),
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
              onPressed: () {
                // controller.verifyPoints();
                if (formKey.value.currentState.validate()) {
                  Get.snackbar(
                    'Eba!',
                    'Tudo Certo!',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }
              },
              label: Text('Verificar'),
              heroTag: 'varifyPoints',
            ),
          ],
        ),
      ),
    );
  }

  Widget _listTile() {
    final listWordsToComplete = controller.listWordsToCompleteLVL3;
    return GestureDetector(
      child: Container(
          child: Form(
              key: formKey.value,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.listWordsToCompleteLVL3['images'].length,
                  itemBuilder: (context, index) {
                    final imageByIndex = listWordsToComplete["images"][index];
                    final nameByIndex = imageByIndex.toString().split('.').first;
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
                                TextFormField(
                                  controller: listTextCTRL[index],
                                  validator: (value) {
                                    if (value != nameByIndex) {
                                      return 'ops... algo está errado';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ],
                            )));
                  }))),
      onTap: () {
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
      },
    );
  }
}
