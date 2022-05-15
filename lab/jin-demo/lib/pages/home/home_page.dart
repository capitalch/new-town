import 'package:flutter/material.dart';
import 'package:jie_demo/pages/home/home_bottom_nav_bar.dart';
import 'package:jie_demo/pages/home/home_job_greetings.dart';
import 'package:jie_demo/pages/home/home_switch.dart';
import 'package:jie_demo/pages/home/latest_jobs.dart';

import 'home_app_bar.dart';
import 'jobs_status.dart';
import 'search_floating_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: SafeArea(
        child: ListView(
          children: [
            const HomeAppBar(),
            const HomeJobGreetings(),
            const HomeSwitch(),
            const JobsStatus(),
            const JobsHorizontalListView(sectionTitle: 'Latest Jobs For You'),
            const JobsHorizontalListView(sectionTitle: 'Suggested Jobs', hasFilter: true),
          ],
        ),
      ),
      bottomNavigationBar: const HomeBottomNavBar(),
      floatingActionButton: const SearchFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
