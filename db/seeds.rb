# u = User.create!(first_name: "Isaac", email: "ik@gmail.com", password: "a")

who = Deck.create!(name: "Doctor Who Trivia")
bart = Deck.create!(name: "Simpsons Trivia")
programming = Deck.create!(name: "Programming Trivia")

# who_round = Round.create(user_id: u.id, deck_id: who.id)
# bart_round = Round.create(user: u, deck: bart)

# c = Card.create(question: "yes", answer: "no")

# who.cards << (Card.create!(question: "", answer: ""))
# who.cards << (Card.create!(question: "yes?", answer: "no"))
# who.cards << (Card.create!(question: "si?", answer: "no"))
who.cards << (Card.create!(question: "yes?", answer: "no", wrong_answer: "Maybe", wrong_answer2: "Nope", wrong_answer3: "I dunno"))
who.cards << (Card.create!(question: "si?", answer: "no", wrong_answer: "Maybe", wrong_answer2: "Nope", wrong_answer3: "I dunno"))
who.save

# bart.cards << (Card.create!(question: "", answer: ""))
# bart.cards << (Card.create!(question: "Who is Homer's favorite person to strangle?", answer: "Bart"))
# bart.cards << (Card.create!(question: "Who is the youngest Simpson?", answer: "Maggie", ))
# bart.cards << (Card.create!(question: "Who is Bart's best friend?", answer: "Milhouse"))
# bart.cards << (Card.create!(question: "How old is Bart?", answer: "10"))
# bart.cards << (Card.create!(question: "What is the only word Maggie Simpson has ever spoken?", answer: "Daddy"))
# bart.cards << (Card.create!(question: "Who is Bart's arch nemesis whom attempts to murder Bart every time they meet?", answer: "Sideshow Bob"))
# bart.cards << (Card.create!(question: "What is the name of the beer that Homer drinks?", answer: "Duff"))
bart.cards << (Card.create!(question: "Who is Homer's favorite person to strangle?", answer: "Bart", wrong_answer: "Maggie", wrong_answer2: "Lisa", wrong_answer3: "Marge"))
bart.cards << (Card.create!(question: "Who is the youngest Simpson?", answer: "Maggie", wrong_answer: "Bart", wrong_answer2: "Lisa", wrong_answer3: "Marge"))
bart.cards << (Card.create!(question: "Who is Bart's best friend?", answer: "Milhouse", wrong_answer: "Ralph", wrong_answer2: "Apu", wrong_answer3: "Nelson"))
bart.cards << (Card.create!(question: "How old is Bart?", answer: "10", wrong_answer: "9", wrong_answer2: "8", wrong_answer3: "11"))
bart.cards << (Card.create!(question: "What is the only word Maggie Simpson has ever spoken?", answer: "Daddy", wrong_answer: "Ma-ma", wrong_answer2: "Bart", wrong_answer3: "Ho-mer"))
bart.cards << (Card.create!(question: "Who is Bart's arch nemesis whom attempts to murder Bart every time they meet?", answer: "Sideshow Bob", wrong_answer: "Krusty The Clown", wrong_answer2: "Lisa", wrong_answer3: "Nelson"))
bart.cards << (Card.create!(question: "What is the name of the beer that Homer drinks?", answer: "Duff", wrong_answer: "Bluff", wrong_answer2: "Scruff", wrong_answer3: "Fluff"))

bart.save

# programming.cards << (Card.create!(question: "", answer: "", wrong_answer: "", wrong_answer2: "", wrong_answer3: ""))
programming.cards << (Card.create!(question: "Adds an element to the beginning of an array", answer: "unshift", wrong_answer: "push", wrong_answer2: "pop", wrong_answer3: "first"))
programming.cards << (Card.create!(question: "Returns the last element(s) from the array without changing the array, or returns nil if empty?", answer: "last", wrong_answer: "pop", wrong_answer2: "unshift", wrong_answer3: "shift"))
programming.cards << (Card.create!(question: "Takes an array and organizes it in ascending order.", answer: "sort", wrong_answer: "map", wrong_answer2: "flatten", wrong_answer3: "each"))
programming.cards << (Card.create!(question: "Who is the awesomest person in the whole world?", answer: "Alex Drennen", wrong_answer: "Steve", wrong_answer2: "Bob", wrong_answer3: "Jim"))

programming.save


# Guess.create!(correct?: true, round_id: who_round.id, card_id: 1)
