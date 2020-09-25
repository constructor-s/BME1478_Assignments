# To add a new cell, type '# %%'
# To add a new markdown cell, type '# %% [markdown]'
# %% [markdown]
# # BME1478 Fall 2020 Assignment #3, Introduction to Python 
# Name: Runjie (Bill) Shi
# Student number: 1001182472
# %% [markdown]
# ## 1. Simulate bacterial population size data that follows an exponential growth.

# %%
#%% Imports
import numpy as np


# %%
#%% a
N0 = 100 # initial population
rate = 0.4 # growth rate


# %%
#%% b
t = np.arange(0, 10.2, 0.2) # an array of time points from 0 to 10 arbitrary time units, in 0.2 increments

# %% [markdown]
# \begin{align}
# \textrm{Population Size} = N_0 \exp(rt)
# \end{align}

# %%
#%% c
# calculate the population of the colony at the time points in t, using the exponential growth function
population_size = N0 * np.exp(rate*t)


# %%
np.random.seed(0) # Reproducible random numbers
population_size_noise = (
    N0 * np.exp(rate*t) + # use the same expression you wrote in (c), 
    np.random.normal(loc=0, scale=250, size=t.shape) #and add noise to the population at each time point
)


# %%
# import matplotlib.pyplot as plt
# plt.plot(t, population_size, '-', t, population_size_noise, 'x')

# %% [markdown]
# ## 2. Let's assume we don't know the rate of the population growth, but we do have the data of the population size across time...

# %%
#%% a
range_rate = np.arange(0.1, 1.1, 0.1) # an array with a range of parameters to test from 0.1, up to and including 1, of step size 0.1


# %%
#%% b
def squared_error(prediction, data):
    r"""
    Function to calculate the sqaured error between two arrays of data.

    Parameters
    ----------
    prediction : array_like
        an array of the predicted data
    data : array_like
        an array of the observed data

    Returns
    -------
    mse : float
        a float containing the calculated mean squared error
    """
    residual = prediction - data # the difference between our prediction and data at each time point, they are arrays, so they will automatically do this element-wise
    mse = np.mean(residual ** 2.0) # square the residual, again, element-wise by default, and then get the mean to calculate the mean squared error
    return mse


# %%
#%% c
mse = [ ] # initialize a list to store our results

for rate_guess in range_rate:

    prediction = N0 * np.exp(rate_guess*t) # generate our prediction for the given growth rate we are testing

    error = squared_error(prediction, population_size_noise) # compare the "prediction" we made in the last line to our "real data" in population_size_noise using the squared_error function we made

    mse.append(error) # add the error for this rate the mse list. how do we add a value to a pre-existing list?

# find the index of the minimum value in mse, look up how to use np.argmin() to do this

idx_min_mse = np.argmin(mse)

# use the index of the min value in mse to obtain the corresponding rate

# remember the arrays are the same size, and generated in order when iterating over range_rates

best_fit = range_rate[idx_min_mse]



print('We predict the rate of growth of this bacterial population to be', best_fit)


