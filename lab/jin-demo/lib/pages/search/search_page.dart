import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
          child: Column(
            children: [
              // search field
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  hintText: 'Search by keywords, skills, locations',
                  hintStyle: TextStyle(color: Colors.indigo.shade200, fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(8),
                  // ),
                  prefixIcon: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.indigo.shade100,
                    ),
                  ),
                ),
              ),
              // Filter bar
              Container(),
              // Search result
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
