import 'package:flutter/material.dart';
import 'package:jie_demo/pages/home/job_status_card.dart';

class JobsStatus extends StatelessWidget {
  const JobsStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: JobStatusCard(
                  jobs: 12,
                  status: 'Saved Jobs',
                  icon: Icons.save,
                ),
              ),
              Expanded(
                child: JobStatusCard(
                  jobs: 12,
                  status: 'Invited Jobs',
                  icon: Icons.insert_invitation,
                ),
              ),
            ],
          ),
          SizedBox(width: 10.0),
          Row(
            children: [
              Expanded(
                child: JobStatusCard(
                  jobs: 12,
                  status: 'Applied Jobs',
                  icon: Icons.check_circle,
                ),
              ),
              Expanded(
                child: JobStatusCard(
                  jobs: 12,
                  status: 'Under Process',
                  icon: Icons.watch_later,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
