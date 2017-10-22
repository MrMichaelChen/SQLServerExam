declare @S int,@I int,@NUMS int
    set @S=0 
    set @I=1  
    set @NUMS=0 
    while(@I<=500)
    begin
        if((@I%3=0)or(@I%7=0))
        begin
            set @S=@S+@I 
            set @NUMS=@NUMS+1
            print @I 
        end
        set @I=@I+1 

    end
    print @S  
print @NUMS  
