import 'package:flutter/material.dart';
import 'assets/colors.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.gradientFirst.withOpacity(0.85),
              AppColor.gradientSecond,
            ],
            begin: const FractionalOffset(0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                        color: AppColor.secondPageIconColor,
                      ),
                    ),
                    Icon(
                      Icons.info_outline,
                      size: 20,
                      color: AppColor.secondPageIconColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Legs Toning",
                  textScaleFactor: 1.9,
                  style: TextStyle(color: AppColor.homePageContainerTextSmall),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "and Glutes Workout",
                  textScaleFactor: 1.9,
                  style: TextStyle(color: AppColor.homePageContainerTextSmall),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.width * 0.057,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            AppColor.secondPageContainerGradient1stColor,
                            AppColor.secondPageContainerGradient2ndColor
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                            textScaleFactor: 1,
                            style: TextStyle(
                                color: AppColor.homePageContainerTextSmall),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.58,
                      height: MediaQuery.of(context).size.width * 0.057,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            AppColor.secondPageContainerGradient1stColor,
                            AppColor.secondPageContainerGradient2ndColor
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.handyman_outlined,
                            color: AppColor.homePageContainerTextSmall,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Resistance Band, Kettlebells",
                            textScaleFactor: 1,
                            style: TextStyle(
                                color: AppColor.homePageContainerTextSmall),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: OverflowBox(
                    maxWidth: MediaQuery.of(context).size.width,
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 30, left: 20, right: 25),
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(70),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Circuit 1: Legs Toning",
                                textScaleFactor: 1.45,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.homePageTitle,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Icon(
                                Icons.loop_outlined,
                                color: AppColor.loopColor,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "3 sets",
                                style: TextStyle(
                                  color: AppColor.setsColor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
