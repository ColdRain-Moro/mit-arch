import TestBenchTemplates::*;
import Multipliers::*;

// Example testbenches
(* synthesize *)
module mkTbDumb();
    function Bit#(16) test_function( Bit#(8) a, Bit#(8) b ) = multiply_unsigned( a, b );
    Empty tb <- mkTbMulFunction(test_function, multiply_unsigned, True);
    return tb;
endmodule

(* synthesize *)
module mkTbFoldedMultiplier();
    Multiplier#(8) dut <- mkFoldedMultiplier();
    Empty tb <- mkTbMulModule(dut, multiply_signed, True);
    return tb;
endmodule

// Exercise 1
(* synthesize *)
module mkTbSignedVsUnsigned();
    function Bit#(16) test_function( Bit#(8) a, Bit#(8) b ) = multiply_unsigned( a, b );
    Empty tb <- mkTbMulFunction(multiply_signed, test_function, True);
    return tb;
endmodule

// Exercise 3
(* synthesize *)
module mkTbEx3();
    function Bit#(16) test_function( Bit#(8) a, Bit#(8) b ) = multiply_unsigned( a, b );
    Empty tb <- mkTbMulFunction(test_function, multiply_by_adding, True);
    return tb;
endmodule

// Exercise 5
(* synthesize *)
module mkTbEx5();
    Multiplier#(8) dut <- mkFoldedMultiplier();
    Empty tb <- mkTbMulModule(dut, multiply_by_adding, True);
    return tb;
endmodule

// Exercise 7
(* synthesize *)
module mkTbEx7a();
    Multiplier#(8) dut <- mkBoothMultiplier();
    Empty tb <- mkTbMulModule(dut, multiply_signed, True);
    return tb;
endmodule

// Exercise 7
(* synthesize *)
module mkTbEx7b();
    Multiplier#(16) dut <- mkBoothMultiplier();
    Empty tb <- mkTbMulModule(dut, multiply_signed, True);
    return tb;
endmodule

// Exercise 9
(* synthesize *)
module mkTbEx9a();
    Multiplier#(8) dut <- mkBoothMultiplierRadix4();
    Empty tb <- mkTbMulModule(dut, multiply_signed, True);
    return tb;
endmodule

// Exercise 9
(* synthesize *)
module mkTbEx9b();
    Multiplier#(16) dut <- mkBoothMultiplierRadix4();
    Empty tb <- mkTbMulModule(dut, multiply_signed, True);
    return tb;
endmodule

