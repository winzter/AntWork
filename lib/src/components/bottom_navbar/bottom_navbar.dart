import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../core/provider/bottom_navbar/bottom_navbar_provider.dart';
import '../../features/buyer/home/presentation/pages/home_page.dart';
import '../../features/buyer/manage_order/presentation/pages/manager_order_page.dart';
import '../../features/buyer/message/presentation/pages/chat_page.dart';
import '../../features/buyer/profile/presentation/pages/profile_page.dart';
import '../../features/buyer/search_service/presentation/pages/search_page.dart';
import '../../features/vendor/home/presentation/pages/home_vendor_page.dart';


class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  List<Widget> pages = const [
    HomePage(),
    ChatPage(),
    SearchPage(),
    ManagerOrderPage(),
    ProfilePage(),
  ];

  List<Widget> pages2 = const [
    HomeVendorPage(),
    ChatPage(),
    ManagerOrderPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavIndex>(context);
    return Scaffold(
      extendBody: true,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: navigationProvider.controller,
        onPageChanged: (index) {
          navigationProvider.setIndex(index);
        },
        children: navigationProvider.isSwitch?pages2:pages,
      ),
      bottomNavigationBar: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 65,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff6FC9E4),
                  Color(0xffE793B8),
                ])),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 5)),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: const Color(0xffE793B8),
                  unselectedItemColor: Colors.grey,
                  showUnselectedLabels: true,
                  showSelectedLabels: true,
                  selectedIconTheme: const IconThemeData(
                    color: Color(0xffE793B8),
                  ),
                  onTap: (index) {
                    navigationProvider.controller.jumpToPage(index);
                    navigationProvider.setIndex(index);
                  },
                  currentIndex: navigationProvider.currentIndex,
                  items: navigationProvider.isSwitch?[
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          navigationProvider.currentIndex == 0
                              ? const Color(0xffE793B8)
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/home_bbar.svg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      label: "หน้าแรก",
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          navigationProvider.currentIndex == 1
                              ? const Color(0xffE793B8)
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/mail_bbar.svg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      label: "ข้อความ",
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          navigationProvider.currentIndex == 2
                              ? const Color(0xffE793B8)
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/manage_bbar.svg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      label: "จัดการ",
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          navigationProvider.currentIndex == 3
                              ? const Color(0xffE793B8)
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/profile_bbar.svg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      label: "โปรไฟล์",
                    ),
                  ]:[
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          navigationProvider.currentIndex == 0
                              ? const Color(0xffE793B8)
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/home_bbar.svg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      label: "หน้าแรก",
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          navigationProvider.currentIndex == 1
                              ? const Color(0xffE793B8)
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/mail_bbar.svg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      label: "ข้อความ",
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          navigationProvider.currentIndex == 2
                              ? const Color(0xffE793B8)
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/search_bbar.svg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      label: "ค้นหา",
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          navigationProvider.currentIndex == 3
                              ? const Color(0xffE793B8)
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/manage_bbar.svg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      label: "จัดการ",
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          navigationProvider.currentIndex == 4
                              ? const Color(0xffE793B8)
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/profile_bbar.svg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      label: "โปรไฟล์",
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
