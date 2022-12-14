import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



import 'Theme/colors.dart';


class OtherSections extends StatefulWidget {
  const OtherSections({Key key}) : super(key: key);

  @override
  State<OtherSections> createState() => _OtherSectionsState();
}

class _OtherSectionsState extends State<OtherSections>     with TickerProviderStateMixin  {
  double _scale;
  double _scale1;
  double _scale2;
  double _scale3;
  double _scale4;
  double _scale5;
  double _scale6;
  double _scale7;
  AnimationController _controller;
  AnimationController _controller1;
  AnimationController _controller2;
  AnimationController _controller3;
  AnimationController _controller4;
  AnimationController _controller5;
  AnimationController _controller6;
  AnimationController _controller7;



  @override
  void initState() {

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });

    _controller1 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });

    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });


    _controller3 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });


    _controller4 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });

    _controller5 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });


    _controller6 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });


    _controller7 = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });



    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    _controller7.dispose();

  }
MediaQueryData size;
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:  Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF655B96),
                      Color(0xFFA644B7),
                    ],
                  )
              ),
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)),
                            ),
                            child: const Icon(
                              Icons.chevron_left_rounded,
                              color: KColors.icon,
                              size: 35,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "Easy Services",
                          style: GoogleFonts.dmSans(
                            fontSize: 25,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 150,
                      aspectRatio: 19 / 5,
                      viewportFraction: 0.8,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                      const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      // scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xff9c2cf3), Color(0xff3a48f8)],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: KColors.icon,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Shares",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xff9c2cf3), Color(0xff3a48f8)],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: KColors.icon,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Bonds",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xff9c2cf3), Color(0xff3a48f8)],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: KColors.icon,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Mutual Funds",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xff9c2cf3), Color(0xff3a48f8)],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: KColors.icon,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Capital Gains",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xff9c2cf3), Color(0xff3a48f8)],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: KColors.icon,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "LIC Policy",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: KColors.icon,
                        elevation: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xff9c2cf3), Color(0xff3a48f8)],
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.description_outlined,
                                color: KColors.icon,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Star Health",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 20.5,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            importantLinks(context),
          ],
        ),
      ),
    );
  }


  Widget importantLinks(BuildContext context) {
    size = MediaQuery.of(context) ;
    _scale = 1 - _controller.value;
    _scale1 = 1 - _controller1.value;
    _scale2 = 1 - _controller2.value;
    _scale3 = 1 - _controller3.value;
    _scale4 = 1 - _controller4.value;
    _scale5 = 1 - _controller5.value;
    _scale6 = 1 - _controller6.value;
    _scale7 = 1 - _controller7.value;
    return Expanded(
      child: SizedBox(
        height: size.size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            children: [
              GestureDetector(
                onTapDown: _tapDown,
                onTapUp: _tapUp,
                onTap:  (){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        content: Text(
                            "Contact our Organization"),
                      ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Vouchers()));
                },
                child: Transform.scale(
                  scale: _scale,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color(0xffE3E9ED),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.trending_up_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Shares",
                          style: GoogleFonts.dmSans(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff57435C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown1,
                onTapUp: _tapUp1,
                onTap:  (){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        content: Text(
                            "Contact our Organization"),
                      ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> SaleUi() ));
                },
                child: Transform.scale(
                  scale: _scale1,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color(0xffE3E9ED),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.card_membership_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Bonds",
                          style: GoogleFonts.dmSans(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff57435C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown2,
                onTapUp: _tapUp2,
                onTap:  (){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        content: Text(
                            "Contact our Organization"),
                      ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Purchases()));
                },
                child: Transform.scale(
                  scale: _scale2,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color(0xffE3E9ED),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.account_balance_wallet_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Mutual Funds",
                          style: GoogleFonts.dmSans(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff57435C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown3,
                onTapUp: _tapUp3,
                onTap:  (){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        content: Text(
                            "Contact our Organization"),
                      ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>DashService()));
                },
                child: Transform.scale(
                  scale: _scale3,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color(0xffE3E9ED),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.all_inclusive_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Capital Gains",
                          style: GoogleFonts.dmSans(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff57435C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown4,
                onTapUp: _tapUp4,
                onTap:  (){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        content: Text(
                            "Contact our Organization"),
                      ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>CashAndBank()));
                },
                child: Transform.scale(
                  scale: _scale4,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color(0xffE3E9ED),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.policy_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Lic Policy",
                          style: GoogleFonts.dmSans(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff57435C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown5,
                onTapUp: _tapUp5,
                onTap:  (){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        content: Text(
                            "Contact our Organization"),
                      ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>TradingAccount()));
                },
                child: Transform.scale(
                  scale: _scale5,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color(0xffE3E9ED),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.health_and_safety_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Star health insurance",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff57435C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTapDown: _tapDown6,
                onTapUp: _tapUp6,
                onTap:  (){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        content: Text(
                            "Contact our Organization"),
                      ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>EasyLinks()));
                },
                child: Transform.scale(
                  scale: _scale6,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color(0xffE3E9ED),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3E9ED),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.local_atm_rounded,
                            color: KColors.icon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Personal/Car Loan",
                          style: GoogleFonts.dmSans(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff57435C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }
  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
  void _tapDown1(TapDownDetails details) {
    _controller1.forward();
  }
  void _tapUp1(TapUpDetails details) {
    _controller1.reverse();
  }
  void _tapDown2(TapDownDetails details) {
    _controller2.forward();
  }
  void _tapUp2(TapUpDetails details) {
    _controller2.reverse();
  }
  void _tapDown3(TapDownDetails details) {
    _controller3.forward();
  }
  void _tapUp3(TapUpDetails details) {
    _controller3.reverse();
  }

  void _tapDown4(TapDownDetails details) {
    _controller4.forward();
  }
  void _tapUp4(TapUpDetails details) {
    _controller4.reverse();
  }
  void _tapDown5(TapDownDetails details) {
    _controller5.forward();
  }
  void _tapUp5(TapUpDetails details) {
    _controller5.reverse();
  }

  void _tapDown6(TapDownDetails details) {
    _controller6.forward();
  }
  void _tapUp6(TapUpDetails details) {
    _controller6.reverse();
  }

  void _tapDown7(TapDownDetails details) {
    _controller7.forward();
  }
  void _tapUp7(TapUpDetails details) {
    _controller7.reverse();
  }

}
