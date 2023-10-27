import 'package:flutter/material.dart';

class OrderCards extends StatelessWidget {
  final int index;

  const OrderCards({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffffffff).withOpacity(0.2),
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
                  width: 125,
                  height: 125,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('assets/images/list_detail$index.jpg'),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
             Expanded(
              flex: 90,
              child: Padding(
                padding:const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Flexible(
                          child: Text(
                            "Design a unique sports, mascot, esports and gaming logo",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(children: [
                      Icon(Icons.calendar_today_outlined,color: Colors.white,),
                      SizedBox(
                        width: 5,
                      ),
                      Text("20 มิถุนายน 2566",style: TextStyle(color: Colors.white,fontSize: 15),)
                    ],),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "THB 1,590.00",
                          style: TextStyle(
                              color: Color(0xffFFCC48),
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: AlignmentDirectional.topStart,
                              end: AlignmentDirectional.bottomEnd,
                              colors: [
                                const Color(0xffF394BC),
                                const Color(0xffF394BC).withOpacity(0.5),
                              ],
                            ),
                          ),
                          child: const Text("Complete",style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
