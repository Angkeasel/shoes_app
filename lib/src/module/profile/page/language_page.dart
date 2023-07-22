import 'package:allpay/src/module/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

enum SingingCharacter {
  english,
  khmer,
}

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  SingingCharacter? _character = SingingCharacter.english;
  final conProfile = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/svg/arrowBack.svg")),
        title: Text(
          "Language",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Suggested",
              style: TextStyle(
                  color: Color(0xff5A4F4F),
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              title: const Text('English (US)'),
              trailing: Radio<SingingCharacter>(
                value: SingingCharacter.english,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              title: const Text('Khmer'),
              trailing: Radio<SingingCharacter>(
                value: SingingCharacter.khmer,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            const Divider(
              thickness: 1,
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
