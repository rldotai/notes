

Neural networks are currently the state-of-the-art in machine learning across a wide variety of tasks.
There are a number of hand-wavy explanations for why they work so well in diverse use cases, but in practice there are a number of heuristic, ad-hoc methods that are necessary to reach that state-of-the-art performance.

# Training

## Learning Rates

Start with a small learning rate, then slowly increase it, before reducing it over time.

The reasoning behind this is that, if the learning rate is too high to start, the network can diverge, due to gradient explosion.
However, if a small learning rate is used to start, then the hope is that it will find a more stable region of the parameter space, where having a higher learning rate helps rather than hinders.
Eventually, you will want to "fine tune" the network towards the end of training, so reducing the learning rate at this point is fairly natural.

[Source](http://arxiv.org/pdf/1506.02640.pdf)

## Batch Sizes

- Messing with the batch size seems to improve performance in some ways... larger batch sizes tending to improve performance, both in terms of computational efficiency and with regards to the objective function.
- Past a certain point, batch sizes don't improve computational efficiency.