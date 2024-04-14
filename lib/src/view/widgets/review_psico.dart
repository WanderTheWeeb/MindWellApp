import 'package:flutter/material.dart';

class ReviewPsico extends StatelessWidget {
  final String userImage;
  final String userName;
  final String review;
  final int rating;

  const ReviewPsico({
    Key? key,
    required this.userImage,
    required this.userName,
    required this.review,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(userImage),
      ),
      title: Text(userName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(review),
          SizedBox(height: 4),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          5,
          (index) => Icon(
            index < rating ? Icons.star : Icons.star_border,
            color: Colors.yellow,
            size: 20,
          ),
        ),
      ),
    );
  }
}
