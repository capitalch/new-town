import 'package:flutter/material.dart';
import 'package:jie_demo/pages/home/job_chip.dart';
// import '../../../../../dev/jobs_in_education/lib/features/dashboard/widgets/job_chip.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 12.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      radius: 12.0,
                      backgroundColor: Colors.indigo.shade50,
                      child: Icon(
                        Icons.school,
                        size: 16,
                      )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'DPS School',
                    style: TextStyle(
                      color: Colors.indigo.shade600,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.save_outlined, color: Colors.black54),
                ],
              ),
              SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Primary Chemistry Teacher',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '3d',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.indigo.shade400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.0),
              Row(
                children: [
                  JobChip(title: '3-5 years', icon: Icons.watch_later),
                  JobChip(title: 'Kolkata', icon: Icons.location_on),
                ],
              ),
              SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade50,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'Full Time',
                      style: TextStyle(color: Colors.indigo),
                    ),
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Text(
                    '3.5 LPA',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
