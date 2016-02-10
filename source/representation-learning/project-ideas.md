# Csaba

- What is missing within neural networks?
- Where are they weakest *in practice*? 

# Representation Learning

## Chopped and Screwed

- Train deep networks on different tasks (classification in different image sets, or even generative models of e.g. music/characters)
- Tear out the final layers for each of these networks and freeze the remainder as a feature mapping function
- Using these feature extraction functions, train a final layer and compare the performance.

## Expanding Neural Networks

- Expanding the classes considered, or expanding the input space, or expanding the input layer (either adding a new layer, or adding nodes to a layer)
- How do we do this in a responsible way?
- Do we gain any advantage over just training from scratch?

## Catastrophic Forgetting

- How do we solve for that?

## Planning/Long-Term

- How can a neural network play a game that requires strategy/long-term planning?
- For example, a simple strategy game.

# Neat

- Neural-style for audio/video
- Word-embeddings /captioning --> image generation
- LSTM/recurrent networks for downsampling (would probably require a matrix/tensor approach)
- Train on classification with small videos and LSTM.
- Autoencoders that strip out the background around objects (e.g., reverse-greenscreen when removing the background around people).
- To what extent does data augmentation (especially with adversarial examples) help or hinder?


# Network Architecture

- Incentivizing (or enforcing) columnar structure
- Cyclical activation functions
- Randomly sampling from the powerset of feature combinations

# Networks on Networks

## Multi-task

We want to be able to train "meta" networks that help us train other networks.

- Stepsize selection via an ancilliary network
- Regularization parameter selection via ancilliary network
- Choosing from among training images for adverserial examples
- Learning to prune (via ancilliary network)
- Networks that aim to minimize error over a window, with a DQN/bandit like approach

### Guiding Training

- A network that allocates a proxy reward 
- Learning multiple policies within a single network (e.g., explore vs. optimize score)

# Adverserial

- An adverserial network, but also with a helper network
- Networks that detect image alteration, e.g. deep-dream/neural style
- Selecting from among a set of hidden, "natural" images for adverserial examples
- Learning whether an individual patch of an image is "natural" or not

# Blue Sky

- Rendering images from videogames (getting access to the visible objects somehow, e.g. as a string representation) and performing classification on those.

# Look Up

- "Group invariance theorem"
- Csaba's ideas about networks training from memory and optimizing memory
- Norms as different kinds of convex shapes in a particular dimension.
    + That is, different ways of drawing an n-ball under that norm
    + Measuring differences between norms
        * e.g., XOR between the two 
        * This provides a metric-- a norm on norms.