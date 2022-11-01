import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:gst_app/Services/api_services.dart';
import '../../Models/simple-interest.dart';
import '../Login_And_Register/Theme.dart';
import '../SimpleInterestResponse.dart';




class SimpleInterestUi extends StatefulWidget {
  const SimpleInterestUi({Key key}) : super(key: key);

  @override
  _SimpleInterestUiState createState() => _SimpleInterestUiState();
}

class _SimpleInterestUiState extends State<SimpleInterestUi> {


  TextEditingController  principle = TextEditingController();
  TextEditingController  rate = TextEditingController();
  TextEditingController  year = TextEditingController();

  bool isLoading = false;
  ApiServices apiServices = ApiServices();



  @override
  Widget build(BuildContext context) {
    return  isLoading ? const Center(child: CircularProgressIndicator(),) : Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'Simple Interest',
                            style: heading2.copyWith(color: textBlack),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "(Enter the following details)",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 13.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/accent.png',
                          color:Colors.purple,
                          width: 99,
                          height: 4,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                Form(
                  child: Column(
                    children: [

                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Principle",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          controller: principle,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Principle',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Rate",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          controller: rate,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Rate',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Year",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          controller: year,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Year',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: GFButton(
                        color:Colors.purple,

                        onPressed: () async {
                          FocusScope.of(context).requestFocus(FocusNode());
                          if(principle.text.isEmpty || rate.text.isEmpty || year.text.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please Fill The Given Field"),));
                          }else{
                            setState(() {
                              isLoading = true;
                            });
                            final insert = SimpleInterest(
                              principle: double.parse(principle.text),
                              rate: double.parse(rate.text),
                              year:  double.parse(year.text),
                            );
                            final result = await apiServices.simpleInterest(insert);


                            if(result.resposeCode == 200){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SimpleInterestResponseUi(apiResponse: result,)));
                              print("------------------SUCCESS-----------------");
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("SomeThing Went Wrong"),));

                              print("------------------ERROR-----------------");
                            }
                            setState(() {

                              isLoading = false;
                            });

                          }

                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                        },
                        text: "Calculate"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
