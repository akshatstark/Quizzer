import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Controllers/question_controllers.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 35,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Color(0xFF3F4768),width: 3)
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
           // print(controller.animationController.value);
          return Stack(
            children: [
              LayoutBuilder(builder: (context,constraints)=> Container(
                width: constraints.maxWidth* controller.animationController.value,
                decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.circular(50)

                ),
              )
              ),
              Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${(controller.animationController.value*60).round()} sec"),
                        WebsafeSvg.asset("assets/icons/clock.svg")
                      ],
                    ),
                  )
              )
            ],
          );
        }
      ),
    );
  }
}