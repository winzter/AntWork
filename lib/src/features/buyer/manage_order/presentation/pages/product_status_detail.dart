import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductStatusDetail extends StatelessWidget {

  final int index;
  const ProductStatusDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height*0.6,
            child: ClipRRect(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: SizedBox(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('assets/images/list_detail$index.jpg'),
                ),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.02,
              left: MediaQuery.of(context).size.width * 0.02,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.22,
              right: MediaQuery.of(context).size.width * 0.02,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black)
                ),
                child: const Text("THB 1,500.00",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              )),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.27,
            left: 0,
            right: 0,
            bottom:0,
            child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                child:  SingleChildScrollView(
                  physics:const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const Row(children: [
                        Flexible(child: Text("Design creative minimalist logo",style: TextStyle(fontSize: 17),))
                      ],),
                      const SizedBox(height: 20,),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xffD4D4D4))
                        ),
                        child: const Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                NetworkImage("https://i.pravatar.cc/150?img=15"),
                              ),
                              title: Text("สุชาติ ยิ้มแย้ม"),
                              subtitle: Text("Top Rated Seller",style: TextStyle(color: Color(0xff275F77)),),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.calendar_today_outlined),
                                Text(" วันที่สั่งซื้อ 24 พ.ค. 2566")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.calendar_today_outlined),
                                Text(" วันที่จัดส่ง 26 พ.ค. 2566")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.access_time_outlined),
                                Text(" ระยะเวลา 2 วัน")
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xffD4D4D4))
                        ),
                        child:  Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("assets/icons/regulation.svg"),
                                const Flexible(child: Text(" ข้อกำหนดการสั่งซื้อ",style: TextStyle(fontSize: 17),))
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Row(
                              children: [
                                SizedBox(width: 30,),
                                Icon(Icons.circle,size: 10,),
                                Text(" รายการไอคอน")
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(width: 45,),
                                Text("As Reference",style: TextStyle(color: Color(0xff275F77)),)
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Row(
                              children: [
                                SizedBox(width: 30,),
                                Icon(Icons.circle,size: 10,),
                                Text(" โทนสี")
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(width: 45,),
                                Text("As Reference",style: TextStyle(color: Color(0xff275F77)),)
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Row(
                              children: [
                                SizedBox(width: 30,),
                                Icon(Icons.circle,size: 10,),
                                Text(" เว็บไซต์หรือแอปพลิเคชัน")
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(width: 45,),
                                Text("Website",style: TextStyle(color: Color(0xff275F77)),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        height: 200,
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xffD4D4D4))
                        ),
                        child:   Column(
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.list_alt_rounded),
                                Flexible(child: Text(" นี่คือการจัดส่งของคุณ",style: TextStyle(fontSize: 17),))
                              ],
                            ),
                            const SizedBox(height: 40,),
                            // const Row(
                            //   children: [
                            //     SizedBox(width: 45,),
                            //     Text("กำลังดำเนินการ",style: TextStyle(color: Color(0xff275F77)),)
                            //   ],
                            // ),
                            ElevatedButton.icon(
                                onPressed: (){},
                                icon: const Icon(Icons.download,color: Colors.black,),
                                label: const Text("Project files.zip",style: TextStyle(fontSize: 16,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                elevation: 5,
                                padding: const EdgeInsets.all(15),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                              )
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),));
  }
}
