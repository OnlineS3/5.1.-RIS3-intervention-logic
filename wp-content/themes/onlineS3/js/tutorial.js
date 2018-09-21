
function showTutorial() {
    
   // localStorage.clear();	//NA SVISTEI AUTI I GRAMMI GIA NA STAMATISEI NA VGAINEI KATHE FORA
    var isshow = localStorage.getItem('interlogic_shown');

    if (isshow== null) {
        swal.setDefaults({
            confirmButtonText: 'Next &rarr;',
            showCancelButton: true,
            animation: false,
            progressSteps: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
        });

        var steps = [
            {
                title: 'Investment Priority',
                text: 'In this section, you can select your filters, in order to specify the Thematic Objective and the Investment Priority, corresponding to the intervention logic diagram that you want to implement.',
                onOpen: function (){
                    $('.invest-filters').addClass('highlight');
                    $('html, body').scrollTop($('.invest-filters').offset().top);
                },
                onClose: function (){
                    $('.invest-filters').removeClass('highlight');
                }
            },
            {
                title: 'Context',
                text: 'In this section, you can add the main outcomes from the Analysis of the Context phase, which are related to the specific Priority Axis. These may include results coming from the mapping of the regional assets, research and infrastructure mapping, clusters incubators and innovation ecosystem mapping, as well as benchmarking.',
                onOpen: function (){
                    $('.layer.one').addClass('highlight');
                    $('html, body').scrollTop($('.layer.one').offset().top);
                },
                onClose: function (){
                    $('.layer.one').removeClass('highlight');
                }
            },
            {
                title: 'Vision/Priorities',
                text: 'In the Vision section, information related to results coming from Shared Vision/Strategy formulation and Priority setting phases should be added on the diagram. The four sub-sections included here, specifically refer to: scenario building and foresight exercises, EDP, extroversion and related variety analysis. For each one of them the user can add the most important outcomes that are related to the specific Priority Axis. ',
                onOpen: function (){
                    $('.layer.two').addClass('highlight');
                    $('html, body').scrollTop($('.layer.two').offset().top);
                },
                onClose: function (){
                    $('.layer.two').removeClass('highlight');
                }
            },
            {
                title: 'Definition of actions',
                text: 'The definition of actions includes the outcomes of action plan co-design, budgeting, administrative framework and innovation maps. The actions should be specified based on the need to achieve the Strategic Objectives, defined in the previous section.',
                onOpen: function (){
                    $('#2a_interbox.container').addClass('highlight');
                    $('html, body').scrollTop($('#2a_interbox').offset().top);
                },
                onClose: function (){
                    $('#2a_interbox.container').removeClass('highlight');
                }
            },
            {
                title: 'Action plan implementation',
                text: 'Action plan implementation refer to the specification of a selected number of types of intervention that will be included in the Smart Specialisation strategy, for the specific Priority Axis. These should be selected based on the Vision Statement and Strategic Objectives, that were described in the previous section.',
                onOpen: function (){
                    $('#2b_interbox.container').addClass('highlight');
                    $('html, body').scrollTop($('#2b_interbox').offset().top);
                },
                onClose: function (){
                    $('#2b_interbox.container').removeClass('highlight');
                }
            },
            {
                title: 'Output indicators',
                text: 'Specification of the output indicators that are going to be used, based on the definition of actions for this Priority Axis.',
                onOpen: function (){
                    $('#3a_interbox.container').addClass('highlight');
                    $('html, body').scrollTop($('#3a_interbox').offset().top);
                },
                onClose: function (){
                    $('#3a_interbox.container').removeClass('highlight');
                }
            },
            {
                title: 'Result indicators',
                text: 'Specification of the result indicators that are going to be used, based on the Vision statement and the selected Strategic objectives for this Priority Axis.',
                onOpen: function (){
                    $('#3b_interbox.container').addClass('highlight');
                    $('html, body').scrollTop($('#3b_interbox').offset().top);
                },
                onClose: function (){
                    $('#3b_interbox.container').removeClass('highlight');
                }
            },
            {
                title: 'Description section',
                text: 'These questions will guide you, in order to better describe the rationale behind the structure of the above intervention logic model.',
                onOpen: function (){
                    $('.logic-description').addClass('highlight');
                    $('html, body').scrollTop($('.logic-description').offset().top);
                },
                onClose: function (){
                    $('.logic-description').removeClass('highlight');
                }
            },
            {
                title: 'Save priority',
                text: 'You can save the current priority by pressing the Save Priority button. To create an intervention logic diagram for another priority, you will have to click the “New Priority” option.',
                onOpen: function (){
                    $('.main-btn').addClass('highlight');
                    $('html, body').scrollTop($('.main-btn').offset().top);
                },
                onClose: function (){
                    $('.main-btn').removeClass('highlight');
                }
            },
            {
                title: 'My Priorities',
                text: 'In "My Priorities" menu, your stored priorities are available with a delete option and an indication whether a .docx report has been generated.',
                onOpen: function (){
                    $('#prio-bar').addClass('highlight');
                    $('html, body').scrollTop($('#prio-bar').offset().top);
                },
                onClose: function (){
                    $('#prio-bar').removeClass('highlight');
                }
            }
        ];

        swal.queue(steps).then(function (result) {
        swal.resetDefaults();
        swal({
                title: 'Ready now!',
                confirmButtonText: 'Start',
                showCancelButton: false,
                onOpen: function (){
                    $('.swal2-confirm').after("<div class='chk-primary hide-tutorial'><input id='hide-check' class='test' type='checkbox'><label for='hide-check'>Do not show tutorial again</label></div>");
                    hideTutorial();
                }
            });
        }, function () {
            swal.resetDefaults();
        });
    
     }
}
function hideTutorial() {
    $('#hide-check').change(function() {
        if ($(this).is(':checked')) {
            localStorage.setItem('interlogic_shown', 1);
        } else {
            localStorage.setItem('interlogic_shown', null);
        }
    });
}