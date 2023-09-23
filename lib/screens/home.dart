import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.asset(
                    'image/imagee.jpg',
                    width: 270,
                    height: 270,
                  ),
                ),
              ),
              const Column(
                children: [
                  Text(
                    'Ankita Soni',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Computer Science',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 90.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                        child: const Divider(
                          color: Colors.blueGrey,
                          thickness: 1,
                          height: 25,
                        ),
                      ),
                    ),
                    const Text(
                      "About Me",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                        child: const Divider(
                          color: Colors.blueGrey,
                          thickness: 1,
                          height: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 29.0),
                    child: Text(
                      'hdfhebryhdfhehdfhehdfhehdfhehdfhehdfhevbryvetreybuyujebyrywyuyetewtuirbdfbvfcdrdgvjuubjhvjbinukgfvynvcdfvgbhnjwertyuiopiugfdsfghjklrertyuiojhgfdxcvbnm,jhgfdsfbryvetreybuyujebyrywyuyetewtuirbdfbvfcdrdgvjuubjhvjbinukgfvynvcdfvgbhnjwertyuiopiugfdsfghjklrertyuiojhgfdxcvbnm,jhgfdsfbryvetreybuyujebyrywyuyetewtuirbdfbvfcdrdgvjuubjhvjbinukgfvynvcdfvgbhnjwertyuiopiugfdsfghjklrertyuiojhgfdxcvbnm,jhgfdsfbryvetreybuyujebyrywyuyetewtuirbdfbvfcdrdgvjuubjhvjbinukgfvynvcdfvgbhnjwertyuiopiugfdsfghjklrertyuiojhgfdxcvbnm,jhgfdsfbryvetreybuyujebyrywyuyetewtuirbdfbvfcdrdgvjuubjhvjbinukgfvynvcdfvgbhnjwertyuiopiugfdsfghjklrertyuiojhgfdxcvbnm,jhgfdsfbryvetreybuyujebyrywyuyetewtuirbdfbvfcdrdgvjuubjhvjbinukgfvynvcdfvgbhnjwertyuiopiugfdsfghjklrertyuiojhgfdxcvbnm,jhgfdsfvetreybuyujebyrywyuyetewtuirbdfbvfcdrdgvjuubjhvjbinukgfvynvcdfvgbhnjwertyuiopiugfdsfghjklrertyuiojhgfdxcvbnm,jhgfdsfghjkuytrewrtyuioiuytdsfghnmgfewrtyuiouytreqwertyuiogfdsfghjklcxcvbnm,.iuytrdfghjuytrfdghjuytrdfghjdcvbiuytfvbjkuytfdfghjyitewyitbygehdkjsdu yseui yuec hzgsydskauiuwouakssjdhjsufykuweyurcyubeyryeryeuyre4vyuauwkeu3wiyretgcjzbsjnciukfhdbbcjdhutydugncukbseufyueryujshcbvesyerus mrybkaueyruyeuv uyeuryiuewyhjhagdaxjaljdsaueydashcbshmcjsgsddfhjccxhgchjs',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 90.0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 15.0),
                            child: const Divider(
                              color: Colors.blueGrey,
                              thickness: 1,
                              height: 25,
                            ),
                          ),
                        ),
                        const Text(
                          "Connect Me",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 15.0),
                            child: const Divider(
                              color: Colors.blueGrey,
                              thickness: 1,
                              height: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          height: 28,
                          width: 35,
                          child: GestureDetector(
                            onTap: () async {
                              Uri ur =
                                  Uri.parse('mailto:ankitasoni018@gmail.com');
                              if (!await launcher.launchUrl(ur)) {
                                debugPrint('could not send mail');
                              }
                            },
                            child: const Image(
                              image: AssetImage(
                                'image/gmail.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          height: 48,
                          width: 45,
                          child: InkWell(
                            onTap: () {
                              launcher.launchUrl(
                                  Uri.parse(
                                      'https://www.linkedin.com/in/ankita-soni-17430a221/'),
                                  mode:
                                      launcher.LaunchMode.externalApplication);
                            },
                            child: const Image(
                              image: AssetImage(
                                'image/linkdin.webp',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
