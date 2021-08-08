import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryList(),
      ],
    );
  }
}

// カテゴリーの状態を切り替えるので、statefull widgetでなければならない。
class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ['上映中', '人気', '近日公開'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
    );
  }
}
