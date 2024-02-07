import 'dart:developer';

typedef Responser<T> = Either<String, T>;

Responser<T> failed<T>(String l, {bool logError = true}) {
  if (logError) {
    log('Error: $l');
  }
  return Left<T>(l);
}

Responser<T> success<T>(T t) => Right<T>(t);

abstract class Either<L, R> {
  const Either();
  B fold<B>(B Function(L l) ifLeft, B Function(R r) ifRight);
  bool isLeft() => fold((_) => true, (_) => false);
  bool isRight() => fold((_) => false, (_) => true);
  R asRight() => this as R;
  L asLeft() => this as L;
}

class Left<R> extends Responser<R> {
  final String _l;
  const Left(this._l);
  String get value => _l;
  @override
  B fold<B>(B Function(String) ifLeft, B Function(R) ifRight) => ifLeft(_l);
  @override
  bool operator ==(other) => other is Left && other._l == _l;
  @override
  int get hashCode => _l.hashCode;
}

class Right<R> extends Responser<R> {
  final R _r;
  const Right(this._r);
  R get value => _r;
  @override
  B fold<B>(B Function(String) ifLeft, B Function(R) ifRight) => ifRight(_r);
  @override
  bool operator ==(other) => other is Right && other._r == _r;
  @override
  int get hashCode => _r.hashCode;
}
