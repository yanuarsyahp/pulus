// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';
import 'package:pulus/features/auth/sign%20in/screen/signIn_view.dart';
import 'package:pulus/features/onboarding/widget/onboarding_dot.dart';
import 'package:pulus/widgets/widgets.dart';
import '../widget/onboarding_content.dart';
import '../widget/onboarding_model.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    itemCount: data.length,
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    itemBuilder: (context, index) => OnboaringContent(
                          image: data[index].image,
                          title: data[index].title,
                          desc: data[index].desc,
                        )),
              ),
              SizedBox(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        data.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: DotIndicator(
                                isActive: index == _currentPage,
                              ),
                            )),
                  ],
                ),
              ),
              _currentPage == 2
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 51),
                      child: PrimaryButton(
                          text: 'Start now',
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => SignInView()));
                          }))
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(71, 0, 71, 65),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _pageController.animateToPage(2,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                  fontSize: 16, color: AppColor.primaryColor),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            child: Image.asset(
                              'assets/images/btn_nextCircle.png',
                              height: 38,
                              width: 38,
                            ),
                          )
                        ],
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
