import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';
import '../../../../core/utiliz/routes.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/custombutton.dart';
import '../../../../generated/l10n.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  S.of(context).logintitle,
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
                              ? 64
                              : 120),
                  child: Text(
                    S.of(context).loginandregistersubtitle,
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
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(S.of(context).password,
                            style: const TextStyle(
                                fontFamily: "din-next-lt-w23", fontSize: 16)),
                        const SizedBox(height: 8),
                        Customtextformfield(
                          x: false,
                          hinttext: S.of(context).hinttextpassword,
                          suffixicon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove_red_eye_outlined)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kForgetPassPage);
                        },
                        child: Text(
                          S.of(context).forgetpassword,
                          style:
                              (S.of(context).titlepageviewtext == "TextEnglish")
                                  ? GoogleFonts.quicksand(
                                      fontSize: 16, fontWeight: FontWeight.w500)
                                  : const TextStyle(
                                      fontFamily: "din-next-lt-w23",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
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
                              S.of(context).loginbuttontext,
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
                        onPressed: () {},
                        topLeft: 10,
                        topRight: 10,
                      )),
                ),
                const SizedBox(height: 27),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Row(
                    children: [
                      Container(
                        width: 167,
                        height: 2,
                        color: const Color(0xffF9FFF6),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: (S.of(context).titlepageviewtext ==
                                    "TextEnglish")
                                ? 9
                                : 12),
                        child: Text(S.of(context).or),
                      ),
                      Container(
                        width: 167,
                        height: 2,
                        color: const Color(0xffF9FFF6),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
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
                              S.of(context).facebook,
                              style: const TextStyle(
                                  fontFamily: "din-next-lt-w23",
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                            const SizedBox(width: 12),
                            const Icon(
                                IconData(0xe255, fontFamily: 'MaterialIcons')),
                          ],
                        ),
                        backcolor: const Color(0xffDFDFDF),
                        bottomLeft: 10,
                        bottomRight: 10,
                        onPressed: () {},
                        topLeft: 10,
                        topRight: 10,
                      )),
                ),
                const SizedBox(height: 18),
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
                              S.of(context).google,
                              style: const TextStyle(
                                  fontFamily: "din-next-lt-w23",
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                            const SizedBox(width: 12),
                            const Icon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                            ),
                          ],
                        ),
                        backcolor: const Color(0xffDFDFDF),
                        bottomLeft: 10,
                        bottomRight: 10,
                        onPressed: () {},
                        topLeft: 10,
                        topRight: 10,
                      )),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).donthaveaccount,
                      style: (S.of(context).titlepageviewtext == "TextEnglish")
                          ? GoogleFonts.quicksand(
                              fontSize: 16, fontWeight: FontWeight.w500)
                          : const TextStyle(
                              fontFamily: "din-next-lt-w23",
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kRegisterPage);
                      },
                      child: Text(
                        S.of(context).SignUp,
                        style:
                            (S.of(context).titlepageviewtext == "TextEnglish")
                                ? GoogleFonts.quicksand(
                                    fontSize: 16, fontWeight: FontWeight.w700)
                                : const TextStyle(
                                    fontFamily: "din-next-lt-w23",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
