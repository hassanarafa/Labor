import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';
import '../../../../core/utiliz/routes.dart';
import '../../../../core/widgets/customtextformfield.dart';
import '../../../../core/widgets/custombutton.dart';
import '../../../../generated/l10n.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 102),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  S.of(context).forgetpasspagetitle,
                  style: (S.of(context).titlepageviewtext == "TextEnglish")
                      ? GoogleFonts.quicksand(
                          fontSize: 28, fontWeight: FontWeight.w700)
                      : const TextStyle(
                          fontFamily: "din-next-lt-w23",
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 14),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          (S.of(context).titlepageviewtext == "TextEnglish")
                              ? 110
                              : 130),
                  child: Text(
                    S.of(context).forgetpasspagesubtitle,
                    style: (S.of(context).titlepageviewtext == "TextEnglish")
                        ? GoogleFonts.quicksand(
                            color: const Color(0xffB5B5B5),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)
                        : const TextStyle(
                            color: Color(0xffB5B5B5),
                            fontFamily: "din-next-lt-w23",
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(S.of(context).phone,
                            style: const TextStyle(
                                fontFamily: "din-next-lt-w23", fontSize: 16)),
                        const SizedBox(height: 8),
                        Customtextformfield(
                          x: false,
                          hinttext: S.of(context).hinttextphone,
                          suffixicon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.phone_outlined)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 46),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      child: CustomButton(
                        buttonContent: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              S.of(context).resetpassword,
                              style: const TextStyle(
                                  fontFamily: "din-next-lt-w23",
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        backcolor: kPrimaryColor,
                        bottomLeft: 10,
                        bottomRight: 10,
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.kResetPassPage);
                        },
                        topLeft: 10,
                        topRight: 10,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
