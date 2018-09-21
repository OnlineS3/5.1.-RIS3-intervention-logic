/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function setPriority(args) {
    
    $('.eu_pr:not(#'+args.prio+')').prop('checked',false);
    
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var prio = args.prio;
            var objectives = args.objectives;
            var investments = args.investments;
            var filtered = filterByPrio(prio,objectives,'eu_id');
            
            $('#objective').empty();
            $('#objective_chosen').css('width','20rem');
            for (var i=0; i<filtered.length; i++) {
                $('#objective').append($('<option>', {
                    value: filtered[i][0],
                    text: filtered[i][1]
                }));
                $('#objective').trigger("chosen:updated");
            }
			
            if (filtered.length > 0) {
                setObjective({investments: args.investments, objective: filtered[0][0]});
            }
        }
    };
    xmlhttp.open("POST", window.location.href, true);
    xmlhttp.send();
}

function setObjective(args) {
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            
            var filtered = filterByPrio(args.objective,args.investments,'obj_id');
            
            $('#investment').empty();
            $('#investment_chosen').css('width','20rem');
            for (var i=0; i<filtered.length; i++) {
                $('#investment').append($('<option>', {
                    value: filtered[i][0],
                    text: filtered[i][1]
                }));
                $('#investment').trigger("chosen:updated");
            }
			
            $('#investment').val(0);
            $('#investment').trigger("chosen:updated");
        }
    };
    xmlhttp.open("POST", window.location.href, true);
    xmlhttp.send();
}

/*
 * filters variables by category
 */
function filterByPrio(prio, objectives, filter_id){
    
    // converts json to string
    var filtered=[[]],obj,j=0,objective=[];
    objectives = JSON.parse(JSON.stringify(objectives));
    
    for (var i = 0; i < objectives.length; i++) {
        obj = objectives[i];
        if(obj[filter_id]===prio) {
            objective = [];
            objective[0]=objectives[i]['id'];
            objective[1]=objectives[i]['id'] + ' - ' + objectives[i]['description'];
            filtered[j++]=objective;
        }
    }
    
    return filtered;
}

function prioExists(args){
    var prio = args.prio;
    var user_prios = args.user_prios;
    
    user_prios = JSON.parse(JSON.stringify(user_prios));
    
    for (var i = 0; i < user_prios.length; i++) {
        if(prio==user_prios[i]['inv_id']) {
            swal({
                text: "You have already created this priority !",
                type: 'warning',
                showCancelButton: false,
                confirmButtonText: 'OK'
              })
            $(this).val($('#previousprio').val());
            var previous = $('#previousprio').val();
            $('option:contains("' + previous + '")').attr('selected', 'selected');
            return true;
        }
    }
    
    $('#previousprio').val(prio);
    return true;
}