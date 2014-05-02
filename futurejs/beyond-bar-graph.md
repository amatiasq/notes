BEYOND THE BAR GRAPH: CREATIVE VISUALIZATION WITH D3.JS
=======================================================

d3 is a tool to manipulate the DOM in a data-presentation focused way

    d3.csv('/planets.csv', function(planetsArray) {
      planets = svg.selectAll('circle.planet')
        .data(planetsArray)
        .enter()
        .append('circle')
        .attr('r', 10)
        ...
    });

d3 helps us scale

  maxPlanetRaduis = d3.max(planetsArray, function(d) {
    return d.diameter / 2;
  });

  planetRadiusScale = d3.scale.linear();
    .domain([ 0, maxPlanetRadius ])
    .range([ 0, maxRadius ])

  planetRadiusScale(circle.radius)
