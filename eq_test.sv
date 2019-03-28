program eq_test;

  initial begin
    eight_queens eq, uniq_eqs[$];
    bit uniq;
    
    $display("START EQ TEST ...");
    // randomize eq repeatedly and print when a unique solution is found.
    repeat( 1000 ) begin
      uniq = 1'b1;
      eq = new();
      if( ! eq.randomize() ) begin
        $display("ERROR: randomize failed!");
      end else begin
        foreach( uniq_eqs[ii] ) begin
          if( eq.compare(uniq_eqs[ii]) ) begin
            uniq = 1'b0;  // duplicate
          end // if
        end // foreach

        if( uniq ) begin  // unique solution found.
          $display("=== RAND EIGHT QUEENS (%0d) ===", uniq_eqs.size());
          $display("%s", eq.convert2string());
          uniq_eqs.push_back( eq );
        end // if 
      end // if
    end // repeat
  end // initial

endprogram // eq_test
