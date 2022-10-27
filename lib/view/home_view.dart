import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_calulator/controller/home_controller.dart';
import 'package:simple_calulator/widgets/build_button.dart';


class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Obx(() =>  Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 160, 10, 0),
            child: Text(controller.equation.value, style:TextStyle(fontSize: controller.equationFontSize.value,color: Colors.grey),),
          )),

         Obx(() => Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10,10, 10, 0),
            child: Text(controller.result.value, style: TextStyle(fontSize: controller.resultFontSize.value,color: Colors.grey),),
          )),

         const Expanded(child: Divider()),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.50,
                child: Table(
                  children:  [
                    TableRow(
                      children:[
                       BuildButton(buttonText: "C", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor: Colors.redAccent),
                       BuildButton(buttonText: "", buttonHeight: 1, buttonColor: const Color(0xffffffff),buttonTextColor:  Colors.grey),
                       BuildButton(buttonText: "⌫", buttonHeight: 1, buttonColor: const Color(0xffffffff),buttonTextColor: Colors.teal),
                      ]
                    ),

                    TableRow(
                        children:[
                          BuildButton(buttonText: "7", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                          BuildButton(buttonText: "8", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                          BuildButton(buttonText: "9", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                        ]
                    ),

                    TableRow(
                        children:[
                          BuildButton(buttonText: "4", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                          BuildButton(buttonText: "5", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                          BuildButton(buttonText: "6", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                        ]
                    ),

                    TableRow(
                        children:[
                          BuildButton(buttonText: "1", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                          BuildButton(buttonText: "2", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                          BuildButton(buttonText: "3", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                        ]
                    ),
                    TableRow(
                        children:[
                          BuildButton(buttonText: "", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                          BuildButton(buttonText: "0", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                          BuildButton(buttonText: ".", buttonHeight: 1, buttonColor: Colors.white,buttonTextColor:  Colors.grey),
                        ]
                    ),
                  ],
                ),

              ),

              SizedBox(
                width: MediaQuery.of(context).size.width  * 0.20,
                height: MediaQuery.of(context).size.height * 0.50,
                child: Table(
                  children: [
                    TableRow(
                        children:[ BuildButton(buttonText: '÷', buttonHeight: 1, buttonColor: const Color(
                            0xffffffff),buttonTextColor: Colors.teal),
                        ]),
                    TableRow(
                      children:[ BuildButton(buttonText: '×', buttonHeight: 1, buttonColor: const Color(0xffffffff),buttonTextColor: Colors.teal),
                    ]),

                    TableRow(
                        children:[ BuildButton(buttonText: '-', buttonHeight: 1, buttonColor: const Color(0xffffffff),buttonTextColor: Colors.teal),
                        ]),

                    TableRow(
                        children:[ BuildButton(buttonText: '+', buttonHeight: 1, buttonColor: const Color(0xffffffff),buttonTextColor: Colors.teal),
                        ]),

                    TableRow(
                        children:[ BuildButton(buttonText: '=', buttonHeight: 1, buttonColor: Colors.teal,buttonTextColor: Colors.teal),
                        ]),

                  ],
                ),
              )

            ],
          )

        ],
      ),
    );
  }
}
