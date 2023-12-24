
# This program generates 20 terms of a sequence by a recurrence relation.
Un = 100                    # Un = each term of the sequence. Initially = U0
counter = 0
while Un>0:
    print(Un)
    counter += 1
    Un = 1.01*Un - 1.01     # Set Un to the next term of the sequence

print("O programa teve {} termos".format(counter))