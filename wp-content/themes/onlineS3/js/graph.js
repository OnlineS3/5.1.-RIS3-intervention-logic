/*
 * renders legends (circles and texts) 
 * at the bottom of the page
 * @param {svg} svg 
 * @param {number} height  
 * @param {array} variables
 * @param {array} colors
 */
function renderLegend(svg, height, variables, colors) {
    legend = svg
        .append("g")
        .attr("transform", "translate(65,-30)")
        .attr("font-family", "sans-serif")
        .attr("font-size", 10)
        .attr("text-anchor", "end")
        .style("cursor", "pointer")
        
                
        .selectAll("g")
        .data(variables)
        
        .attr("width",function(d, i) { return d.length * 10; })
        .attr("x", function(d, i) {
                    var previous_elem = this.previousElementSibling;
                    var x_start = (i===0) ? 0 : this.previousElementSibling.x ;
                    return x_start; })
        .attr("y", function(d, i) {
                    var y_order = Math.floor(i/10);
                    return y_order * 15; })
        .enter().append("g")
        .on("click", function(d){
            // check if line is visible
            var opacity = d3.select("."+ d).attr("opacity");
            if (opacity==1) {   // hide line if unchecked
                d3.selectAll("."+d).attr("opacity", "0");
                d3.selectAll("#"+d).attr("fill", "#c0c0c0");
            } else {    // show line if checked
                d3.selectAll("."+d).attr("opacity", "1");
                d3.selectAll("#"+d).attr("fill", "#686868");
            }
        })
        .attr("transform", function(d, i) {
            var x_order = i.toString().split('').pop();
            var y_order = Math.floor(i/10);
//            var previous_elem = this.previousElementSibling;
//            var x_start = (previous_elem) ? previous_elem.__data__.length * 8 + previous_elem.getBoundingClientRect().x : 0;
            return "translate(" + x_order * 55 + "," + y_order * 15 + ")";
        });

    // draw the circle image
    legend.append("line")          
        .style("stroke", function(d, i) { return colors[i]; }) 
        .style("stroke-width", 2)
        .attr("x1", -6)     
        .attr("y1", height-3)      
        .attr("x2", 6)    
        .attr("y2", height-3)
        .attr("id", function(d) { return String(d) });

    legend.append("circle")
        .attr("cx", 0)
        .attr("cy", height-3)
        .attr("style", "fill: white")
        .attr("stroke",  function(d, i) { return colors[i]; })
        .attr("stroke-width", "1")
        .attr("id", function(d) { return String(d) })
        .attr("r", 3.6);

    legend.append("rect")
        .attr("id", function(d, i) { return d; })
        .attr("rx", 0)
        .attr("ry", 0)
        .attr("x", -7)
        .attr("y", height-12)
        .attr("height", 20)
        .attr("width",function(d, i) { return d.length * 6; })
        .attr('fill','none')
        .attr("class","legend-rect");

    // draw the legend text
    legend.append("text")
        .attr("x", function(d, i) { return d.length * 8; })
        .attr("y", height)
        .attr('fill','#686868')
        .attr("id", function(d) { return String(d) })
        .text(function(d) { return d; });

    return svg;
}

/*
 * renders background grey boxes and lines
 * at the bottom of the page
 * @param {svg} svg 
 * @param {number} width  
 * @param {number} height  
 * @param {number} y_ticks
 */
function renderBackBoxes(svg, width, height, y_ticks) {
    var color, box_height, box_width, y_current=10;
    var x_start = 30;
    
    box_height = height / y_ticks; // calc box height
    box_width = width-40; // calc box width
    
    for (var i=0; i<y_ticks; i++) {
        color = (i%2===0) ? '#ffffff' : '#f7f7f7';  // set color
        
        // draw rectangle
        svg.append("rect")
            .attr('x',x_start)
            .attr('y',y_current)
            .attr('width',box_width)
            .attr('height',box_height)
            .attr('fill',color)
            .attr('class','back-box');
    
        // draw dotted line
        svg.append("line")          
            .style("stroke", '#999999') 
            .style("stroke-width", 1)
            .attr("x1", x_start)     
            .attr("y1", y_current)      
            .attr("x2", x_start + box_width)    
            .attr("y2", y_current)
            .attr("fill","none")
            .attr("class", 'back-box-sep');
    
        y_current += box_height; 
    }
    
    return svg;
}