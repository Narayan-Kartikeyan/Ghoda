import 'package:chess_game/homePage.dart';
import 'package:chess_game/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

void main() {
// Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const Homepage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ChessBoardController controller = ChessBoardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 400,
              width: 400,
              child: ChessBoard(
                controller: controller,
                boardColor: BoardColor.green,
                boardOrientation: PlayerColor.white,
                onMove: () {
                  controller.loadFen(
                      "rnbqkb1r/ppp2ppp/8/4p3/4N3/8/PPPP1PPP/RNB1KB1R w KQkq - 0 7");
                },
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                controller.undoMove();
                print(controller.game.game_over);
                print(controller.getSan());
              },
              child: Text("Undo")),
        ],
      ),
    );
  }
}
