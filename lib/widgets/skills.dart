import 'package:portfolio/widget_barrel.dart';

class SocialSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1 - 16.0),
      child: Wrap(
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.spaceAround,
        children: getSkills(),
      ),
    );
  }

  List<Widget> getSkills() {
    List<Widget> skills = [];
    for (String asset in kSkillsAssets) {
      skills.add(Padding(
        padding: const EdgeInsets.only(right: 16.0, top: 8.0, bottom: 8.0),
        child: SizedBox(width: 180.0, height: 77, child: Image.asset(asset)),
      ));
    }

    return skills;
  }
}
