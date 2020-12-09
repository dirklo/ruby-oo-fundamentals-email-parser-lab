# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(strings)
        @emails = strings
    end

    def parse
        final = [] 
        if @emails.class == String
            @emails.split(" ").each do |email|
                new_email = email.split(",").join
                if !final.include?(new_email)
                    final << new_email
                end
            end
        elsif @emails.class == Array
            @emails.each do |email|
                if !final.include?(email)
                    final << (email)
                end
            end
        end
        final
    end    
end


# email_addresses = ["avi@test.com", "arel@test.com","test@avi.com", "test@arel.com"]
# parser = EmailAddressParser.new(email_addresses)

# puts parser.parse