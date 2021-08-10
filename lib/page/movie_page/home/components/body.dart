import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/constants.dart';

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
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Text(
            categories[index],
            style: Theme.of(context).textTheme.headline5.copyWith(
              fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }
}
