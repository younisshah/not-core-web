import { foobar } from "../child1";
import { bazQux } from "../child2";

export function runApp() {
  console.log("Running app...");
  foobar();
  bazQux();
}
