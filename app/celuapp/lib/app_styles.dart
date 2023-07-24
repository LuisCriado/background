import 'package:flutter/material.dart';

// con lores

const Color kWhite = Color(0xffffffff);
const Color kWhiteF7 = Color(0xfff7f7f7);
const Color kWhiteFA = Color(0xffFAFAFA);
const Color kWhiteEF = Color(0xffEFEFEF);

const Color kBlack = Color(0xff000000);
const Color kBlack0D = Color(0xdd0d0d0d);

const Color kGrey = Color(0xffD7D7D7);
const Color kGreyB7 = Color(0xffB7B7B7);
const Color kGrey8E = Color(0xff8E8E8E);
const Color kGrey83 = Color(0xff838383);
const Color kGrey85 = Color(0xff858585);

const Color kBlue = Color(0xff0A8ED9);
const Color kLightBlue = Color(0xffA0DAFB);


// gradientes

Gradient kLinearGradientClack = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: <Color>[
    kBlack.withOpacity(0.8),
    kBlack0D.withOpacity(0),
  ],
  tileMode: TileMode.clamp,
  );


  const Gradient kLinearGradientBlue = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      kLightBlue,
      kBlue,
      
    ],
    tileMode: TileMode.clamp,
    );


Gradient kLinearGradientWhite = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    kWhite.withOpacity(0),
    kWhite,
  ],
  tileMode: TileMode.clamp,
  );



  // Bordes

  const double KBorderRadious20 = 20.0;
  const double KBorderRadious10 = 10.0;
  const double KBorderRadious5 = 5.0;

  // padings

  
  const double KPadding32 = 32.0;
  const double KPadding24 = 24.0;
  const double KPadding20 = 20.0;
  const double KPadding16 = 16.0;
  const double KPadding8 = 8.0;
  const double KPadding4 = 4.0;

  //Comienzo del app styles

  final kInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(KBorderRadious10),
    borderSide: const BorderSide(
      color: kWhite,
    )
  );


