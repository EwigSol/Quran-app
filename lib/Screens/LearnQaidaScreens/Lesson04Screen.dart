import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:quranapp/Model/firebasefile.dart';
import 'package:quranapp/Model/lesson.dart';
import 'package:quranapp/Utilities/SliverWidgets.dart';
import 'package:quranapp/Utilities/constants.dart';
import 'package:quranapp/Widgets/CustomWordCard.dart';
import 'package:quranapp/controllers/lesson04_controller.dart';
import 'package:quranapp/firebaseApi/firebaseApi.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import "dart:core";

class Lesson04Screen extends StatefulWidget {
  final LessonModel lessonModel;

  const Lesson04Screen({Key key, this.lessonModel}) : super(key: key);

  @override
  State<Lesson04Screen> createState() => _Lesson04ScreenState();
}

class _Lesson04ScreenState extends State<Lesson04Screen> {
  Future<List<FirebaseFile>> files;
  Future<List<FirebaseFile>> sounds;
  Future<List<FirebaseFile>> instructions;
  GlobalKey _one = GlobalKey();
  //final box = Hive.box(DB_lesson);

  @override
  void initState() {
    // box.put(DB_Current_Page_Lesson, widget.lessonModel.lessonNo);
    Get.put(Lesson04Controller());
    sounds = FirebaseApi.listAll('sound4/');
    files = FirebaseApi.listAll('text4/');
    instructions = FirebaseApi.listAll('instruction4/');

    super.initState();
  }

  @override
  void dispose() {
    Get.find<Lesson04Controller>().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      blurValue: 1,
      autoPlay: false,
      autoPlayDelay: Duration(seconds: 3),
      autoPlayLockEnable: false,
      onStart: (ind, key) {
        print("index=> $ind key=> $key");
      },
      onComplete: (index, key) {
        print("index=> $index key=> $key");
      },
      builder: Builder(builder: (context) {
        // if (!box.containsKey(widget.lessonModel.lessonNo))
        //   WidgetsBinding.instance.addPostFrameCallback(
        //       (_) => ShowCaseWidget.of(context).startShowCase([_one]));
        return SafeArea(
          child: Scaffold(
              floatingActionButton: Showcase(
                description: "Instruction",
                key: _one,
                child: Obx(() {
                  final controller = Get.find<Lesson04Controller>();
                  return FloatingActionButton(
                    onPressed: () async {
                      // if (!box.containsKey(widget.lessonModel.lessonNo)) {
                      //   box.put(widget.lessonModel.lessonNo, true);
                      //   controller.updateCanDissmisse(false);
                      // } else
                      //   controller.updateCanDissmisse(true);

                      await showDialog(
                        context: context,
                        barrierDismissible: controller.canDissmisse.value,
                        barrierColor: kGreenColor.withOpacity(0.3),
                        builder: (builder) {
                          return WillPopScope(
                            onWillPop: () async =>
                                controller.canDissmisse.value,
                            child: AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              // insetPadding: EdgeInsets.symmetric(horizontal: 20),
                              titlePadding:
                                  EdgeInsets.symmetric(horizontal: 15),
                              content: FutureBuilder<List<FirebaseFile>>(
                                  future: instructions,
                                  builder: (BuildContext context,
                                      AsyncSnapshot snapshot) {
                                    if (snapshot.hasError) {
                                      return Center(
                                          child: Text('Some error occurred!'));
                                    } else {
                                      final instruction = snapshot?.data;
                                      // print(instructions[0].url);
                                      return Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.api_outlined),
                                                Icon(Icons.api_outlined),
                                                Icon(Icons.api_outlined),
                                                Icon(Icons.api_outlined),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: ListView.builder(
                                                itemCount: instruction.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  //  print(files[index].url);
                                                  // print(FirebaseApi.);
                                                  return Container(
                                                    height: 150,
                                                    width: 500,
                                                    child: SvgPicture.network(
                                                        instruction[index].url),
                                                  );
                                                }),
                                          ),

                                          // Icon(Icons.api_outlined),
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.api_outlined),
                                                Icon(Icons.api_outlined),
                                                Icon(Icons.api_outlined),
                                                Icon(Icons.api_outlined),
                                              ],
                                            ),
                                          )
                                        ],
                                      );
                                    }
                                  }),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    controller.canDissmisse.value
                                        ? Text("")
                                        : CircularCountDownTimer(
                                            duration:
                                                controller.canDissmisse.value
                                                    ? 5
                                                    : 5,
                                            initialDuration: 0,
                                            controller: CountDownController(),
                                            width: 40,
                                            height: 40,
                                            ringColor: Colors.grey[300],
                                            ringGradient: null,
                                            fillColor: kGreenColor,
                                            fillGradient: null,
                                            backgroundColor: kGreenColor,
                                            backgroundGradient: null,
                                            strokeWidth: 3.0,
                                            strokeCap: StrokeCap.round,
                                            textStyle: TextStyle(
                                                fontSize: 33.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            textFormat: CountdownTextFormat.S,
                                            isReverse: false,
                                            isReverseAnimation: false,
                                            isTimerTextShown: true,
                                            autoStart: true,
                                            onStart: () {
                                              print('Countdown Started');
                                            },
                                            onComplete: () {
                                              print('Countdown Ended');
                                              Get.find<Lesson04Controller>()
                                                  .updateCanDissmisse(true);
                                              Get.back();
                                            },
                                          ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    backgroundColor: controller.canDissmisse.value
                        ? kGreenColor
                        : kGreenColor,
                    child: Icon(
                      CupertinoIcons.info,
                      color: Colors.yellow,
                      size: 40,
                    ),
                  );
                }),
              ),
              body: FutureBuilder(
                  future: Future.wait([files, sounds]),
                  builder: (BuildContext context, AsyncSnapshot fsnapshot) {
                    if (fsnapshot.hasError) {
                      return Container(
                        child: Center(
                          child: Text(fsnapshot.error.toString()),
                        ),
                      );
                    }
                    if (fsnapshot.hasData) {
                      return Directionality(
                        textDirection: TextDirection.rtl,
                        child: CustomScrollView(
                          slivers: <Widget>[
                            ///First sliver is the App Bar
                            SliverAppBar(
                              backgroundColor: kGreenLightColor,
                              title: MyAppBar(
                                Icon(
                                  Icons.ac_unit,
                                  size: 25,
                                ),
                                () {},
                              ),
                              pinned: true,
                              expandedHeight: 300,
                              flexibleSpace: FlexibleSpaceBar(
                                background: MyFlexibleAppBar(
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 19.0),
                                    child: Image.asset(
                                      'assets/images/bismillah.png',
                                      width: 190,
                                      height: 120,
                                    ),
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/texture/lessonTexture.png',
                                        width: 280,
                                      ),
                                      SvgPicture.network(
                                          fsnapshot.data[0][0].url),
                                      // Text(

                                      //   // '${widget.lessonModel.title_eng} - ${widget.lessonModel.title_ar}',
                                      //   style: TextStyle(
                                      //     fontSize: 16,
                                      //     fontWeight: FontWeight.bold,
                                      //     color: kGoldenColor,
                                      //   ),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            SliverGrid(
                              //  spacing: 7,
                              // runSpacing: 04,
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  // print(fsnapshot.data[0][0].url);
                                  return CustomWordCard(
                                      word:
                                          "https://firebasestorage.googleapis.com/v0/b/shafique-academy.appspot.com/o/text4%2F${index + 1}.svg?alt=media&token=473ae9b5-7eed-4c76-9953-1a1ff2406110",
                                      // fsnapshot.data[0][index + 1].url
                                      // "https://firebasestorage.googleapis.com/v0/b/shafique-academy.appspot.com/o/text7%2F${index + 1}.svg?alt=media&token=c040204d17-0041d-4cbb-046046-0476520720b044",
                                      // subWord: sounds[index].url,
                                      soundPath:
                                          "https://firebasestorage.googleapis.com/v0/b/shafique-academy.appspot.com/o/sound4%2FL4%20${index + 1}.wav?alt=media&token=32744048-6a6f-4a52-8423-f8c29238debf");
                                },
                                childCount: fsnapshot.data[0]?.length - 1,
                              ),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 11,
                                crossAxisSpacing: 5,
                                childAspectRatio: 1.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return Center(
                      child: Container(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  })),
        );
      }),
    );
  }
}
