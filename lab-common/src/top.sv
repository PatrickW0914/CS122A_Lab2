module top (
    input wire [3:0] bcd,
    output logic [6:0] seg7
);

/** Logic */

    always_comb begin
        if (bcd == 4'd0) 
            seg7 = 7'b1111110; // 7E
        else if (bcd == 4'd1)
            seg7 = 7'b0110000; // 30
        else if (bcd == 4'd2)
            seg7 = 7'b1101101; // 6D
        else if (bcd == 4'd3)
            seg7 = 7'b1111001; // 79
        else if (bcd == 4'd4)
            seg7 = 7'b0110011; // 33
        else if (bcd == 4'd5)
            seg7 = 7'b1011011; // 5B
        else if (bcd == 4'd6)  
            seg7 = 7'b1011111; // 5F
        else if (bcd == 4'd7)
            seg7 = 7'b1110000; // 70
        else if (bcd == 4'd8)
            seg7 = 7'b1111111; // 7F
        else if (bcd == 4'd9)
            seg7 = 7'b1111011; // 7B
        else if (bcd == 4'd10) // A
            seg7 = 7'b1110111; // 77
        else if (bcd == 4'd11) // b
            seg7 = 7'b0011111; // 1F
        else if (bcd == 4'd12) // C
            seg7 = 7'b1001110; // 4E
        else if (bcd == 4'd13) // d
            seg7 = 7'b0111101; // 3D
        else if (bcd == 4'd14) // E
            seg7 = 7'b1001111; // 4F
        else if (bcd == 4'd15) // F
            seg7 = 7'b1000111; // 47
        else 
            seg7 = 7'b0000000; 
    end

endmodule