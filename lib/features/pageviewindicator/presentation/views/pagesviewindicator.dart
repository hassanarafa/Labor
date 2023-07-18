import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labor/features/pageviewindicator/presentation/views/widgets/BoardBuildingItem.dart';
import 'package:labor/generated/l10n.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants.dart';
import '../../../../core/utiliz/routes.dart';
import '../../../../core/widgets/custombutton.dart';

class PsgeView extends StatefulWidget {
  const PsgeView({super.key});

  @override
  State<PsgeView> createState() => _PsgeViewState();
}

class _PsgeViewState extends State<PsgeView> {
  var boardcontroller = PageController();
  bool islast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(18.01),
      child: Column(
        children: [
          SizedBox(
            height: 699,
            child: PageView.builder(
                controller: boardcontroller,
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                onPageChanged: (int index) {
                  if (index == 2) {
                    setState(() {
                      islast = true;
                    });
                    print(islast);
                  } else {
                    setState(() {
                      islast = false;
                      print(islast);
                    });
                  }
                },
                itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 124),
                        BoardBuildingItem(image: x[index]),
                        const SizedBox(height: 57),
                        Text(
                            (S.of(context).titlepageviewtext == "TextArabic")
                                ? titlepageviewtextArabic[index]
                                : titlepageviewtextEnglish[index],
                            style: (S.of(context).titlepageviewtext ==
                                    "TextEnglish")
                                ? GoogleFonts.quicksand(
                                    fontSize: 34, fontWeight: FontWeight.w500)
                                : const TextStyle(
                                    fontFamily: "din-next-lt-w23",
                                    fontSize: 34,
                                    fontWeight: FontWeight.w500)),
                        const SizedBox(height: 29),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            (S.of(context).subtitlepageviewtext == "TextArabic")
                                ? subtitlepageviewtextArabic[index]
                                : subtitlepageviewtextEnglish[index],
                            style: (S.of(context).titlepageviewtext ==
                                    "TextEnglish")
                                ? GoogleFonts.quicksand(
                                    fontSize: 16, fontWeight: FontWeight.w500)
                                : const TextStyle(
                                    fontFamily: "din-next-lt-w23",
                                    color: Color(0xff808080),
                                    height: 1.5,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    )),
          ),
          SmoothPageIndicator(
              controller: boardcontroller,
              count: 3,
              axisDirection: Axis.horizontal,
              effect: const ExpandingDotsEffect(
                  dotColor: Color(0xffD9D9D9),
                  activeDotColor: Color(0xffF5DF99))),
          const SizedBox(height: 50),
          Container(
              width: double.infinity,
              height: 60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
              child: CustomButton(
                buttonContent: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      (islast == true)
                          ? S.of(context).button
                          : S.of(context).buttonpageview,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                backcolor: kPrimaryColor,
                bottomLeft: 10,
                bottomRight: 10,
                onPressed: () {
                  if (islast == true) {
                    print("done");
                    GoRouter.of(context).push(AppRouter.kLoginPage);
                  } else {
                    boardcontroller.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.fastLinearToSlowEaseIn);
                  }
                },
                topLeft: 10,
                topRight: 10,
              )),
        ],
      ),
    ));
  }
}
