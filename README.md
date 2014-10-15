# If/when you want to add new flashcards:
# Open the seeds.rb file in Sublime
# Add as many cards as you want to the programming deck that starts on line 38 using the format:
# programming.cards << (Card.create!(question: "", answer: "", wrong_answer: "", wrong_answer2: "", wrong_answer3: ""))


# To play the game:
# Open the directory in your terminal and type:
# 1. bundle install
# 2. bundle exec rake db:drop
# 3. bundle exec rake db:create
# 4. bundle exec rake db:migrate
# 5. bundle exec rake db:seed
# 6. bundle exec shotgun

# Open your browser (chrome) and go to "localhost:9393"
# Win.