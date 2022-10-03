import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                foregroundImage: AssetImage(
                    'lib/images/10645073_267312506810065_7034246450543848834_n.jpeg'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Maciej Obukowicz',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.rancho().fontFamily,
                      fontSize: 50),
                ),
              ),
              Text(
                'UX/UI Developer',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80.0,
                ),
                child: Divider(
                  thickness: 5,
                  color: Color.fromARGB(212, 2, 108, 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  child: ListTile(
                    iconColor: Color.fromARGB(212, 2, 108, 16),
                    leading: FaIcon(FontAwesomeIcons.whatsapp),
                    title: Text('+48 572-044-507'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                  child: ListTile(
                    iconColor: Color.fromARGB(212, 2, 108, 16),
                    leading: Icon(Icons.email),
                    title: Text('macobuk.dev@gmail.com'),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FloatingActionButton(
                        onPressed: () =>
                            launchUrl(Uri.parse('https://github.com/macobuk')),
                        backgroundColor: Color.fromARGB(212, 2, 108, 16),
                        child: FaIcon(FontAwesomeIcons.github)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FloatingActionButton(
                        onPressed: () => launchUrl(Uri.parse(
                            'https://macobuk.github.io/portfolio/#/')),
                        backgroundColor: Color.fromARGB(212, 2, 108, 16),
                        child: FaIcon(FontAwesomeIcons.wifi)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FloatingActionButton(
                        onPressed: () => launchUrl(Uri.parse(
                            'https://www.linkedin.com/in/maciej-obukowicz-690464223/')),
                        backgroundColor: Color.fromARGB(212, 2, 108, 16),
                        child: FaIcon(FontAwesomeIcons.linkedin)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
