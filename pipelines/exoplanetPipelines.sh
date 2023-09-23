#!/usr/bin/env bash
echo "Running exoplanetProcessing.sh"

# ---- APACHE ----
cd ./../data/planets || exit

# -- Q1 --
echo "-- Q1 --"
# Write a pipline that for all planets that were discovered using Pulsar Timing displays the discovery year, name  and facility separated by spaces.
# Example: 2017 PSR B0329+54 b Multiple Facilities
pulsarTiming=$(grep "Pulsar Timing" exoplanets | awk -F ',' '{print $6, $1, $7}')
# Print pulsarTiming
echo "Pulsar Timing:"
echo "$pulsarTiming"


# -- Q2 --
echo "-- Q2 --"
# Write a pipeline that finds the year in which most exoplanets were discovered. Also provide the number of planets discovered that year.
# Example: 1505 2016
highestYear=$(cut -d ',' -f 6 exoplanets | sort | uniq -c | sort -nr | head -n 1)
echo "Highest year:"
echo "$highestYear"

# -- Q3 --
echo "-- Q3 --"
# Write a pipeline that counts the number of exoplanets discovered between 1997 and 2006
intervalPlanets=$(cut -d ',' -f 6 exoplanets | awk -F '/' '{if ($1 >= 1997 && $1 <= 2006) print}' | wc -l)
# Print intervalPlanets
echo "Planets in interval:"
echo "$intervalPlanets"

# -- Q4 --
echo "-- Q4 --"
# Write a pipeline that outputs the names of two exoplanets that have the highest number of starts in the planetary system.
highestStars=$(tail -n +2 exoplanets | sort -t ',' -k 3,3nr -k 1,1 | cut -d ',' -f 1,3 | head -n 2)
# Print highestStars
echo "Highest stars:"
echo "$highestStars"

cd ../../pipelines/ || exit
