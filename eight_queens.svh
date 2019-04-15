`define MAX(a, b)  (a > b ? a : b)
`define MIN(a, b)  (a < b ? a : b)


class eight_queens;
  rand bit cbm[8][8]; // 8x8 chess board model, 1 -> Queen placed

 
  constraint eight_queens_c {
    foreach( cbm[r1, c1] ) {
      if(cbm[r1][c1] == 1'b1) {
        foreach( cbm[r2, c2] ) {
          // only one queen can be placed in the same row or column
          (r2 == r1 && c2 != c1) || 
          (c2 == c1 && r2 != r1) -> cbm[r2][c2] == 1'b0;

          // only one queen can be placed in diagonal direction
          // [r1, c1] and [r2, c2] are diagonally placed when distance along x-axis and y-axis are equal AND 
          // they are NOT in the same spot
          !(r2 == r1 && c2 == c1) && 
          (`MAX(r1, r2) - `MIN(r1, r2)) == (`MAX(c1, c2) - `MIN(c1, c2)) -> cbm[r2][c2] == 1'b0;
        } // foreach
      } // if
    } // foreach
  }

  // total number of queens should be equal to 8 - one queen per row/column
  constraint num_queens_c {
      // both VCS 2014.10 and IES 15.20 don't support this 2-D iterative syntax 
      // though it seems to be valid as per LRM
      //cbm.sum() with (item.sum() with (int'(item))) == 8;
    
      // VCS 2014.10 supports sum() on 2-D array 
      // IES 15.20 does not support sum() on 2-D array
    `ifdef SIM_VCS
      cbm.sum() with (int'(item)) == 8;
    `else
      foreach( cbm[row] ) {
        cbm[row].sum() with (int'(item)) == 1;
      }
    `endif // SIM_VCS
  }

  // convert to string method
  function string convert2string();
    string str;
    str = "";
    for(int row = 0; row < 8; row++) begin
      for(int col = 0; col < 8; col++) begin
        str = {str, $sformatf("%s  ", cbm[row][col] == 1'b1 ? "Q" : "*")};
      end // for
      str = {str, "\n"};
    end // for
    return str;
  endfunction // convert2string

  // compare method
  // returns 1 when this and rhs objects are equal
  function bit compare(eight_queens rhs);
    foreach( this.cbm[row, col] ) begin
      if( this.cbm[row][col] != rhs.cbm[row][col] ) begin
        return 1'b0;  // mismatch -> not equal
      end // if
    end // foreach
    return 1'b1;  // all bits matched -> equal
  endfunction // compare

endclass // eight_queens
