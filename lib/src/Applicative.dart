import 'Fn.dart';
import 'Functor.dart';

abstract class Applicative<F> extends Functor<F> {

  F<A> point(A a);

  F<B> ap(F<A> fa, F<Fn<A,B>> f);

}

class ListApplicative<A,B> extends ListFunctor implements Applicative<List> {

  List<A> point(A a) =>
    [a];

  List<B> ap(List<A> fa, List<Fn<A,B>> f) {
    List<B> l = new List<B>();
    for (A a in fa)
      for (Fn<A,B> x in f)
        l.add(x(a));
    return l;
  }
}

main() {

  List<num> l = new List<num>.filled(3, 1);
  List<Fn<num,num>> ll = new List<Fn<num,num>>.filled(2, new Fn<num,num>((x) => x + 5));
  Applicative<List> al = new ListApplicative<num,num>();

  print(al.point(1));
  print(al.ap(l, ll));
}