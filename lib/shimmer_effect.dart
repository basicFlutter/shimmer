import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatefulWidget {
  const ShimmerEffect({Key? key}) : super(key: key);

  @override
  State<ShimmerEffect> createState() => _ShimmerEffectState();
}

class _ShimmerEffectState extends State<ShimmerEffect> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: screenWidth * 0.042,
              height: screenHeight * 0.042,
              child: SvgPicture.asset("assets/images/insta.svg",
                  color: Colors.grey),
            ),
            SizedBox(
              width:screenWidth*0.02,
            ),
            const Text("basic_flutter",style: TextStyle(color: Colors.grey),),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child:
          SizedBox(
            width: screenWidth*0.9,
            height: 100.0,
            child: Shimmer.fromColors(
              baseColor: Colors.grey[900]!,
              highlightColor: Colors.grey[500]!,
              period:  const Duration(seconds: 2),
              child:ListView.builder(
                itemCount: 50,
                itemBuilder: (context , index){
                  return SizedBox(
                    width: MediaQuery.of(context).size.width *0.9,
                    height: 120,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[900]
                          ),
                        ),

                        const SizedBox(
                          width: 10,
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width *0.6,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius:const BorderRadius.all( Radius.circular(5)),
                                  color: Colors.grey[900]
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width *0.5,
                              height: 15,
                              decoration: BoxDecoration(
                                  borderRadius:const BorderRadius.all(Radius.circular(5)),
                                  color: Colors.grey[900]
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width *0.3,
                              height: 15,
                              decoration: BoxDecoration(
                                  borderRadius:const BorderRadius.all(Radius.circular(5)),
                                  color: Colors.grey[800]
                              ),
                            ),
                          ],
                        )
                      ],
                    ),


                  );
                },
              )
            ),
          )


        ),
      ),
    );
  }
}
