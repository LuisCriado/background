import 'package:celuapp/app_styles.dart';
import 'package:celuapp/product_detail_page.dart';
import 'package:celuapp/size_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    "Boliches",
    "Bar",
    "Restauran",
    "Estadio",
    "Quinta",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child:  SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: KPadding20 ,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lugar',
                            style: TextStyle(
                              color: kGrey83,
                              fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                            ),
                            ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical!*0.5,
                            ),
                          Row(
                            children: [
                              Text(
                                "Usuario",
                                style: TextStyle(
                                  color: kBlack,
                                  fontSize: SizeConfig.blockSizeHorizontal!*5,
                                ),
                             ),
                              SizedBox(
                                width: SizeConfig.blockSizeHorizontal!*0.5,
                              ),
                               Icon(Icons.arrow_drop_down, color: kGrey85 ),
                            ],
                          )
                        ],
                      ),
                      Icon(Icons.add_alert_rounded, color: kGreyB7 ),
                    ],
                  ),
                  ),
                  const SizedBox( height:  KPadding24,),
                  Padding(padding: EdgeInsets.symmetric(
                    horizontal: KPadding20,             
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                            color: kBlack,
                           fontSize: SizeConfig.blockSizeHorizontal! * 3,

                          ),
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: KPadding16,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(KPadding8,
                              ),
                              child:  Icon(Icons.search_sharp),
                              ),
                            hintText: 'Seaarch adrres, o lo que se te cante papa',
                            border: kInputBorder,
                            errorBorder: kInputBorder,
                            disabledBorder: kInputBorder,
                            focusedBorder: kInputBorder,
                            enabledBorder: kInputBorder,
                            hintStyle: TextStyle(
                              color: kGrey85,
                              fontSize: SizeConfig.blockSizeHorizontal!*3,                            
                            ),
                            filled: true,
                            fillColor: kWhiteF7,
                          ),
                        ),
                        ),
                        SizedBox(width: SizeConfig.blockSizeHorizontal!*4,
                        ),
                        Container(
                          height: 49,
                          width: 49,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular
                            (KBorderRadious10),
                            gradient: kLinearGradientBlue,
                          ),
                          child: Icon(Icons.filter_list_alt),
                        )
                    ],
                  ),
                  ),
                  const SizedBox( height: KPadding24,),
                  SizedBox(
                    width: double.infinity,
                    height: 34,
                    child: ListView.builder(
                      physics: const  BouncingScrollPhysics(),
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index)
                                            {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0? KPadding20 : 12,
                              right: index == categories.length-1 ? KPadding20 : 0,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: KPadding16,
                            ),
                            height: 34,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  offset: const Offset(0, 18),
                                  blurRadius: 18,
                                  color: current == index ? kBlue.withOpacity(0.1) : kBlue.withOpacity(0),
                                )
                              ],
                              gradient: current == index? kLinearGradientBlue : kLinearGradientWhite,
                              borderRadius: BorderRadius.circular(
                                KBorderRadious10,
                                ),
                            ),
                            child: Center(
                              child: Text(categories[index],
                              style: TextStyle(
                                color: current == index ? kWhite : kGrey85,
                                fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                              ) ,
                              ) 
                            ),
                          ),
                        );
                      },
                      ),
                  ),
                  const SizedBox(height: KPadding24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: KPadding20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Cerca Tuyo', 
                         style: TextStyle(
                          color: kBlack ,
                          fontSize: SizeConfig.blockSizeHorizontal!*4,
                         ),
                         ),
                         Text('ve mas', 
                         style: TextStyle(
                          color: kGrey85 ,
                          fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                         ),),
                      ],
                    ),
                    ), 
                    const SizedBox(height: KPadding24,),
                    SizedBox(
                      height: 272,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: (() =>Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> const
                            ProductDetailPage(),
                            ),
                            )),
                            child: Container(
                              height: 272,
                              width: 222,
                              margin: EdgeInsets.only(
                                left: KPadding20,
                                right: index == 5 - 1 ? KPadding20 : 0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  KBorderRadious20,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                  spreadRadius: 0,
                                  offset: const Offset(0, 18),
                                  blurRadius: 18,
                                  color:kBlack.withOpacity(0.1),
                                )
                                ],
                                image: const DecorationImage(
                                  fit:BoxFit.cover,
                                  image: NetworkImage('https://www.wisum.mx/blog/wp-content/uploads/2019/11/Mu%CC%81sica_portada.jpg'),)
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 136,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(KBorderRadious20),
                                          bottomRight: Radius.circular(KBorderRadious20)
                                        ),
                                        gradient: kLinearGradientClack
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal:KPadding16 , vertical: KPadding20 ,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(
                                                    KBorderRadious20
                                                  ),
                                                  color: kBlack.withOpacity(0.24),
                                                ),
                                                padding: const EdgeInsetsDirectional.symmetric(
                                                  horizontal: KPadding8,
                                                  vertical: KPadding4,
                                                ),
                                                child: Row(
                                                  children: [
                                                     Icon(Icons.edit_location_alt_rounded),
                                                     const SizedBox(
                                                      width: KPadding4,
                                                     ),
                                                     Text('tantos km', style: TextStyle(
                                                      color: kWhite,
                                                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                                     ),
                                                     ),
                                                  ],
                                                ),
                                                
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("PinarDerocha", style: TextStyle(
                                                      color: kWhite,
                                                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                                ), 
                                                ),
                                                SizedBox(
                                                  height: SizeConfig.blockSizeVertical! * 0.5,
                                                ),
                                                Text("Ramos Mejia", style: TextStyle(
                                                      color: kWhite,
                                                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                                ), 
                                                ),
                                             ],
                                            )
                                        ],

                                      )
                                      
                                    ) ,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: KPadding24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: KPadding20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Los Mejores', 
                         style: TextStyle(
                          color: kBlack ,
                          fontSize: SizeConfig.blockSizeHorizontal!*4,
                         ),
                         ),
                         Text('ve mas', 
                         style: TextStyle(
                          color: kGrey85 ,
                          fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                         ),),
                      ],
                    ),
                    ), 
                    const SizedBox(height: KPadding24,
                    ),
                    Padding(padding: const EdgeInsets.symmetric(
                      horizontal:  KPadding20,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 70,
                          margin: const EdgeInsets.only(
                            bottom: KPadding24,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(KBorderRadious10),
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 0,
                                      offset: const Offset(0, 18),
                                      blurRadius: 18,
                                      color: kBlack.withOpacity(0.1)
                                      ),
                                  ],
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage('https://www.wisum.mx/blog/wp-content/uploads/2019/11/Mu%CC%81sica_portada.jpg')
                                    ),
                                ) ,
                              ),
                              SizedBox( 
                                width: SizeConfig.blockSizeHorizontal! * 4.5 
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('La Casa de orlando' , 
                                    style: TextStyle(
                                      color: kBlack,
                                      fontSize: SizeConfig.blockSizeHorizontal ! * 4,

                                    ),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.blockSizeHorizontal! * 0.5,
                                    ),
                                     Text('Precio de Tikets : ' , 
                                    style: TextStyle(
                                      color: kBlue,
                                      fontSize: SizeConfig.blockSizeHorizontal ! * 2.5,

                                    ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [

                                              Icon(Icons.accessible_forward_sharp),
                                              SizedBox(
                                                width: SizeConfig.blockSizeHorizontal! * 0.5,
                                              ),
                                               Text('Acept Paralitic' , 
                                    style: TextStyle(
                                          color: kGrey85,
                                          fontSize: SizeConfig.blockSizeHorizontal ! * 2,

                                    ),
                                    ),

                                            ],
                                          ),
                                          SizedBox(
                                            width: SizeConfig.blockSizeHorizontal! * 1 ,
                                          ),
                                           Row(
                                            children: [

                                              Icon(Icons.audiotrack_sharp),
                                              SizedBox(
                                                width: SizeConfig.blockSizeHorizontal! * 0.5,
                                              ),
                                               Text('Cumbia , Electronica' , 
                                    style: TextStyle(
                                          color: kGrey85,
                                          fontSize: SizeConfig.blockSizeHorizontal ! * 2,

                                    ),
                                    ),

                                            ],
                                          ),
                                        ],
                                      )
                                      ),
                                  ],
                                )
                                )
                            ],
                          ),
                        );
                        
                      },
                      ),
                    ),


            ],
          ),
        ),
      ),
    );
  }
}