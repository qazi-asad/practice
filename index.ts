function Foo() {
  this.bar = 10;
}

Foo.prototype.bar = 42;

var foo = new Foo();
console.log("1:", foo.bar);

delete foo.bar;
console.log("2:", foo.bar);

//////////////////////////////////////////////////////////////////////////////////////

let sayHello = function (name: string) {
  return { say: `Welcome ${name}` };
};

console.log(sayHello("John"));

//////////////////////////////////////////////////////////////////////////////////////

let aarr = [1, "a", { x: 1 }, { y: 2 }, [1, 2], { x: 1 }];
console.log(aarr.indexOf({ x: 1 }));

//////////////////////////////////////////////////////////////////////////////////////

/* class TuringQuality<T> {
  private data = [];
  push = (item: T) => this.data.push(item);
  pop = (): T => this.data.shift();
}

const turingQuality = new TuringQuality<number>();
turingQuality.push(1);
turingQuality.push("1");
console.log(turingQuality); */

//////////////////////////////////////////////////////////////////////////////////////

let obj = {
  x: 1,
  y: "TUring",
  z: { a: 99 },
  t: [1, 2],
};

Object.freeze(obj);
obj.x = 10;
obj.y = "Typescript";
obj.z.a = 1;
obj.t[0] = 3;
obj.t[1] = 4;
console.log(obj);

//////////////////////////////////////////////////////////////////////////////////////

var a: any;
var b: number = 0;

function check(x: any, name: any) {
  if (x == null) {
    console.log(name + " ==null");
  }

  if (x === null) {
    console.log(name + " ===null");
  }

  if (typeof x === "undefined") {
    console.log(name + " ===undefined");
  }
}

check(a, "a");
check(b, "b");

//////////////////////////////////////////////////////////////////////////////////////

/* interface calcy {
  mul(n: number): any;
}

class display implements calcy {
  x: number = 0;

  mul(n: number): any {
    this.x = n * n;
  }
  mul(n: string): any {
    this.x = n + n;
  }
}

let arr = new display();
arr.x = 3;
arr.mul(9); */
