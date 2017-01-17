def alphanum(len)
    [*'a'..'z', *'A'..'Z', *'0'..'9'].shuffle.slice(0,len).join
end

