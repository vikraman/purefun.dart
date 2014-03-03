class Fn<A, B> {

  Function f;

  Fn(B f(A a)) {
    this.f = f;
  }

  B call(A a) => this.f(a);
}