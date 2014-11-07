NB. ProjectEuler-J library

NB. Displays pej libary functions
pej_help=: monad define
  pej_fun=.<'pej_exec';'Executes and displays output';'pej_exec 12 NB. Executes and prints output of problem012.ijs'
  pej_fun=.pej_fun,<'pej_file';'Returns name of solution file';'pej_file 5 NB. Returns string "problem005.ijs"'
  pej_fun=.pej_fun,<'pej_show';'Displays contents of solution file';'pej_show 13 NB. Shows contents of problem013.ijs'
  pej_fun=.>pej_fun,<'pej_help';'Prints pej functions';'pej_help'''' NB. Prints out all functions',LF,'pej_help''pej_file'' NB. Prints out detailed info on pej_file function'

  NB. Get line of argument function 
  cur=.I.;([:('pej_'&,^:([:-.[:'pej_'&-:4&{.)y)&-:"1>)&.>0{"1 pej_fun

  NB. If argument function is found
  if. #cur do.
    echo ;LF,&.>LF,~&.>_2{.pej_fun{~{.cur
  else.
    echo 2{."1 pej_fun
  end.
)

NB. Returns the name of solution script to problem number specified
pej_file=:'problem','.ijs',~[:|.3$!.'0'|.@":

NB. Shows contents of solution script to problem number specified
pej_show=:(1!:1,echo)@<@pej_file

NB. Executes solution script to problem number specified
pej_exec=: monad define
  NB. Solution file name
  sfile=.pej_file y

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
