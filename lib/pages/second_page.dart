import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/list_controller.dart';

import '../controllers/tap_controller.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    ListController listController = Get.put(ListController());
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back_ios_new, color: Colors.black54,),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<TapController>(
                builder: (_) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff69dad0),
                    ),
                    child: Center(
                      child: Text(controller.z.toString(), style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  );
                },
              ),
              GestureDetector(
                onTap: (){
                  controller.increaseY();
                },
                child: GetBuilder<TapController>(builder: (_){
                  return Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("Increase Y ${controller.y}", style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  );
                },)
              ),
              GestureDetector(
                onTap: (){
                  controller.sumXY();
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text("Sum X & Y ", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  listController.savedList(controller.z);
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text("Save Sum", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  listController.clearList();
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text("Clear List", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
