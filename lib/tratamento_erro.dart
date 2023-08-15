import 'package:live_abertura/live_abertura.dart';

void main (){

  final result = RepositoryX().metodoX(true);

  switch(result) {
    case (error: _, : final sucesso?) : print('Deu bom $sucesso');
    case (:final error?, sucesso: _) : print('Deu ruim $error');
  }


  if(result.error != null){
     print('deu ruim');

  } else {
    print('deu bom ${result.sucesso}');
  }

}


class RepositoryX {
  ({Error? error, String? sucesso}) metodoX(bool param){
    if(param){
      throw (error: AssertionError(), sucesso: null);
    } else {
      return (error: null, sucesso: 'ok');
    }
    
  }
}