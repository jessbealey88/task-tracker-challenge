def todo_checker(text)
fail "You didn't enter any text to check" if text.empty?
if text.include?("#TODO")
    "You have tasks to do!"
else
    "You have nothing to do"
end
end