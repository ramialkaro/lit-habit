import 'package:flutter/material.dart';

class FilterRowSection extends StatefulWidget {
  const FilterRowSection({Key? key}) : super(key: key);

  @override
  _FilterRowSectionState createState() => _FilterRowSectionState();
}

class _FilterRowSectionState extends State<FilterRowSection> {
  final List<String> filterOptions = [
    'Discover',
    'Romantic',
    'Author',
    'Genres',
    'Health',
    'Science',
    'Technology',
  ];
  String? selectedFilter;
  @override
  void initState() {
    super.initState();
    filterByCategory("Discover");
  }

  Future<void> filterByCategory(String category) async {
    setState(() {
      selectedFilter = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: filterOptions.map((filter) {
          return Padding(
            padding: const EdgeInsets.only(right: 22),
            child: Text(
              filter,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.grey[400]),
            ),
          );
        }).toList(),
      ),
    );
  }
}
