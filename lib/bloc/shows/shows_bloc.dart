import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'shows_event.dart';
part 'shows_state.dart';

class ShowsBloc extends Bloc<ShowsEvent, ShowsState> {
  ShowsBloc() : super(ShowsInitial()) {
    on<ShowsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
