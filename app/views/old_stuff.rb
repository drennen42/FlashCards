# <form action="/cards/<%= @card.id %>" method="post">
#    <input class="answer" type="text" name="answer" placeholder="Answer" autocomplete="off" autofocus="autofocus"/>
#    <button type="submit">Submit</button>
#  </form> -->



# <!-- <form action="/cards/<%= @card.id %>" method="post">
#   <ul>
#     <li><input class="answer" type="checkbox" value="#{@card.answer}"><%= @card.answer %></li>
#     <li><input class="answer" type="checkbox" name="vehicle" value="#{@card.wrong_answer}"><%= @card.wrong_answer %></li>
#     <li><input class="answer" type="checkbox" name="vehicle" value="#{@card.wrong_answer2}"><%= @card.wrong_answer2 %></li>
#     <li><input class="answer" type="checkbox" name="vehicle" value="#{@card.wrong_answer3}"><%= @card.wrong_answer3 %></li>
#   </ul>
#   <button type="submit">Submit</button>
# </form>