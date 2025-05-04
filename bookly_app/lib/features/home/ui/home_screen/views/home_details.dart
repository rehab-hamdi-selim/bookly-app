import 'package:bookly_app/core/networking/api_services.dart';
import 'package:bookly_app/core/theming/styles/styles.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_implement.dart';
import 'package:bookly_app/features/home/logic/manager/book_details_cubit/book_details_cubit.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/components/custom_widgets/book_details.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/components/custom_widgets/book_item_listview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) => BookDetailsCubit(
            HomeRepoImplement(apiServices: ApiServices(Dio())),
          )..getBookDetails(id: id),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, size: 28, color: Colors.white),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 25,
                children: [
                  BookDetails(id: id),
                  SizedBox(height: 50),
                  Text('You can also like', style: AppStyles.textStyle20),
                  BookItemListview(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
