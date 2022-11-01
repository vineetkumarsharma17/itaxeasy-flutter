import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:gst_app/Models/api_response.dart';
import 'package:gst_app/Services/api_services.dart';
import '../../Models/depriciation.dart';
import '../Login_And_Register/Theme.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Invoice-Generator/api/pdf_api.dart';
import '../Theme/colors.dart';


class DepricationUi extends StatefulWidget {
  const DepricationUi({Key key}) : super(key: key);

  @override
  _DepricationUiState createState() => _DepricationUiState();
}

class _DepricationUiState extends State<DepricationUi> {


  TextEditingController  purchasePrice = TextEditingController();
  TextEditingController  scrapValue = TextEditingController();
  TextEditingController  estimatedUsefulLife = TextEditingController();


  bool isLoading = false;
  bool isVisible = false;
  ApiServices apiServices = ApiServices();

  ApiResponse<DepriciationCalResponse> _apiResponse;




  @override
  Widget build(BuildContext context) {
    return  isLoading ? const Center(child: CircularProgressIndicator(),) : Scaffold(
      floatingActionButton: buildSpeedDial(),
      resizeToAvoidBottomInset: true,
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
                            'Depreciation Calculator',
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
                            "Purchase Price",
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
                          keyboardType: TextInputType.number,
                          controller: purchasePrice,
                          decoration: InputDecoration(
                            hintText: 'Purchase Price',
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
                            "Scrap Value",
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
                          controller: scrapValue,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Scrap Value',
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
                            "Estimated UsefulLife",
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
                          controller: estimatedUsefulLife,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Estimated Useful Life',
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
                          if(purchasePrice.text.isEmpty || scrapValue.text.isEmpty || estimatedUsefulLife.text.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please Fill The Given Field"),));
                          }else{
                            setState(() {
                              isLoading = true;
                              isVisible = false;
                            });
                            final insert = DepriciationCal(
                                purchasePrice: int.parse(purchasePrice.text),
                                scrapValue: int.parse(scrapValue.text),
                                estimatedUsefulLife: int.parse(estimatedUsefulLife.text)
                            );
                            _apiResponse = await apiServices.depriciationCal(insert);


                            if(_apiResponse.resposeCode == 200){
                                     setState(() {
                                       isVisible = true;
                                     });
                              print("------------------SUCCESS-----------------");
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Something Went Wrong"),));
                              print("------------------ERROR-----------------");
                            }
                            setState(() {
                              isLoading = false;
                            });
                          }


                        },
                        text: "Calculate"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: isVisible,
                  child: SizedBox(
                    width: double.infinity,
                    child: StreamBuilder<Object>(
                      stream: null,
                      builder: (context, snapshot) {
                        return Card(
                          elevation: 5,
                          child:  Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10,bottom: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[

                                  const Text("Depreciation Percentage",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),),
                                  Text(_apiResponse.data.depreciationPercentage.toString()),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text("Cost Of Asset",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      fontSize: 17.5,
                                    ),),
                                  Text(_apiResponse.data.costOfAsset.toString()),


                                ]
                            ),
                          ),
                        );
                      }
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<File> generatePDF() async {
    final pdf = pw.Document();

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.undefined,
        build: (pw.Context context) {
          return  pw.Center(
            child:           pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children:[

                  pw. Text("Depreciation Percentage",
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),),
                  pw. Text(_apiResponse.data.depreciationPercentage.toString()),
                  pw. SizedBox(
                    height: 5,
                  ),
                  pw. Text("Cost Of Asset",
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.5,
                    ),),
                  pw. Text(_apiResponse.data.costOfAsset.toString()),






                ]
            ),
          );


        })); //
    // image = (await rootBundle.load("assets/images/itax.png")).buffer.asUint8List();

    return PdfApi.saveDocument(name: 'Depreciation.pdf', pdf: pdf);
  }
  Widget buildSpeedDial() => SpeedDial(
    overlayColor: Colors.purple.shade100,
    backgroundColor: Colors.deepPurple,
    spacing: 12,
    // childrenButtonSize: 60,
    spaceBetweenChildren: 8,
    // animatedIcon: AnimatedIcons.menu_close,
    icon: Icons.share,
    children: [
      SpeedDialChild(
        onTap: () async {
          // const phoneNumber = "8770877270";
          // const url = 'tel:$phoneNumber';
          //
          // if (await canLaunch(url)) {
          //   await launch(url);
          // }
        },
        child: const Icon(FontAwesomeIcons.print,
            size: 30, color: KColors.primary),
      ),
      SpeedDialChild(
        onTap: ()async {
          final pdfFile = await generatePDF();
          PdfApi.openFile(pdfFile);
        },
        child: const Icon(
          FontAwesomeIcons.filePdf,
          size: 30,
          color: Colors.red,
        ),
      ),
    ],
  );
}
