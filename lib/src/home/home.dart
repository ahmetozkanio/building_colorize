import 'package:building_colorize/src/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bina Renklerdirme"),
        ),
        body: Column(
          children: [
            Obx(
              () => ColorFiltered(
                colorFilter: ColorFilter.mode(
                  homeController.color.value,
                  BlendMode.hue,
                ),
                child: Container(
                  color: Colors.white,
                  child: Image.network(
                      "https://evdekorasyontarz.com/wp-content/uploads/2015/06/trend-dis-cephe-boya-renkleri.jpg"),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: ColorPicker(
                      pickerColor: Colors.red, //default color
                      onColorChanged: (Color color) {
                        homeController.color.value = color;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(32.0),
                    child: BlockPicker(
                      pickerColor: Colors.red, //default color
                      onColorChanged: (Color color) {
                        homeController.color.value = color;
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
                                           //      Ahmet Ozkan