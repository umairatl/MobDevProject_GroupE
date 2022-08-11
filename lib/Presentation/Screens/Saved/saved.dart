import 'package:flutter/material.dart';
import 'package:recipe_project/Presentation/Screens/Saved/saved_card.dart';
import 'package:recipe_project/model/review_list.dart';
import 'package:recipe_project/navigation/bottomNavBar.dart';

import '../../../model/review_api.dart';

class saved extends StatefulWidget {
  @override
  _savedState createState() => _savedState();
}

class _savedState extends State<saved> {
  bool isLoading = true;
  late List<ReviewModel> listReview;

  @override
  void initState() {
    super.initState();

    getReviews();
  }

  Future<void> getReviews() async {
    try {
      listReview = await ReviewAPI.fetchRecipe();
      setState(() {
        isLoading = false;
        print(listReview);
      });
    } catch (e, st) {
      print(e);
      listReview = [];
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Error"),
              content: Text("Cannot load the data"),
            );
          },
        );
      }
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Recipe'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listReview.length,
              itemBuilder: (context, index) {
                return ReviewCard(
                  name: listReview[index].name,
                  rating: listReview[index].rating,
                  comment: listReview[index].comment,
                );
              },
            ),
      bottomNavigationBar: BottomNa(),
    );
  }
}
