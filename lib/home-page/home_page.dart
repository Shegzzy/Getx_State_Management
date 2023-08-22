import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/tap_controller.dart';
import 'package:getx_state_management/pages/first_page.dart';
import 'package:getx_state_management/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<TapController>(builder: (_){
                  return Container(
                  margin: const EdgeInsets.all(10),
                  height: 50,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff69dad0),
                  ),
                  child: Center(
                  child: Text(controller.x.toString(), style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  ),
                  ),
                  ),
                  );
                }),
                GestureDetector(
                  onTap: (){
                    controller.increase();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: const Center(
                      child: Text("Increase The Value", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(() => const FirstPage());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: const Center(
                      child: Text("To First Page", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(() => const SecondPage());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: const Center(
                      child: Text("Second Page", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
