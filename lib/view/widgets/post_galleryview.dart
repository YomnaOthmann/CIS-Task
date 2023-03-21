import 'package:cis_app_design/constants/colors.dart';
import 'package:cis_app_design/models/post_model.dart';
import 'package:cis_app_design/view/widgets/post_item.dart';
import 'package:flutter/material.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGrey,
      body: SafeArea(
        child: GridView.builder(
            padding: const EdgeInsets.only(top: 16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: posts.length,
            itemBuilder: ((context, index) {
              return PostItem(
                model: posts[index],
              );
            })),
      ),
    );
  }
}
