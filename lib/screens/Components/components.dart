// TODO Implement this library.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/Controllers/question_controllers.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/Components/progress-bar.dart';
import 'package:quiz_app/screens/Components/question_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController=Get.put(QuestionController());
    return Stack(
      children: [
        WebsafeSvg.asset("assets/icons/bg.svg",fit: BoxFit.fill,width: 420),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height:kDefaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                    () => Text.rich(
                        TextSpan(
                            text:
                            "Question ${_questionController.questionNumber}",
                            style: Theme.of(context).
                            textTheme.headline4.copyWith(color: kSecondaryColor),
                            children: [
                              TextSpan(
                                  text: "/${_questionController.questions.length}",
                                  style: Theme.of(context).
                                  textTheme.headline5.copyWith(color: kSecondaryColor)
                              ),
                            ],
                        ),
                    ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(child:
              PageView.builder(
                controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum ,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index],
                  )
              ),
              ),
            ],
          ),
        )
      ],
    );
  }
}





