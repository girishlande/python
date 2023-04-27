from nltk.tokenize import sent_tokenize
text="The expect shampoo volume is 250ml (250,000mm3).Height Requirement.The height of the shampoo bottle should be not more than 180mm."
sentences = sent_tokenize(text)
print(len(sentences), 'sentences:', sentences)