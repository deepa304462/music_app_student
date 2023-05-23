import 'package:flutter/material.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/chat/chat_contact_page.dart';
import 'package:music_app_student/core/presentation/pages/community/community_page.dart';

class CommunicationPage extends StatefulWidget {
  const CommunicationPage({super.key});

  @override
  State<CommunicationPage> createState() => _CommunicationPageState();
}

class _CommunicationPageState extends State<CommunicationPage>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 20,
          bottom: TabBar(
            overlayColor: const MaterialStatePropertyAll(Colors.transparent),
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
            controller: _tabController,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColor.appThemeColor,
            ),
            tabs: [
              Container(
                width: 135,
                height: 48,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: _selectedIndex == 0
                      ? Colors.transparent
                      : AppColor.blue224,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: _selectedIndex == 0
                        ? AppColor.yellow29
                        : Colors.transparent,
                  ),
                ),
                child: Text(
                  "All chats",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 16,
                    color: AppColor.white255,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                width: 135,
                height: 48,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: _selectedIndex == 1
                      ? Colors.transparent
                      : AppColor.blue224,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: _selectedIndex == 1
                        ? AppColor.yellow29
                        : Colors.transparent,
                  ),
                ),
                child: Text(
                  "Group",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 16,
                    color: AppColor.white255,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const ChatContactPage(),
            CommunityPage(),
          ],
        ),
      ),
    );
  }
}

/*

*/
