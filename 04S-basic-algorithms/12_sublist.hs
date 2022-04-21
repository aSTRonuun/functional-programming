sublist init' end' xs =  drop init . take end $ xs
    where init = if init' < 0 then  init' + (length xs) else init'
          end = if end' < 0 then end' + (length xs) else end'