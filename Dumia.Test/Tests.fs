module Dumia.Test.Tests

open System
open Xunit

let add x y = x + y

[<Fact>]
let PassingTest () =
    Assert.Equal(4, (add 2 2))