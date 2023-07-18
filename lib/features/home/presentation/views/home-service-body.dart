import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labor/constants.dart';

import '../../../../core/utiliz/assets.dart';
import '../../../../core/utiliz/routes.dart';
import '../../../../core/widgets/custombutton.dart';
import '../../../../core/widgets/customerrormessage.dart';
import '../../../../generated/l10n.dart';
import '../manager/cubit/home_service_cubit.dart';

class HomeServicePageBody extends StatelessWidget {
  const HomeServicePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeServiceCubit, HomeServiceState>(
      builder: (context, state) {
        if (state is HomeServiceSuccess) {
          return Padding(
              padding: (BlocProvider.of<HomeServiceCubit>(context).language ==
                      "English")
                  ? const EdgeInsets.only(top: 113, left: 20)
                  : const EdgeInsets.only(top: 113, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 139,
                    height: 139,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(AssetData.logo),
                  ),
                  const SizedBox(height: 66),
                  Text(
                    S.of(context).homeserviceTitle,
                    style:
                        (BlocProvider.of<HomeServiceCubit>(context).language ==
                                "English")
                            ? GoogleFonts.quicksand(
                                height: 1,
                                fontSize: 48,
                                fontWeight: FontWeight.w700)
                            : const TextStyle(
                                fontFamily: "din-next-lt-w23",
                                height: 1,
                                fontSize: 38,
                                fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 76),
                  Text(S.of(context).selectlanguage,
                      style: (BlocProvider.of<HomeServiceCubit>(context)
                                  .language ==
                              "English")
                          ? GoogleFonts.quicksand(
                              fontSize: 20, fontWeight: FontWeight.w700)
                          : const TextStyle(
                              fontFamily: "din-next-lt-w23",
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                  const SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "English",
                          style: GoogleFonts.quicksand(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Radio(
                            activeColor: kPrimaryColor,
                            value: "English",
                            groupValue:
                                BlocProvider.of<HomeServiceCubit>(context)
                                    .language,
                            onChanged: (value) {
                              BlocProvider.of<HomeServiceCubit>(context)
                                  .language = value!;
                              BlocProvider.of<HomeServiceCubit>(context)
                                  .updatedata(language: value);
                            },
                          ),
                        )
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 1,
                      color: const Color(0xffe9e9e9),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(S.of(context).arabic,
                            style: (BlocProvider.of<HomeServiceCubit>(context)
                                        .language ==
                                    "English")
                                ? GoogleFonts.quicksand(
                                    fontSize: 18, fontWeight: FontWeight.w600)
                                : const TextStyle(
                                    fontFamily: "din-next-lt-w23",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Radio(
                            activeColor: kPrimaryColor,
                            value: S.of(context).arabic,
                            groupValue:
                                BlocProvider.of<HomeServiceCubit>(context)
                                    .language,
                            onChanged: (value) {
                              BlocProvider.of<HomeServiceCubit>(context)
                                  .language = value!;
                              BlocProvider.of<HomeServiceCubit>(context)
                                  .updatedata(language: value);
                            },
                          ),
                        )
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 1,
                      color: const Color(0xffe9e9e9),
                    ),
                  ),
                  const SizedBox(height: 26),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(S.of(context).checkboxtext1,
                            style: (BlocProvider.of<HomeServiceCubit>(context)
                                        .language ==
                                    "English")
                                ? GoogleFonts.quicksand(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xffb6b6b6))
                                : const TextStyle(
                                    fontFamily: "din-next-lt-w23",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffb6b6b6))),
                        Text(S.of(context).checkboxtext2,
                            style: (BlocProvider.of<HomeServiceCubit>(context)
                                        .language ==
                                    "English")
                                ? GoogleFonts.quicksand(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff5FD068))
                                : const TextStyle(
                                    fontFamily: "din-next-lt-w23",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5FD068)))
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding:
                        (BlocProvider.of<HomeServiceCubit>(context).language ==
                                "English")
                            ? const EdgeInsets.only(right: 20)
                            : const EdgeInsets.only(left: 20),
                    child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40)),
                        child: CustomButton(
                          fontSize: 18,
                          backcolor: kPrimaryColor,
                          bottomLeft: 10,
                          bottomRight: 10,
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.kPageView);
                          },
                          text: S.of(context).button,
                          textcolor: Colors.white,
                          topLeft: 10,
                          topRight: 10,
                        )),
                  )
                ],
              ));
        } else if (state is HomeServiceFailure) {
          return CustomErrorMessage(errormessage: state.errormessage);
        } else {
          return Center(
              child: CircularProgressIndicator(
            color: kPrimaryColor,
          ));
        }
      },
    );
  }
}
