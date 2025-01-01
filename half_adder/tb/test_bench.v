`timescale 1ns/1ps
module test_bench;
	reg a;
	reg b;
	wire sum;
	wire carry;

	half_adder dut(
		.a(a),
		.b(b),
		.sum(sum),
		.carry(carry)
	);

	initial begin
		$dumpfile("test_bench.vcd");
		$dumpvars(0, test_bench);

		$display("----------------------------------------------------------------------------------------");
		$display("---------------------------TESTBECNH FOR HALF ADDER ------------------------------------");
		$display("----------------------------------------------------------------------------------------");

		a = 0;
		b = 0;
		#1;
		check_result(calc_expected(a,b));
		#10;
		
		a = 0;
		b = 1;
		#1;
		check_result(calc_expected(a,b));
		#10;

		a = 1;
		b = 0;
		#1;
		check_result(calc_expected(a,b));
		#10;

		a = 1;
		b = 1;
		#1;
		check_result(calc_expected(a,b));
		#10;

		#100;
		$finish;

	end

	function [1:0] calc_expected ( input a_val, input b_val);
		begin
			calc_expected = a_val + b_val;
		end
	endfunction

	task check_result;
		input [1:0]  expected_result;
		begin
			$display("At time: %t, a = 1'b%b, 1'b%b", $time, a, b);
			if(sum == expected_result[0] && carry == expected_result[1]) begin
				$display("-------------------------------------------------------------------------------------------");
				$display("PASSED: Expected sum: 1'b%b, Got: 1'b%b, Expected carry: 1'b%b, Got: 1'b%b", expected_result[0], sum, expected_result[1], carry);
				$display("-------------------------------------------------------------------------------------------");
			end else begin
				$display("-------------------------------------------------------------------------------------------");
				$display("FAILED: Expected sum: 1'b%b, Got: 1'b%b, Expected carry: 1'b%b, Got: 1'b%b", expected_result[0], sum, expected_result[1], carry);
				$display("-------------------------------------------------------------------------------------------");
			end
		end
	endtask
endmodule

