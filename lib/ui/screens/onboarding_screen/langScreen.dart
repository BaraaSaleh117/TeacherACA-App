import 'package:eschool_teacher/app/routes.dart';
import 'package:eschool_teacher/cubits/appLocalizationCubit.dart';
import 'package:eschool_teacher/data/models/appLanguage.dart';
import 'package:eschool_teacher/ui/screens/onboarding_screen/onboarding_screen.dart';
import 'package:eschool_teacher/ui/styles/colors.dart';
import 'package:eschool_teacher/ui/widgets/onboarding_parts.dart';
import 'package:eschool_teacher/ui/widgets/onboarding_selected_page.dart';
import 'package:eschool_teacher/utils/appLanguages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class LangScreen extends StatefulWidget {
  const LangScreen({Key? key}) : super(key: key);

  @override
  _LangScreenState createState() => _LangScreenState();
}

class _LangScreenState extends State<LangScreen> {
  late PageController _pageController;
  int _selectedPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Expanded(flex:2,child: Image.asset('assets/images/2.png',)),
            Expanded(
                child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 45),
                    primary: primaryColor,
                  ) ,
                    onPressed: () {
                      context
                          .read<AppLocalizationCubit>()
                          .changeLanguage(AppLanguage(languageCode: 'ur', languageName: 'العربية').languageCode);

                      Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
                        return OnBoardingScreen();
                      }));
                    }, child: Text('العربية')),
                SizedBox(height: 15,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45),
                      primary: primaryColor,
                    ) ,
                    onPressed: () {
                      context
                          .read<AppLocalizationCubit>()
                          .changeLanguage(AppLanguage(languageCode: 'en', languageName: 'English').languageCode);
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
                        return OnBoardingScreen();
                      }
                      ));
                    }, child: Text('English')),
              ],
            )),
          ],
        ),
      ),
    ));
  }
}
