import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class ChessGame extends StatefulWidget {
  const ChessGame({super.key});

  @override
  State<ChessGame> createState() => _ChessGameState();
}

class _ChessGameState extends State<ChessGame> {
  ChessBoardController ctrl = ChessBoardController();
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ChessBoard(
              controller: ctrl,
              boardColor: BoardColor.orange,
              size: 350,
              enableUserMoves: flag,
              onMove: () {},
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                flag == true ? flag = false : flag = true;
              });
            },
            child: Text("Tap me"),
          )
        ],
      ),
    );
  }
}
