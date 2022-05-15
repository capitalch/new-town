import 'package:flutter/material.dart';
import 'package:jie_demo/pages/home/job_card.dart';

class JobsHorizontalListView extends StatelessWidget {
  final String sectionTitle;
  final bool hasFilter;
  const JobsHorizontalListView({
    Key? key,
    required this.sectionTitle,
    this.hasFilter = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionTitle,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.indigo.shade600,
                ),
              ),
            ],
          ),
        ),
        if (hasFilter)
          Container(
            color: Colors.indigo.shade50,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FilteredButton(
                  filterTitle: 'All',
                  isSelected: true,
                ),
                FilteredButton(
                  filterTitle: 'Chemistry Teachers',
                  isSelected: false,
                ),
                FilteredButton(
                  filterTitle: 'Maths Teachers',
                  isSelected: false,
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.22,
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              children: [
                JobCard(),
                JobCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FilteredButton extends StatelessWidget {
  final String filterTitle;
  final bool isSelected;
  const FilteredButton({
    Key? key,
    required this.filterTitle,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, top: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            filterTitle,
            style: TextStyle(fontSize: 12.0),
          ),
          SizedBox(height: 4.0),
          Container(
            height: 3.0,
            width: 20.0,
            color: isSelected ? Colors.indigo : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
