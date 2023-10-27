import "@stdlib/deploy";

contract CounterContract with Deployable {
    val: Int as uint32;
    id: Int as uint32;

    init(id: Int) {
        self.val = 0;
        self.id = id;

    }

    get fun counter(): Int {
  return self.val;
}

    get fun id(): Int{
        return self.id;
    }

receive("increment") {
  self.val = self.val + 1;
  }


}
