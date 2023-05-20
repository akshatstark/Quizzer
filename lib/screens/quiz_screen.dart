import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/Controllers/question_controllers.dart';

import 'Components/components.dart';

import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuizScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    QuestionController _controller= Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar:true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 5,
        actions: [
          TextButton(onPressed: _controller.nextQuestion, child: Text("Skip"))
        ],
      ),
      body: Body(),
    );


  }
}


