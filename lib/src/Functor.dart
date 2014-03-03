import 'Fn.dart';

abstract class Functor<F> {

  F<B> map(F<A> fa, Fn<A,B> f);

}

class ListFunctor<A,B> implements Functor<List> {

  List<B> map(List<A> fa, Fn<A,B> f) {
    List<B> l = new List<B>();
    for (A a in fa)
      l.add(f(a));
    return l;
  }
}

main() {

  List<num> l = new List<num>.filled(3, 1);
  Functor<List> fl = new ListFunctor<num, num>();

  print(fl.map(l, new Fn((x) => x + 4)));
}