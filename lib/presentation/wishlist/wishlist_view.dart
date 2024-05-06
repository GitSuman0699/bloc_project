import 'package:bloc_project/logic/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  void initState() {
    super.initState();
    context.read<WishlistBloc>().add(FetchWishlist());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishlist"),
        actions: [
          BlocBuilder<WishlistBloc, WishlistState>(
            builder: (context, state) {
              return Visibility(
                visible: state.tempList.isNotEmpty,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.wishlist.isEmpty) {
            return const Center(
              child: Text("No items found"),
            );
          } else {
            return ListView.builder(
              itemCount: state.wishlist.length,
              itemBuilder: (context, index) {
                final item = state.wishlist[index];
                return ListTile(
                  leading: Checkbox(
                    value: item.isChecked,
                    onChanged: (value) {
                      context.read<WishlistBloc>().add(CheckBoxEvent(
                            index: index,
                            model: item,
                            value: value!,
                          ));
                    },
                  ),
                  title: Text(state.wishlist[index].title!),
                  trailing: IconButton(
                    onPressed: () {
                      context
                          .read<WishlistBloc>()
                          .add(MarkWishlist(index: index, model: item));
                    },
                    icon: Icon(
                      item.isWishlisted
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: item.isWishlisted ? Colors.pink : Colors.black,
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
