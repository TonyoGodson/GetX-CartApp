import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_controller.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Total",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),
          ),
            Text("${controller.total}",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),
          )
        ],),
      ),
    );
  }
}
