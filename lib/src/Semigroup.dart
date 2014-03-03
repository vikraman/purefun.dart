abstract class Semigroup<F> {

  F append(F f1, F f2);

}

class NumSemigroup implements Semigroup<num> {
  num append(num f1, num f2) => f1 + f2;
}

class ListSemigroup<A> implements Semigroup<List<A>> {
  List<A> append(List<A> f1, List<A> f2) {
    List<A> l = new List<A>();
    for (A a in f1)
      l.add(a);
    for (A a in f2)
      l.add(a);
    return l;
  }
}

main() {
  Semigroup<num> s = new NumSemigroup();
  num t = s.append(3, 4);
  print(t);

  Semigroup<List<num>> s_ = new ListSemigroup<num>();
  List<num> l1 = new List<num>(); l1.addAll([1,2,3,4]);
  List<num> l2 = new List<num>(); l2.addAll([5,6,7]);
  print(s_.append(l1, l2));
}