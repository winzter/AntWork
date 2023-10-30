import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../../../core/features/login/presentation/pages/login_page.dart';
import '../../../../../core/provider/bottom_navbar/bottom_navbar_provider.dart';
import '../widgets/list_menu.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavIndex>(context);
    super.build(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipRRect(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: SizedBox(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('assets/images/profile_bg.jpg'),
                ),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.7,
              right: 0,
              child: SvgPicture.asset(
                "assets/icons/bell.svg",
                width: 30,
              )),
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 55,
                  backgroundColor: Color(0xffc4c4c4),
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 185,
            left: 0,
            right: 0,
            child: Text(
              "ณัฐกฤตา เงินเย็น",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.27,
            left: 0,
            right: 0,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xff27385E),
                                  Color(0xff275F77),
                                ])),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "โหมดผู้ขาย",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Switch(
                                inactiveTrackColor: const Color(0xffc4c4c4),
                                inactiveThumbColor: Colors.white,
                                value: navigationProvider.isSwitch,
                                onChanged: (isIt) {
                                  navigationProvider.setIsSwitch(isIt);
                                })
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "โปรไฟล์",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      if (navigationProvider.isSwitch == false) ...[
                        const ListMenu(
                          svgName: 'heart',
                          title: 'รายการที่บันทึกไว้',
                        ),
                        const ListMenu(
                          svgName: 'save',
                          title: 'ความสนใจของฉัน',
                        ),
                        const ListMenu(
                          svgName: 'invite',
                          title: 'เชิญเพื่อน',
                        ),
                      ] else ...[
                        const ListMenu(
                          svgName: 'profile_on_page',
                          title: 'โปรไฟล์',
                        ),
                        const ListMenu(
                          svgName: 'income',
                          title: 'รายได้',
                        ),
                        const ListMenu(
                          svgName: 'template',
                          title: 'เทมเพลตข้อเสนอที่กำหนดเอง',
                        ),
                        const ListMenu(
                          svgName: 'share',
                          title: 'แบ่งปัน Gigs ของฉัน',
                        ),
                        const ListMenu(
                          svgName: 'availability',
                          title: 'ความพร้อมใช้งาน',
                        ),
                      ],
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "ตั้งค่า",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ListMenu(
                        svgName: 'setting',
                        title: 'การตั้งค่า',
                      ),
                      const ListMenu(
                        svgName: 'profile_setting',
                        title: 'การตั้งค่าบัญชี',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "ทรัพยากร",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ListMenu(
                        svgName: 'support',
                        title: 'สนับสนุน',
                      ),
                      const ListMenu(
                        svgName: 'info',
                        title: 'ชุมชนและกฏหมาย',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ));
                          navigationProvider.setIndex(0);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "ออกจากระบบ",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 300,
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
