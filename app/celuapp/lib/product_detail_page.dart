import 'package:celuapp/app_styles.dart';
import 'package:celuapp/size_config.dart';
import 'package:flutter/material.dart';



class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal:  KPadding8,
        ),
        height: 63,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: KPadding20,
        ) ,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Precio' , style: TextStyle(
                    color: kGrey85 ,fontSize: SizeConfig.blockSizeHorizontal! * 2.5
                  ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 0.5,
                  ),
                  Text('30.000' , style: TextStyle(
                    color: kGrey85 ,fontSize: SizeConfig.blockSizeHorizontal! * 4
                  ),
                  ),
                ],
              )
              ),
              GestureDetector(
                onTap: () {
                  print("Apretaste en scar entrada");
                },
                child: Container(
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(KBorderRadious10),
                    gradient: kLinearGradientBlue,
                  ),
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal:  KPadding24,
                  ),
                  child: Center(
                    child: Text("Sacar Entrada"  , style: TextStyle(
                      color: kWhite,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),),
              
                  ),
                ),
              )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(),
        ),
    );
  }
}