import 'package:chess_game/game.dart';
import 'package:chess_game/widgets/banners.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController pageViewController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Image.asset(
            "assets/avatar.png",
          ),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/strategy.png",
              height: 32,
              width: 32,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Ghoda",
              style: GoogleFonts.poppins(
                  color: Colors.purple,
                  fontWeight: FontWeight.w700,
                  fontSize: 26),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width - 25,
              height: 220,
              child: PageView(
                controller: pageViewController,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChessGame()));
                    },
                    child: Banners(
                      ImageURL:
                          "https://img.freepik.com/free-photo/business-strategy-concept-with-chessboard-with-figures-side-view_176474-9261.jpg?t=st=1727256689~exp=1727260289~hmac=bd1fed8c602ff3a8455a35715d09160c91caab21499a3d1bf2823ba9552a9ce4&w=1060",
                      text: "Become a \n Chess Master.",
                    ),
                  ),
                  Banners(
                    ImageURL:
                        "https://img.freepik.com/premium-photo/strategy-playing-game-chess-macro-detail-chessboard_251006-768.jpg",
                    text: "Play with \n Your Friends.",
                  ),
                  Banners(
                    ImageURL:
                        "https://th.bing.com/th/id/OIP.27NvsOyo1iGAC5pPQNpGuAHaE7?w=2048&h=1365&rs=1&pid=ImgDetMain",
                    text: "Enhance\n your Game.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: const AlignmentDirectional(0, 1),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                child: smooth_page_indicator.SmoothPageIndicator(
                  controller: pageViewController,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  onDotClicked: (i) async {
                    await pageViewController!.animateToPage(
                      i,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                    setState(() {});
                  },
                  effect: smooth_page_indicator.SlideEffect(
                    spacing: 8,
                    radius: 8,
                    dotWidth: 6,
                    dotHeight: 6,
                    dotColor: Theme.of(context).primaryColorLight,
                    activeDotColor: Theme.of(context).primaryColor,
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                  width: double.infinity,
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    axisDirection: AxisDirection.down,
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Play over the Board",
                                style: GoogleFonts.poppins(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              Image.asset(
                                "assets/png3.png",
                                width: double.infinity,
                                height: 150,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 95,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: Row(children: [
                            Image.asset(
                              "assets/png4.png",
                              height: 45,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "SCORE",
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber[400]),
                            )
                          ]),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 180,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Learn Chess",
                                style: GoogleFonts.poppins(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              Image.asset(
                                "assets/png6.jpg",
                                width: double.infinity,
                                height: 120,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 160,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Play with Friends",
                                style: GoogleFonts.poppins(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              Image.asset(
                                "assets/png2.png",
                                width: double.infinity,
                                height: 110,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 75,
                        child: Center(
                            child: Text(
                          "PLAY",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Theme.of(context).primaryColor),
                        )),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
