import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String author;
  const NewsTile(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.time,
      required this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      author,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  title,
                  maxLines: 2,
                ),
                const SizedBox(height: 15),
                Text(
                  time,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
