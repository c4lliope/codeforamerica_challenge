# Code for America Fellowship Application Challenge

## Challenge

> Write a brief program in the language of your choice to summarize a simple dataset. This is a tab-delimited data file representing U.S. Census tracts around Oakland, CA:
>
> <http://forever.codeforamerica.org/fellowship-2016-tech-interview/tracts.txt>
>
> Your program should calculate the population and housing densities for each place (<https://www.census.gov/geo/reference/gtc/gtc_place.html>), and the densest and sparsest places. You can use your preferred programming language, and decide on the presentation format of the resulting data.

## Assumptions

In order to complete the task, I needed to make an assumption about the
definition of "housing density". I figured that it could either mean:

- number of housing units per land area
- number of people per housing unit

When I was unable to find a clear answer in the provided documentation or
Wikipedia, I went with the first definition: `housing units / land area`.

Another assumption is that the population and housing densities are only based
on a place's *land* area, not its combined land and water area.
Unless I've seriously underestimated the popularity of houseboats,
I think it's a rather safe assumption.

## Running the script

From the root directory of the project, run `ruby report.rb`.

You'll see a report that looks like:

```
Lowest Population Density:
Census Tract 4090 (part)
        Population: 0
        Housing Units: 0
        Land Area: 5235.0
        Population Density: 0.0
        Housing Density: 0.0

Highest Population Density:
Census Tract 4062.01
        Population: 5802
        Housing Units: 1475
        Land Area: 402899.0
        Population Density: 0.014400631423756326
        Housing Density: 0.0036609671406481526


Lowest Housing Density:
Census Tract 4090 (part)
        Population: 0
        Housing Units: 0
        Land Area: 5235.0
        Population Density: 0.0
        Housing Density: 0.0

Highest Housing Density:
Census Tract 4037
        Population: 4652
        Housing Units: 3297
        Land Area: 369193.0
        Population Density: 0.01260045558826955
        Housing Density: 0.008930288494093875
```

## Running the tests

I used a few tests to give me confidence in the code I was writing.
They're located in the `/spec` directory.

To run the specs, run `gem install bundler && bundle install` to install the
necessary dependencies. Afterwards, run `bundle exec rspec` to run the specs.
