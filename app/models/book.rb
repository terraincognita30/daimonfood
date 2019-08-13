class Book < ApplicationRecord

def complete
  if @book.completed == false
    return "Incomplete"
  else
    return "Complete"
  end
end

end
