module ALU(
    dmem_rs1_i,
    dmem_rs2_i,
    trans_instruct_i,
    alu_rd_o,
    clk_i,
    rst_n_i
)

input dmem_rs1_i;
input dmem_rs2_i;
input trans_instruct_i;
input clk_i;
input rst_n_i;
output alu_rd_o;

wire [31:0] dmem_rs1_i;
wire [31:0] dmem_rs2_i;
wire [4:0]  trans_instruct_i;
wire        clk_i;
wire        rst_n_i;

reg  [31:0] alu_rd_o;

always@(posedge clk_i) begin
    if(!rst_n_i)
        alu_rd_o <= 31'd0;
    else begin
        case(trans_instruct_i):
            1'b1: alu_rd_o <= dmem_rs1_i + dmem_rs2_i;
            default: alu_rd_o <= 31'd0;
        endcase
    end
end

endmodule