import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/Controllers/question_controllers.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          WebsafeSvg.asset("assets/icons/bg.svg" , fit: BoxFit.fill , width: 420),
          Column(
            children: [
          Spacer(flex: 3,),
          Text("Score",
          style: Theme.of(context).
          textTheme.
          headline2.
          copyWith(color: kSecondaryColor)),
            Spacer(),
              Text("${_questionController.numOfCorrectAns*10}/${_questionController.questions.length*10}",
                  style: Theme.of(context).
                  textTheme.
                  headline4.
                  copyWith(color: kSecondaryColor),),
              Spacer(flex:3),
              InkWell(
                onTap: ()=> Get.to(WelcomeScreen()),
                child: Container(
                  width: 200,
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration( borderRadius: BorderRadius.circular(80),
                    border: Border.all( color: Colors.grey),
                      //color: kSecondaryColor
                    ),
                  child: Row(

                  ),
                  ),
                )

          ]
          )
        ],
      ),
    );
  }
}
