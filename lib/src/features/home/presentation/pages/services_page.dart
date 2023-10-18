import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ServicesPage extends StatefulWidget {
  final String title;

  const ServicesPage({super.key, required this.title});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  Widget tabsMenu(String title, int index, int tabsIndex) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).devicePixelRatio * 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == tabsIndex
                    ? const Color(0xffF394BC)
                    : Colors.transparent),
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(),
              child: Image.asset(
                'assets/logo/service_bg.png',
                fit: BoxFit.cover,
              ),
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              widget.title,
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TabBar(
                    controller: tabController,
                    onTap: (value) {
                      setState(() {
                        tabController.index = value;
                      });
                    },
                    indicatorWeight: 3,
                    labelPadding: const EdgeInsets.all(0),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      tabsMenu("ลักษณะ", 0, tabController.index),
                      tabsMenu("รวมบริการ", 1, tabController.index),
                      tabsMenu("ระดับนักขาย", 2, tabController.index),
                    ],
                  ),
                  SizedBox(
                    height: 130,
                    child: TabBarView(
                        controller: tabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          Service1Card(),
                          Service2Card(),
                          Service3Card(),
                        ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Expanded(
                      child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return CardJobs(index: index,);
                    },
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
