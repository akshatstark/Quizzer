import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/Controllers/question_controllers.dart';

import '../../constants.dart';
import '../../models/Questions.dart';
import 'components.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    @required this.question,
  }) : super(key: key);

  final Question question;



  @override
  Widget build(BuildContext context) {
    QuestionController _controller =Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(color: Colors.white30,
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context).
            textTheme.headline6.copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding/2),
          ...List.generate(
              question.options.length,
                  (index) => Option(index: index,
                  text: question.options[index],
                    press: () => _controller.checkAns(question, index),
                  )
          )
        ],
      ),

    );
  }
}