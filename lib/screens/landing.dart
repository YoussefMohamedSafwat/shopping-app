import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shopping/screens/sign_in.dart';
import 'package:shopping/screens/sign_up.dart';
import 'package:shopping/widget/animatedbutton.dart';
import 'package:shopping/widget/background_container.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DropdownMenu(
       
          initialSelection: Locale('en', 'US'),
          onSelected: (locale) {
            context.setLocale(locale!);
          },
          dropdownMenuEntries: [
            DropdownMenuEntry(value: Locale('en', 'US'), label: "English"),
            DropdownMenuEntry(value: Locale('ar', 'EG'), label: "Arabic"),
          ],
        ),
        title: Text(
          tr('ShopMe'),
          style: TextStyle(fontFamily: "Suwannaphum", color: Colors.redAccent),
        ),
        centerTitle: true,
        elevation: 1,

        backgroundColor: Colors.black,
      ),

      body: BackgroundContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          spacing: 20,
          children: [
            Text(
              tr('landingText'),
              style: TextStyle(
                fontSize: 20,
                color: Colors.white60,
                fontFamily: "Suwannaphum",
              ),
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://picsum.photos/id/0/200",
                    fit: BoxFit.cover,
                    width: 300,
                    height: 200,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://picsum.photos/id/160/200",
                    fit: BoxFit.cover,
                    width: 300,
                    height: 200,
                  ),
                ),
              ],
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,

              children: [
                Animatedbutton(
                  label: tr('signIn'),
                  labelColor: Colors.redAccent,
                  backgroundColor: Colors.black87,
                  initialWidth: 200,
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: SignIn(),
                        duration: Duration(milliseconds: 600),
                      ),
                    );
                  },
                ),
                Animatedbutton(
                  label: tr('SignUP'),
                  labelColor: Colors.redAccent,
                  backgroundColor: Colors.black87,
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: SignUp(),
                        duration: Duration(milliseconds: 600),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
