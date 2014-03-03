import 'Fn.dart';
import 'Applicative.dart';

abstract class Monad<F> extends Applicative<F> {

  F<B> bind(F<A> fa, Fn<A,F<B>> f);

}

class ListMonad<A,B> extends ListApplicative<A> implements Monad<List> {

  List<B> bind(List<A> fa, Fn<A,F<B>> f) {
    List<B> l = new List<B>();
    for (A a in fa)
      for (B b in f(a))
        l.add(b);
    return l;
  }

}

main() {

  List<num> l = new List<num>();
  l.addAll([1,2,3]);

  Monad<List> m = new ListMonad<num,num>();

  print(m.bind(l, new Fn<num,List<num>>((x) => m.point(x+5))));
  print(m.bind(l, new Fn<num,List<num>>((x) => [x, x+1, x+2])));
}
