import 'Semigroup.dart';

abstract class Monoid<F> extends Semigroup<F> {

  F zero();

}

class NumMonoid extends NumSemigroup implements Monoid<num> {
  num zero() => 0;
}

class ListMonoid<A> extends ListSemigroup<A> implements Monoid<List<A>> {
  List<A> zero() => [];
}

main() {
  Monoid<num> m = new NumMonoid();
  print(m.zero());
  print(m.append(1, 2));

  Monoid<List<num>> m_ = new ListMonoid<num>();
  print(m_.zero());
  print(m_.append([1], [2]));
}