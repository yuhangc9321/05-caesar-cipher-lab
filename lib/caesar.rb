def caesar_encode(string,offset)
    upper,lower = [*("A".."Z")],[*("a".."z")]
    string.split("").map do |character|
        if /\p{Upper}/ =~ character
            upper[(upper.index(character) + offset)%26]
        elsif /\p{Lower}/ =~ character
            lower[(lower.index(character) + offset)%26]
        else
            character
        end
    end*""
end

def caesar_decode(string,offset)
    upper,lower = [*("A".."Z")],[*("a".."z")]
    string.split("").map do |character|
        if /\p{Upper}/ =~ character
            upper[(upper.index(character) - offset)%26]
        elsif /\p{Lower}/ =~ character
            lower[(lower.index(character) - offset)%26]
        else
            character
        end
    end*""
end
