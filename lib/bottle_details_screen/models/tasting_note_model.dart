import 'package:equatable/equatable.dart';

class TastingNoteViewModel extends Equatable {

  final List<String>? nose;
  final List<String>? palate;
  final List<String>? finish;


  TastingNoteViewModel(
      {required this.nose, required this.palate,required this.finish});

  @override
  List<Object?> get props => [nose,palate,finish];

  static  TastingNoteViewModel tastingNoteViewModel
  =TastingNoteViewModel(nose: ['1','2','3','4'],palate:['5','6','7','8'],
  finish: ['9','10','11','12']);
}