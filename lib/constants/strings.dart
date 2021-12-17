// ];
import 'package:flutter/material.dart';
import 'package:trezy_app/advisor/advprofilescreen.dart';
import 'package:trezy_app/advisor/advwallet.dart';
import 'package:trezy_app/advisor/guideadv.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';

List wallettilesicons = [
  "images/dollar.svg",
  "images/dollar.svg",
  "images/dollarred.svg",
  "images/dollarred.svg",
  "images/dollar.svg",
  "images/dollar.svg",
];
List wallettilesnames = [
  "Amy Watson",
  "Amy Watson",
  "Withdrawal Executed",
  "Withdrawal Executed",
  "Amy Watson",
  "Amy Watson",
];
List wallettilesubtitle = [
  "purchase your city guide",
  "purchase your city guide",
  "- \$34.45",
  "- \$14.56",
  "purchase your city guide",
  "purchase your city guide"
];
List wallettextstyle = [
  grey14regular,
  grey14regular,
  red14regular,
  red14regular,
  grey14regular,
  grey14regular,
];
List activityicons = [
  "images/dollar.svg",
  "images/message.svg",
  "images/file.svg",
  "images/message.svg",
];

List activitynames = [
  "Amy Watson",
  "Billy Garden",
  "Cindy Corner",
  "Marcus Santiago"
];
List activitysubtitle = [
  "purchase your city guide",
  "sent you a message",
  "request a custom. itinerary",
  "sent you a message"
];
List settingsnames = [
  "Profile",
  "Guide",
  "Wallet",
  "Change email",
  "Change password",
];

List settingsnavigation = [
  ProfileAdvisorScreen(),
  GuideAdvScreen(),
  WalletAdvScreen(),
  WalletAdvScreen(),
  WalletAdvScreen(),
];

//***CHAT DUMMY DATA//**** */

List chatimages = ["images/girl.png", "images/boy1.png", "images/boy2.png"];
List chatnames = ["Mary - NY", "John - UK", "Walter - CA"];
List chatrecentmessages = [
  "Morbi nec consequat ipsum,\nnec lacinia…",
  "Aliquam laoreet nec augue \nat hendrerit.",
  "Richard McClintock, a Latin\nIn another…"
];
List messagecounts = [
  Container(
    alignment: Alignment.center,
    height: 30,
    width: 30,
    decoration:
        const BoxDecoration(shape: BoxShape.circle, color: advbtnscolor),
    child: Text(
      "2",
      style: white14normal,
    ),
  ),
  Container(
    height: 30,
    width: 30,
    child: Text(
      "",
      style: white14normal,
    ),
  ),
  Container(
    height: 30,
    width: 30,
    child: Text(
      "",
      style: white14normal,
    ),
  )
];
List travellermessagecounts = [
  Container(
    alignment: Alignment.center,
    height: 30,
    width: 30,
    decoration: const BoxDecoration(shape: BoxShape.circle, color: themecolor),
    child: Text(
      "2",
      style: white14normal,
    ),
  ),
  Container(
    height: 30,
    width: 30,
    child: Text(
      "",
      style: white14normal,
    ),
  ),
  Container(
    height: 30,
    width: 30,
    child: Text(
      "",
      style: white14normal,
    ),
  )
];
List exploresimgs = [
  "images/place1.png",
  "images/place2.png",
  "images/place3.png",
  "images/place3.png",
];
List exploresnames = [
  "Paris",
  "London",
  "Rome",
  "Iceland",
];
List explorepopularimages = [
  "images/girl.png",
  "images/boy1.png",
  "images/boy2.png",
  "images/boy2.png"
];
List drawerlist = ["Profile", "Account", "My Trips", "Logout"];

List placesimgs = [
  "images/place1.png",
  "images/place2.png",
  "images/place3.png",
];
List placesnames = [
  "Brooklyn",
  "Buffalo",
  "Watkins Glen",
];
List advisornames = [
  "Amber",
  "Emma",
  "Carlos",
];
List exploreadvisors = [
  "Amber",
  "Morgan",
  "Carlos",
  "Emma",
];
List exploreadvisoraddress = [
  "California",
  "New York",
  "New Mexico",
  "Nevada",
];
List advisoraddress = [
  "California",
  "Nevada",
  "New Mexico",
];

List specialities = ["Bar", "Winery", "Dinner"];
String bigtext =
    "I love walking around to explore the city, \nI am in and trying all the food they have \nto offer. My favorites places is Museum \nand Parks.";

//Mytripsdata//

List mytripsinfo = [
  "Guided by Mary - New York",
  "Guided by John  - United Kingdom",
  "Guided by Walter - California",
];
List mytripsdate = ["02/22", "09/16", "05/06"];

List betsyanswers = [
  "When you travel, what are types of places \nyou check out?\n\nI love walking around to explore the city,\n I am in and trying all the food they have to offer.\nMy favorites places is Museum and Parks.",
  "What are NOT your specialties?\n\nAnythings about Sports places.",
];

List countertile = ["Adults", "Children", "Infants"];
List countersubtitle = ["Ages 13 or above", "Ages 2-12", "Under 2"];

List betsycityguide = [
  "Aliquam laoreet nec augue",
  "Something Amazing and nice",
  "Morbi nec consequat ipsum",
  "Something Amazing"
];
