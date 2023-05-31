import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
              WebsafeSvg.asset("assets/icons/bg.svg",fit: BoxFit.fill,width: 420),
          SafeArea(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Spacer(flex: 2),
            Text("Lets Play a Quiz,",style: Theme.of(context)
                .textTheme.headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,

            ),
            Text("AWS Practice Quiz"),
            Spacer(),
            TextField(decoration: InputDecoration(
                filled:true,
                fillColor: Color(0xFF1C2341),
                hintText: "Your Name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            )
            ),
            ),
                Spacer(),
            InkWell(
              onTap: () => Get.to(QuizScreen()),
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(gradient: kPrimaryGradient,
                            borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Text("Lets Start Quiz",style: Theme.of(context)
                    .textTheme.button
                    .copyWith(color: Colors.white),)
              ),
            ),
                Spacer(flex: 2,),
        ]),
          )
          ),
      ]
    )
      );
  }
}
