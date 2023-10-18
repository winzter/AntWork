import 'package:antwork/src/features/home/presentation/pages/product_detail.dart';
import 'package:flutter/material.dart';

class CardJobs extends StatelessWidget {

  final int index;
  const CardJobs({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(index: index),));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ]),
          child: Row(
            children: [
              Expanded(
                flex: 40,
                child: ClipRRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset(
                          'assets/images/list_detail$index.jpg'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              const Expanded(
                flex: 90,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "Design a unique sports, mascot, esports and gaming logo",
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("4.8",style: TextStyle(color: Color(0xffEEAC19),),),
                          Icon(Icons.star_rate_rounded,
                            size: 17,color: Color(0xffEEAC19),),
                          Icon(Icons.star_rate_rounded,
                            size: 17,color: Color(0xffEEAC19),),
                          Icon(Icons.star_rate_rounded,
                            size: 17,color: Color(0xffEEAC19),),
                          Icon(Icons.star_rate_rounded,
                            size: 17,color: Color(0xffEEAC19),),
                          Icon(Icons.star_rate_rounded,
                            size: 17,color: Color(0xffEEAC19),),
                          Text("(315)",style: TextStyle(color: Color(0xff7D7D7D),),),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [Text("THB 1,590.00")],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
