Here Final_Project_ETH_BEG.sol is the main file 

Here i am going to give a small ellaboration , that what my program gonna do.

1. ) I created structure datatype as "Token" which will provide the body to store "name" , "Abbreviation" and "Balance" of the Tokens
2. ) Secondly, I created a mapping from address to account balance as "Balance"
3. ) I made a "putDetails" function to appoint the name and abbr to the token that we made as "f"
4. ) Next I made the "mint" function as required by the project, which will either put or add the balance to the token for the particular address
5. ) Further, I created the "burnIt" function to destroy or deduct the balance from the token after verifying whether the token has the ample amount of to balance for
     deduction , if not , then it simply revert backs to preceeding value.
6. ) then I made two more addd-on functions as "toShow" and "infoUpdate"
      a.) "toShow" function simply print all the details of the token
      b.) while "infoUpdate" function ,updates the value for "name" and "abbr" for the token
