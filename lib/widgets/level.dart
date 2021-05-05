import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelWidget extends StatelessWidget {
  static const korangeColor = Color(0xff046582);
  static const kwhiteColor = Color(0xffedffec);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 175,
              width: MediaQuery.of(context).size.width - 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // image: const DecorationImage(
                //   image: AssetImage('images/abstract.jpg'),
                //   // colorFilter:
                //   // ColorFilter.mode(Color(0xffcaf7e3), BlendMode.dstATop),
                //   colorFilter: ColorFilter.srgbToLinearGamma(),
                //   fit: BoxFit.cover,
                // ),
                color: korangeColor,
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment(
                      0.3, 0.5), // 10% of the width, so there are ten blinds.
                  colors: [
                    const Color(0xff046582),
                    const Color(0xff00adb5)
                  ], // red to yellow
                  tileMode:
                      TileMode.mirror, // repeats the gradient over the canvas
                ),
              ),
              child: DecoratedBox(
                position: DecorationPosition.background,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Write your \nfirst journal\nentry now',
                            style: GoogleFonts.spartan(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: kwhiteColor,
                            ),
                          ),
                          ElevatedButton(onPressed: () {}, child: Text('Start'))
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage('images/notes.png'),
                      width: 150,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Practice and Collect badges'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RankWidget(
                  label: 'Novice',
                  imageLocation: 'images/notes.png',
                ),
                RankWidget(
                  label: 'Monk',
                  imageLocation: 'images/bg_3.png',
                ),
                RankWidget(
                  label: 'Master',
                  imageLocation: 'images/icons8-trophy-64.png',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RankWidget extends StatelessWidget {
  final String label;
  final String imageLocation;
  const RankWidget({this.label, this.imageLocation});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
              color: Color(0xff046582),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(imageLocation),
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  label,
                  style: GoogleFonts.spartan(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffedffec),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      flex: 1,
    );
  }
}
