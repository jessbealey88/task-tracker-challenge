# grammar checker method design recipe


## 1. Describe the Problem

>As a user
>So that I can keep track of my tasks
>I want to check if a text includes the string #TODO.


## 2. Design the Method Signature


```ruby
result = todo_checker(text)


# text will be a string

# Return a string to let the user know if text contains #TODO

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
#1
todo_checker("")
# => fails "You didn't enter any text to check"

#2
todo_checker("#TODO: gym, shopping, laundry")
# => "You have tasks to do!"

# 3
todo_checker("You have things #TODO today")
# => "You have tasks to do!"

# 4
todo_checker("What are you going #TODO")
# => "You have tasks to do!


# 5
todo_checker("gym, shopping, laundry")
# => "You have nothing to do."

# 6
todo_checker("todo: code, sleep, eat")
# => "You have nothing to do"








```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._