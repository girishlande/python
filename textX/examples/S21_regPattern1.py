import nltk
from nltk.tokenize import word_tokenize
from nltk.tokenize import sent_tokenize

text = "The expect shampoo volume is 250ml (250,000mm3).Height Requirement.The height of the shampoo bottle should be not more than 180mm."
words = word_tokenize(text)

pos_tagged_text = nltk.pos_tag(words)
print(pos_tagged_text)

sentences = sent_tokenize(text)
print(len(sentences), 'sentences:', sentences)

