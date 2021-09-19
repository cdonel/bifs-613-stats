# Week 7 Viterbi algorithm
# BIFS 613

install.packages(('HMM'))

# Invoke Libraries

library(HMM)

# Emission labels

emission_labels <- c(1, 2, 3, 4, 5, 6)


# Transition probabilities

tranxProbs <- matrix( c(0.6, 0.4, 0.4, 0.6), 2)


# Emission probabilities

emissionProb <- matrix( c(0.2, 0.3, 0.2, 0.1, 0.1, 0.1), 1 )


# Hidden states (L = loaded, F = fair)

hidden_states <- c('L', 'F')


# Create the HMM Model

Hmm <- initHMM(hidden_states, emission_labels, startProbs=NULL, transProbs=tranxProbs, emissionProbs=emissionProb)


# Enter the observations

observed_emissions <- c(1,1,2,3,1,1,1,2,3,3,4,4,4,5,5,5,6,6,1,2,2,2,2)


# Now let's run the Viterbi Algorithm

viterbi <- viterbi(Hmm, observed_emissions)


