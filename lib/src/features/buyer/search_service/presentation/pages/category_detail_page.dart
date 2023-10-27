import 'package:flutter/material.dart';
import '../widgets/category_detail/swipe_menu.dart';

class CategoryDetailPage extends StatelessWidget {

  final String title;
  const CategoryDetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios_sharp,color: Colors.white,)),
            title: Text(title,style: const TextStyle(color: Colors.white),),
            toolbarHeight: MediaQuery.of(context).size.height * 0.1,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff68D5E8),
                    Color(0xffF394BC),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.17,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child:  const SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        children: [
                          Row(children: [
                            Text("โลโก้และเอกลักษณ์ของแบรนด์",style: TextStyle(fontSize: 17),)
                          ],),
                          Padding(
                            padding:  EdgeInsets.only(top: 10),
                            child: SizedBox(
                              width: double.infinity,
                              child: SingleChildScrollView(
                                  physics:  BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: SwipeMenu(title1: ['ออกแบบโลโก้','คู่มือสไตล์แบรนด์'], title2: ['นามบัตรและเครื่องเขียน','แบบอักษรและการพิมพ์'], tagName1: 'logo&brand')),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(children: [
                            Text("เกมส์",style: TextStyle(fontSize: 17),)
                          ],),
                          Padding(
                            padding:  EdgeInsets.only(top: 10),
                            child: SizedBox(
                              width: double.infinity,
                              child: SingleChildScrollView(
                                  physics:  BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: SwipeMenu(title1: ["ศิลปะเกมส์","กราฟิกสำหรับสตรีมเมอร์"], title2: ["Twitch"], tagName1: 'game',)),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(children: [
                            Text("ศิลปะและภาพประกอบ",style: TextStyle(fontSize: 17),)
                          ],),
                          Padding(
                            padding:  EdgeInsets.only(top: 10),
                            child: SizedBox(
                              width: double.infinity,
                              child: SingleChildScrollView(
                                  physics:  BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: SwipeMenu(title1: ["Illustration","ศิลปิน AI","หนังสือการ์ตูน"], title2: ["ภาพประกอบหนังสือเด็ก","ภาพบุคคลและการ์ตูน","การออกแบบแพทเทิร์น"], tagName1: 'art&pic',)),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(children: [
                            Text("การออกแบบเว็บไซต์และแอปพลิเคชัน",style: TextStyle(fontSize: 17),)
                          ],),
                          Padding(
                            padding:  EdgeInsets.only(top: 10),
                            child: SizedBox(
                              width: double.infinity,
                              child: SingleChildScrollView(
                                  physics:  BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: SwipeMenu(title1: ["ออกแบบเว็บไซต์","ออกแบบแอปพลิเคชัน"], title2: ["ออกแบบ UX","ออกแบบไอคอน"], tagName1: 'web&app',)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
