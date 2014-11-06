NB. ProjectEuler-J library

NB. Description of libary functions
pej_help=:pej=:>&.>(<'ProjectEuler-J Library'),:<3 2$ 'pej_ans';'Executes and echos solution';'pej_cat';'Shows contents of solution file';'pej_sol';'Returns of solution file'

NB. Shows contents of solution script to problem number specified
pej_cat=:(1!:1,echo)@<@pej_sol

NB. Returns the name of solution script to problem number specified
pej_sol=:'problem','.ijs',~[:|.3$!.'0'|.@":

NB. Executes solution script to problem number specified
pej_ans=: monad define
  NB. Solution file name
  sfile=.pej_sol y

  NB. If file exists
  if. #1!:0 sfile do.
    NB. Efficient solution file name
    efile=.(10&{.,'.eff',10&}.)sfile

    NB. If efficient file exists
    if. #1!:0 efile do. 
      NB. Contents of efficient file
      script=.1!:1<efile
    else.
      NB. Executable content of solution file
      script=.({.~[:{.@I.[:0&='NB'&i.)1!:1<sfile
    end.

    NB. Execute script and echo result
    0!:0;(}:,[:<'echo '&,@>@{:)}:<;.2 script
  else.
    echo 'FILE NOT FOUND'
  end.
)
