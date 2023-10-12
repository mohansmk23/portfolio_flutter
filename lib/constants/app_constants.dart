import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget_barrel.dart';

const Color BANNER_BG_COLOR = Color(0xFFECF0FF);
const String BANNER_PERSON_NAME = 'MohanKumar S';
const String TITLE_PERSON_NAME = 'MohanKumar';

const String PORTFOLIO_IMG = 'assets/portfolio_img2.jpg';
const List<String> DESIGNATIONS = [
  'Flutter Developer.',
  'Android Developer.',
];

const String ABOUT_ME_DESC =
    'Passionately curious developer with 5+ years of extensive experience in building, integrating, testing and supporting cutting edge mobile applications ';

const String DOWNLOAD_CV_URL =
    'https://drive.google.com/uc?export=download&id=1aNLxPB5PW7fiKP-JWZJwVJTsex61MmWN';

const List<String> ABOUT_ME_LABELS = [
  'Name:',
  'Date of Birth:',
  'Address:',
  'Zip code:',
  'Email:',
  'Phone:',
];

const List<String> ABOUT_ME_VALUES = [
  'MohanKumar',
  'September 23, 1995',
  'Ernavoor, Chennai',
  '600057',
  'mohan.smk23@outlook.com',
  '+9941239463',
];

const PROJECT_COMPLETE_COUNT = '25+';

TextStyle kAboutMeValuesStyle =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey);

TextStyle kAboutMeLabelsTextStyle =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w600);

const List<String> kSkillsAssets = [
  'assets/microsoft.png',
  'assets/android.png',
  'assets/java.png',
  'assets/google.png',
  'assets/flutter.png',
  'assets/medium.png',
];

const List<String> kWorksAssets = [
  'assets/ss21.png',
  'assets/ss15.png',
  'assets/ss20.png',
  'assets/ss19.png',
  'assets/ss18.png',
  'assets/ss17.png',
  'assets/ss16.png',
  'assets/ss1.png',
  'assets/ss2.png',
  'assets/ss3.png',
  'assets/ss4.png',
  'assets/ss5.png',
  'assets/ss6.png',
  'assets/ss7.png',
  'assets/ss8.png',
  'assets/ss9.png',
  'assets/ss10.png',
  'assets/ss11.png',
  'assets/ss12.png',
  'assets/ss13.png',
  'assets/ss14.png',
];

const List<ResumeModel> kEducation = [
  ResumeModel(
      period: '2013-2017',
      title: 'Bachelor of Engineering in Electronics & Communication',
      place: 'Saveetha University',
      description:
          'Pursued electronic & communication engineering in saveetha university, chennai. got hands on experience in robotics & embedded systems and learned Java language as a minor subject.'),
  ResumeModel(
      period: '2012-2013',
      title: 'Higher Secondary Education',
      place: 'Dharam Hinduja HSC School',
      description:
          'A complete change of environment from SSLC institution right from syllabus to new people. Took computer science with mathematics as a major ,learnt fundamentals of computing.'),
  ResumeModel(
      period: '2010-2011',
      title: 'SSLC',
      place: 'Vivekananda Vidyalaya',
      description:
          'A place where i done most of my schooling. done lots of creative activities to learn new concepts. done my SSLC year with a unique evaluation system.'),
];

const List<ResumeModel> kExperience = [
  ResumeModel(
      period: 'OCT 2021 - Present',
      title: 'Flutter  Developer',
      place: 'Hinduja Tech Limited (Ashok Leyland)',
      description:
          'Worked as flutter developer on applications with vast number of users, building complex UIs'),
  ResumeModel(
      period: 'APR 2019 - OCT 2021',
      title: 'Android / Flutter  Developer',
      place: 'iStrides Technologies',
      description:
          'Joined a android developer worked on wide range of applications which gave me opportunities in learning new technologies. then worked as a Flutter developer which is a great experience i ever had.'),
  ResumeModel(
      period: 'JUL 2017 - MAR 2019',
      title: 'Android Developer',
      place: 'Messiah software solutions pvt. Ltd',
      description:
          'Started my career as a Android developer trainee in this organisation then im promoted to work on projects which gave me great knowledge in certain domains.'),
];

const List<ResumeModel> kCertifications = [
  ResumeModel(
      period: '2022',
      title: 'GEM of the company award',
      place: 'Hinduja Tech Limited',
      description:
          'Received this award for achieving dynamic multilingual support in AL Care application'),
  ResumeModel(
      period: '2019',
      title: 'Flutter Development Bootcamp with Dart',
      place: 'Udemy',
      description:
          'A deep dive into flutter development learnt to build complex UI elements and got a great experience in state management of flutter application.'),
  ResumeModel(
    period: '2019',
    title: 'Complete Flutter app Development for Android',
    place: 'Udemy',
    description:
        'Learnt basics of flutter and got experience in basic structure of flutter framework, debugging application ',
  )
];

List<ContactMeModel> kContactMe = [
  ContactMeModel(
      title: 'Email Address',
      userName: 'mohan.smk23@outlook.com',
      icon: Icons.mail_rounded,
      onClick: () async {
        await launch(
            'https://mail.google.com/mail/?view=cm&fs=1&to=mohan.smk23@outlook.com&su=&body=');
      }),
  ContactMeModel(
      title: 'Facebook',
      userName: 'MohanKumar',
      icon: FontAwesomeIcons.facebookF,
      onClick: () async {
        await launch('https://www.facebook.com/mowglie.pop/');
      }),
  ContactMeModel(
      title: 'Github',
      userName: 'mohansmk23',
      icon: FontAwesomeIcons.github,
      onClick: () async {
        await launch('https://github.com/mohansmk23');
      }),
  ContactMeModel(
      title: 'LinkedIn',
      userName: 'MohanKumar S',
      icon: FontAwesomeIcons.linkedin,
      onClick: () async {
        await launch('https://www.linkedin.com/in/mohankumar-s-b23057182/');
      }),
  ContactMeModel(
      title: 'Medium',
      userName: 'mohan-smk23',
      icon: FontAwesomeIcons.medium,
      onClick: () async {
        await launch('https://mohan-smk23.medium.com/');
      }),
  ContactMeModel(
      title: 'Stack Overflow',
      userName: 'Mohankumar',
      icon: FontAwesomeIcons.stackOverflow,
      onClick: () async {
        await launch('https://stackoverflow.com/users/9882579/mohankumar');
      }),
];

List<SkillsModel> kSkills = [
  SkillsModel('Native Android', 90),
  SkillsModel('Flutter', 90),
  SkillsModel('Material design', 90),
  SkillsModel('Firebase', 75),
];

class ResumeModel {
  final String period;
  final String title;
  final String place;
  final String description;

  const ResumeModel(
      {required this.period,
      required this.title,
      required this.place,
      required this.description});
}

class ContactMeModel {
  final String title;
  final String userName;
  final IconData icon;
  final void Function()? onClick;

  const ContactMeModel(
      {required this.title,
      required this.userName,
      required this.icon,
      required this.onClick});
}

class SkillsModel {
  final String name;
  final int percentage;

  SkillsModel(this.name, this.percentage)
      : assert(percentage <= 100, "Skill percentage must be less than 100 ");
}
