import 'package:flutter/material.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson01Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson03Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson04Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson05Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson06Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson07Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson08Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson09Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson10Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson11Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson12Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson13Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson14Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson15Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson16Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson17Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson18Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson19Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson20Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson21Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson22Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson23Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson24Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson25Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson26Screen.dart';
import 'package:quranapp/Screens/LearnQaidaScreens/Lesson27Screen.dart';
import 'package:quranapp/Widgets/CustomLessonListTile.dart';
import '../Screens/LearnQaidaScreens/Lesson02Screen.dart';
import 'LessonsContentList/listLesson01.dart';

final List<Widget> qaidaLessons = [
  CustomLessonListTile(
    screenName: Lesson01Screen(lessonModel: lessonDetails.first),
    lessonNo: '01',
    lessonNoU: '??',
  ),
  CustomLessonListTile(
    screenName: Lesson02Screen(
      lessonModel: lessonDetails[1],
    ), // 02 to 01 for testing
    lessonNo: '02',
    lessonNoU: '??',
  ),
  CustomLessonListTile(
    screenName: Lesson03Screen(lessonModel: lessonDetails[2]),
    lessonNo: '03',
    lessonNoU: '??',
  ),
  CustomLessonListTile(
    screenName: Lesson04Screen(lessonModel: lessonDetails[3]),
    lessonNo: '04',
    lessonNoU: '??',
  ),
  CustomLessonListTile(
    screenName: Lesson05Screen(lessonModel: lessonDetails[4]),
    lessonNo: '05',
    lessonNoU: '??',
  ),
  CustomLessonListTile(
    screenName: Lesson06Screen(lessonModel: lessonDetails[5]),
    lessonNo: '06',
    lessonNoU: '??',
  ),
  CustomLessonListTile(
    screenName: Lesson07Screen(lessonModel: lessonDetails[6]),
    lessonNo: '07',
    lessonNoU: '??',
  ),
  CustomLessonListTile(
    screenName: Lesson08Screen(lessonModel: lessonDetails[7]),
    lessonNo: '08',
    lessonNoU: '??',
  ),
  CustomLessonListTile(
    screenName: Lesson09Screen(lessonModel: lessonDetails[8]),
    lessonNo: '09',
    lessonNoU: '??',
  ),
  CustomLessonListTile(
    screenName: Lesson10Screen(),
    lessonNo: '10',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson11Screen(),
    lessonNo: '11',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson12Screen(),
    lessonNo: '12',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson13Screen(),
    lessonNo: '13',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson14Screen(),
    lessonNo: '14',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson15Screen(),
    lessonNo: '15',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson16Screen(),
    lessonNo: '16',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson17Screen(),
    lessonNo: '17',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson18Screen(),
    lessonNo: '18',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson19Screen(),
    lessonNo: '19',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson20Screen(),
    lessonNo: '20',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson21Screen(),
    lessonNo: '21',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson22Screen(),
    lessonNo: '22',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson23Screen(),
    lessonNo: '23',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson24Screen(),
    lessonNo: '24',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson25Screen(),
    lessonNo: '25',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson26Screen(),
    lessonNo: '26',
    lessonNoU: '????',
  ),
  CustomLessonListTile(
    screenName: Lesson27Screen(),
    lessonNo: '27',
    lessonNoU: '????',
  ),
];
