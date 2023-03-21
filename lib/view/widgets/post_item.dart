import 'package:cis_app_design/models/post_model.dart';
import 'package:cis_app_design/view/screens/post_screen.dart';
import 'package:cis_app_design/view/widgets/separator.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.model,
  });

  final PostModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: AppColors.kLightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                  topEnd: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    model.image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Text(
              model.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
                const SizedBox(
                  width: 3,
                ),
                Separator(),
                const SizedBox(
                  width: 3,
                ),
                const Icon(
                  Icons.mode_comment_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "${model.commentsNumber}",
                  style: const TextStyle(color: Colors.white),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PostScreen(model);
                    }));
                  },
                  icon: const Icon(
                    Icons.arrow_forward_outlined,
                    color: AppColors.kGreen,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
