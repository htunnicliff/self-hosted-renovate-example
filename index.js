import * as cow from "cowsay";

function hello() {
  const message = cow.say({ text: "Hello, world!" });
  console.log(message);
}

hello();
