import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/generated/l10n.dart';
import 'package:lively/src/feature/music/bloc/azura_api_now_paying/azura_api_now_playing_cubit.dart';
import 'package:lively/src/feature/music/model/azura_model/azura_model.dart';


class ListenersAmount extends StatelessWidget {
  const ListenersAmount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<AzuraApiNowPlayingCubit, AzuraApiModel?>(
        buildWhen: (previous, current) =>
            previous?.listeners.unique != current?.listeners.unique,
        builder: (context, state) {
          final unique = state?.listeners.total ?? 0;

          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            unique != 0 ? Text('$unique ',
              style: textTheme.displayLarge) : SizedBox(
                width: 50,
                child: Image.asset('assets/animation/infinity_animation.gif', fit: BoxFit.contain,)),
                Text((unique != 0 ? '' : ' ' )+'${localizations.lively(unique)}',
              style: textTheme.displayLarge)
          ],);
        });
  }
}
