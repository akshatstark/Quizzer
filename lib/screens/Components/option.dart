
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:quiz_app/Controllers/question_controllers.dart';

import '../../constants.dart';

class Option extends StatelessWidget {
  const Option({
    Key key, this.text, this.index, this.press,
  }) : super(key: key);

  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (qnController) {

        Color getTheRightColor() {
          if(qnController.isAnswered){
            if(index==qnController.correctAns){
              return kGreenColor;
            }
            else if(index==qnController.selectedAns &&
                qnController.selectedAns != qnController.correctAns){
              return kRedColor;
            }
          }
          return kGrayColor;
        }

        IconData getTheRightIcon() {
          return getTheRightColor() == kRedColor? Icons.close:Icons.done;
        }


        return InkWell(

          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            padding: EdgeInsets.all(kDefaultPadding/2),
            decoration: BoxDecoration(
               // color: getTheRightColor() == kGrayColor? Colors.transparent:(getTheRightColor().withOpacity(20)),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: getTheRightColor())
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Container(
              child: Text(
                "${index+1}. $text",
                style: TextStyle(fontSize: 15,color: getTheRightColor()),
              ),
                )
                ),
                Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                          color: getTheRightColor() == kGrayColor? Colors.transparent:getTheRightColor(),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: getTheRightColor())
                      ),
                      child: Icon(getTheRightIcon(), size: 16,),
                    )
              ],
            ),
          ),
        );
      }
    );
  }
}