module GETINST(
    getinst_inst_o,
    clk_i,
    rst_n_i
)

input         clk_i;
input         rst_n_i;
output [31:0] getinst_inst_o;

wire       clk_i;
wire       rst_n_i;
reg [31:0] getinst_inst_o;

reg [31:0] pc;

always@(posedge clk) begin
    if(!rst_n_i) begin
        getinst_inst_o <= 31'd0;
        pc <= 31'd0;
    end
    else begin
        pc <= pc + 4;
        getinst_inst_o <= 
    end
end