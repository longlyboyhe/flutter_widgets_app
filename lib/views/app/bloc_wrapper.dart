import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_study_widgets/app/enums.dart';
import 'package:flutter_study_widgets/blocs/category/category_bloc.dart';
import 'package:flutter_study_widgets/blocs/category/category_event.dart';
import 'package:flutter_study_widgets/blocs/category_widget/category_widget_bloc.dart';
import 'package:flutter_study_widgets/blocs/collect/collect_bloc.dart';
import 'package:flutter_study_widgets/blocs/collect/collect_event.dart';
import 'package:flutter_study_widgets/blocs/detail/detail_bloc.dart';
import 'package:flutter_study_widgets/blocs/global/global_bloc.dart';
import 'package:flutter_study_widgets/blocs/global/global_event.dart';
import 'package:flutter_study_widgets/blocs/home/home_bloc.dart';
import 'package:flutter_study_widgets/blocs/home/home_event.dart';
import 'package:flutter_study_widgets/blocs/point/point_bloc.dart';
import 'package:flutter_study_widgets/blocs/point_comment/point_comment_bloc.dart';
import 'package:flutter_study_widgets/blocs/search/search_bloc.dart';
import 'package:flutter_study_widgets/repositories/impl/catagory_db_repository.dart';
import 'package:flutter_study_widgets/repositories/impl/widget_db_repository.dart';
import 'package:flutter_study_widgets/storage/app_storage.dart';

/// create by 张风捷特烈 on 2020/4/28
/// contact me by email 1981462002@qq.com
/// 说明: Bloc提供器包裹层

final storage = AppStorage();

class BlocWrapper extends StatefulWidget {
  final Widget child;

  BlocWrapper({this.child});

  @override
  _BlocWrapperState createState() => _BlocWrapperState();
}

class _BlocWrapperState extends State<BlocWrapper> {
  final repository = WidgetDbRepository(storage);

  final categoryBloc = CategoryBloc(repository: CategoryDbRepository(storage));

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(//使用MultiBlocProvider包裹
        providers: [
      //Bloc提供器
      BlocProvider<GlobalBloc>(
          create: (_) => GlobalBloc(storage)..add(EventInitApp())),

      BlocProvider<HomeBloc>(
          create: (_) => HomeBloc(repository: repository)
            ..add(EventTabTap(WidgetFamily.statelessWidget))),

      BlocProvider<DetailBloc>(
          create: (_) => DetailBloc(repository: repository)),

      BlocProvider<CategoryBloc>(
          create: (_) => categoryBloc..add(EventLoadCategory())),

      BlocProvider<CollectBloc>(
          create: (_) =>
              CollectBloc(repository: repository)..add(EventSetCollectData())),

      BlocProvider<CategoryWidgetBloc>(
          create: (_) => CategoryWidgetBloc(categoryBloc: categoryBloc)),

      BlocProvider<SearchBloc>(
          create: (_) => SearchBloc(repository: repository)),
      BlocProvider<PointBloc>(create: (_) => PointBloc()),
      BlocProvider<PointCommentBloc>(create: (_) => PointCommentBloc()),
    ], child: widget.child);
  }

  @override
  void dispose() {
    categoryBloc.close();
    super.dispose();
  }
}
