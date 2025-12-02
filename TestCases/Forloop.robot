*** Settings ***
*** Test Cases ***
#{
   # FOR    ${I}    IN RANGE    1    10
  #      Log To Console    ${I}
  #  END

#forloop2
   # FOR  ${I}   IN  1 2 3 4 5 6 7 8 9
     #     Log To Console    ${I}
   # END

#forloopwithlist
 #   @{items}     create list  1  2  3  4  5
  ##  FOR  ${I}  IN  @{items}
   #         Log To Console  ${I}
  #END
#forloopwith
 #   FOR  ${I}  IN  CHANDU   TIGER   NTR RAM
  #          Log To Console  ${I}
   # END
forloopwithlistitems
    @{names}    create list  CHANDU   TIGER   NTR RAM
        FOR  ${I}  IN  @{names}
            Log To Console  ${I}
        END

forLoopwithexit
   @{items}  create list    1   2   3   4   5
    FOR  ${i}   IN  @{items}
            Log to console  ${i}
            exit for loop if    ${i}==3
    END
