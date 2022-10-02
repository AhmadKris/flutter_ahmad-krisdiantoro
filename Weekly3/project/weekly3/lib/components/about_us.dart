import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'About Us',
            style: GoogleFonts.robotoCondensed(
                fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 400,
            child: GridView.count(
              padding: const EdgeInsets.all(5),
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                Card(
                  color: Colors.grey,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.card_giftcard,
                          color: Colors.black,
                          size: 25,
                        ),
                        Text(
                          'Gift Card',
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.black, fontSize: 16),
                        ),
                        Text(
                          '\nAplikasi Bertukar Hadiah',
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.black, fontSize: 12),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Selengkapnya',
                            style: GoogleFonts.robotoCondensed(
                                color: Colors.black, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.message_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                        Text(
                          'Message',
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.black, fontSize: 16),
                        ),
                        Text(
                          '\nAplikas Bertukar Pesan',
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.black, fontSize: 12),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Selengkapnya',
                            style: GoogleFonts.robotoCondensed(
                                color: Colors.black, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
