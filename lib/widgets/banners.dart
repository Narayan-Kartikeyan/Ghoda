import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Banners extends StatefulWidget {
  const Banners({super.key, required this.ImageURL, required this.text});
  final String ImageURL;
  final String text;
  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.ImageURL),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Text(
                widget.text,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                ),
                textAlign: TextAlign.end,
              ),
              const SizedBox(height: 5),
              IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_double_arrow_right_rounded),
                style: IconButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
              )
            ],
          ),
        ));
  }
}
