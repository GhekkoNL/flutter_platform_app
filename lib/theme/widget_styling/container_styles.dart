import 'package:flutter/material.dart';
import '../colors/custom_colors.dart';

BoxDecoration listView = BoxDecoration(
  border: Border.all(
      width: 0.5,
      color: Colors.grey.withOpacity(0.5),
  ),
  color: Colors.transparent,
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(4),
      topRight: Radius.circular(4),
      bottomLeft: Radius.circular(4),
      bottomRight: Radius.circular(4)
  ),
);

BoxDecoration extraDealButton = BoxDecoration(
  border: Border.all(
      width: 0.5,
      color: CustomColors.darkGrey
  ),
  color: Colors.white24,
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(25),
      topRight: Radius.circular(25),
      bottomLeft: Radius.circular(25),
      bottomRight: Radius.circular(25)
  ),
);

BoxDecoration readMoreButton = BoxDecoration(
    border: Border.all(width: 1, color: Colors.black45),
  color: CustomColors.lightGrey,
  borderRadius: const BorderRadius.all(Radius.circular(7)),
);

BoxDecoration blueContainerStyle = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: blueContainerGradient,
  ),
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(12),
      topRight: Radius.circular(12),
      bottomLeft: Radius.circular(4),
      bottomRight: Radius.circular(4)
  ),
);

BoxDecoration bookingButtonContainerStyle = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: bookingContainerGradient,
  ),
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(5),
      topRight: Radius.circular(5),
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(5)
  ),
);

final greyContainerStyle = BoxDecoration(
  border: Border.all(color: Colors.grey.withOpacity(0.3)),
  gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: greyContainerGradient),
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(12),
      topRight: Radius.circular(65),
      bottomLeft: Radius.circular(4),
      bottomRight: Radius.circular(4)
  ),
);

BoxDecoration whiteContainerStyle = BoxDecoration(
  border: Border.all(
    color: Colors.grey.withOpacity(0.4),
    width: 0.7,
  ),
  color: Colors.transparent,
  borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(10),
      topLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
      topRight: Radius.circular(10)),
);

BoxDecoration blackContainerStyle = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: blackContainerGradient,
  ),
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(75),
      topRight: Radius.circular(75),
      bottomLeft: Radius.circular(4),
      bottomRight: Radius.circular(4)
  ),
);

BoxDecoration innerContainerStyle = const BoxDecoration(
  color: Colors.white70,
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(70),
      topRight: Radius.circular(70),
      bottomLeft: Radius.circular(4),
      bottomRight: Radius.circular(4)
  ),
);

BoxDecoration lastMinuteContainerStyle = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      Color(0xff7ac5c7),
      Color(0xff92bcde),
    ],
  ),
  borderRadius: BorderRadius.all(Radius.circular(8)
  ),
);

final settingsMenuButtonDecoration = BoxDecoration(
  color: Colors.transparent,
  border: Border.all(
    color: Colors.grey.withOpacity(0.6),
    width: 0,
  ),
  borderRadius: BorderRadius.circular(4),
);
