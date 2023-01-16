import 'dart:convert';
import 'dart:ui';
import 'assets/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'assets/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  List info = [];
  loadData() async {
    await Future.delayed(const Duration(seconds: 0));
    final infoJSON = await rootBundle.loadString("json/info.json");
    info = await jsonDecode(infoJSON);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Training",
                    textScaleFactor: 2.2,
                    style: TextStyle(
                      color: AppColor.homePageTitle,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(Icons.arrow_back_ios, color: AppColor.homePageIcons),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.calendar_today_outlined,
                      color: AppColor.homePageIcons),
                  const SizedBox(
                    width: 14,
                  ),
                  Icon(Icons.arrow_forward_ios, color: AppColor.homePageIcons),
                ],
              ),
              const SizedBox(
                height: 27,
              ),
              Row(
                children: [
                  Text(
                    "Your Program",
                    textScaleFactor: 1.5,
                    style: TextStyle(
                      color: AppColor.homePageSubtitle,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "Details",
                    textScaleFactor: 1.3,
                    style: TextStyle(
                      color: AppColor.homePageDetail,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () =>
                        {Navigator.pushNamed(context, MyRoutes.videoRoute)},
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColor.homePageIcons,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 230,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      AppColor.gradientFirst.withOpacity(0.8),
                      AppColor.gradientSecond.withOpacity(0.9)
                    ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(90),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(5, 10),
                          color: AppColor.gradientSecond.withOpacity(0.2),
                          blurRadius: 20),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 25, left: 20, right: 25, bottom: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Next Workout",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              color: AppColor.homePageContainerTextSmall),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Legs Toning",
                          textScaleFactor: 1.9,
                          style: TextStyle(
                              color: AppColor.homePageContainerTextSmall),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "and Glutes Workout",
                          textScaleFactor: 1.9,
                          style: TextStyle(
                              color: AppColor.homePageContainerTextSmall),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.timer_outlined,
                                  color: AppColor.homePageContainerTextSmall,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "60 min",
                                  textScaleFactor: 0.85,
                                  style: TextStyle(
                                      color:
                                          AppColor.homePageContainerTextSmall),
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: const Offset(4, 4),
                                        color: AppColor.gradientFirst
                                            .withOpacity(0.8),
                                        blurRadius: 10)
                                  ]),
                              child: const Icon(
                                Icons.play_circle_fill,
                                color: Colors.white,
                                size: 60,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                      ),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: const DecorationImage(
                              image: AssetImage(
                                "Images/card.png",
                              ),
                              fit: BoxFit.fill),
                          boxShadow: [
                            BoxShadow(
                                color: AppColor.gradientSecond.withOpacity(0.7),
                                blurRadius: 25,
                                offset: const Offset(3, -5))
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 50, left: 28),
                      height: MediaQuery.of(context).size.height * 0.36,
                      width: MediaQuery.of(context).size.width * 0.27,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                              "Images/figure.png",
                            ),
                            fit: BoxFit.contain),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 45, left: 140),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You are doing great",
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                color: AppColor.homePageDetail,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.homePagePlanColor,
                                    ),
                                    children: const [
                                  TextSpan(text: "Keep it up \n"),
                                  TextSpan(text: "Stick to your plan"),
                                ]))
                            // Text(
                            //   "Keep it up",
                            //   textScaleFactor: 1.1,
                            //   style: TextStyle(
                            //     color: AppColor.homePagePlanColor,
                            //   ),
                            // ),
                            // const SizedBox(
                            //   height: 4,
                            // ),
                            // Text(
                            //   "Stick to your plan",
                            //   textScaleFactor: 1.1,
                            //   style: TextStyle(
                            //     color: AppColor.homePagePlanColor,
                            //   ),
                            // ),
                          ],
                        ))
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Area of Focus",
                    textScaleFactor: 1.45,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.homePageTitle,
                    ),
                  )
                ],
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Expanded(
                  child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: info.length ~/ 2,
                    itemBuilder: (BuildContext context, index) {
                      return Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                right: 30, bottom: 20, left: 20, top: 10),
                            height: MediaQuery.of(context).size.height * 0.19,
                            width: MediaQuery.of(context).size.width * 0.4,
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(info[2 * index]['img']),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: const Offset(5, 5),
                                  color:
                                      AppColor.gradientSecond.withOpacity(0.23),
                                ),
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: const Offset(-5, -5),
                                  color:
                                      AppColor.gradientSecond.withOpacity(0.23),
                                )
                              ],
                            ),
                            child: Center(
                                child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[2 * index]['title'],
                                textScaleFactor: 1.2,
                                style: TextStyle(
                                  color: AppColor.homePageDetail,
                                ),
                              ),
                            )),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20, top: 10),
                            height: MediaQuery.of(context).size.height * 0.19,
                            width: MediaQuery.of(context).size.width * 0.4,
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(info[2 * index + 1]['img']),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: const Offset(5, 5),
                                  color:
                                      AppColor.gradientSecond.withOpacity(0.23),
                                ),
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: const Offset(-5, -5),
                                  color:
                                      AppColor.gradientSecond.withOpacity(0.23),
                                )
                              ],
                            ),
                            child: Center(
                                child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[2 * index + 1]['title'],
                                textScaleFactor: 1.2,
                                style: TextStyle(
                                  color: AppColor.homePageDetail,
                                ),
                              ),
                            )),
                          )
                        ],
                      );
                    }),
              ))
            ],
          ),
        ),
      )),
    );
  }
}
