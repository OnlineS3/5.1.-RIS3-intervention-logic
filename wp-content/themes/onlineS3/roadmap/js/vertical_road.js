
var selected_apps=[];

var steps = ['mapping','identify_actors','engage','co_design','monitor_assess'];

var tools = ['related_analysis','scientific_profile','focus_group','special_indexes',
            'vision_sharing','clusters','infra_mapping','stakeholder','debate_glance',
            'collabo_vision','action_plan','open_repo','balanced_score','satisfy_survey'];

var steps_details = {
        'mapping': {title:"Mapping", 
                    text:"The mapping exercise aims at the identification of the region’s position within the Global value chain…", 
                    image:"wp-content/themes/onlineS3/roadmap/img/mapping.png", image_width:'60', image_left:'37%', image_top:'15%'},
        'identify_actors': {title:"Identification of actors", text:"The identification of actors…", 
                    image:"wp-content/themes/onlineS3/roadmap/img/identify_actors.jpg", image_width:'60', image_left:'37%', image_top:'22%'},
        'engage': {title:"Actors engagement", text:"The mapping exercise aims at the identification of the region’s position within the Global value chain…", 
                    image:"wp-content/themes/onlineS3/roadmap/img/engage.png", image_width:'60', image_left:'38%', image_top:'18%'},
        'co_design': {title:"Project co-desing", text:"The mapping exercise aims at the identification of the region’s position within the Global value chain…", 
                    image:"wp-content/themes/onlineS3/roadmap/img/co_design.jpg", image_width:'114', image_left:'26%', image_top:'18%'},
        'monitor_assess': {title:"Implementation monitoring assessment", text:"The mapping exercise aims at the identification of the region’s position within the Global value chain…", 
                    image:"wp-content/themes/onlineS3/roadmap/img/assess.png", image_width:'90', image_left:'28%', image_top:'12%'}
    };
    
var tools_details = {
    'scientific_profile': { parent:"mapping",
                            title:"Regional Scientific Profile", 
                            text:"The EDP focus groups application provides a content management system that facilitates the organisation of EDP group meetings.", 
                            url:"http://scientificprofile.s3platform.eu/"},
    'focus_group': { parent:"mapping",
                            title:"EDP Focus groups", 
                            text:"EDP Focus groups", 
                            url:"http://edp.s3platform.eu/"},
    'special_indexes': { parent:"mapping",
                            title:"Specialization indexes", 
                            text:"Specialization indexes", 
                            url:"http://specialisation.s3platform.eu/"},
    'related_analysis': { parent:"mapping",
                            title:"Related varieted analysis", 
                            text:"Related varieted analysis", 
                            url:"http://relatedvariety.s3platform.eu/"},
                        
    'vision_sharing': { parent:"identify_actors",
                            title:"Vision sharing", 
                            text:"Vision sharing", 
                            url:"http://visiongraphics.s3platform.eu/"},
                        
    'infra_mapping': { parent:"identify_actors",
                            title:"Research infrastructure mapping", 
                            text:"Research infrastructure mapping", 
                            url:"http://rimapping.s3platform.eu/"},
                        
    'clusters': { parent:"identify_actors",
                            title:"Clusters and innovation ecosystems", 
                            text:"Clusters and innovation ecosystems", 
                            url:"http://ecosystemsmapping.s3platform.eu/"},
                        
    'stakeholder': { parent:"engage",
                            title:"Stakeholder engagement", 
                            text:"Stakeholder engagement", 
                            url:"http://engagement.s3platform.eu/"},
                        
    'collabo_vision': { parent:"engage",
                            title:"Collaborative vision building", 
                            text:"Collaborative vision building", 
                            url:"http://scenarios.s3platform.eu/"},
                        
    'debate_glance': { parent:"engage",
                            title:"Debate at a glance", 
                            text:"Debate at a glance", 
                            url:"http://debateoverview.s3platform.eu/"},
                        
    'action_plan': { parent:"co_design",
                            title:"Action plan co-design", 
                            text:"Action plan co-design", 
                            url:"http://actionplan.s3platform.eu/"},
                        
    'open_repo': { parent:"co_design",
                            title:"Open data repository", 
                            text:"Open data repository", 
                            url:"http://li1088-54.members.linode.com:8082/opendata/"},
                        
    'balanced_score': { parent:"monitor_assess",
                            title:"Balanced scorecards", 
                            text:"Balanced scorecards", 
                            url:"http://li1088-54.members.linode.com:8082/bscapp/"},
                        
    'satisfy_survey': { parent:"monitor_assess",
                        title:"Stakeholder satisfaction survey", 
                            text:"Stakeholder satisfaction survey", 
                            url:"http://satisfactionsurvey.s3platform.eu/"}
};

var examples = {
    'example_1': {
        'title': 'Roadmap example 1',
        'text': 'Roadmap example 1',
        'steps': ['mapping','identify_actors'],
        'apps': ['related_analysis', 'special_indexes', 'scientific_profile', 'clusters']
    },
    'example_2': {
        'title': 'How can I identify my region in the global value chain?',
        'text': 'First it is important to sketch the <a class="scientific_profile" href="#">regional scientific profile</a>,\n\
                the existing <a class="clusters" href="#">clusters</a> and the <a class="special_indexes" href="#">specialization of the region</a> and \n\
                also to perform a <a class="related_analysis" href="#">related variety analysis</a>…',
        'steps': ['mapping','identify_actors'],
        'apps': ['related_analysis', 'special_indexes', 'scientific_profile', 'clusters']
    },
    'example_3': {
        'title': 'Roadmap example 3',
        'text': '',
        'steps': ['mapping','identify_actors'],
        'apps': ['related_analysis', 'special_indexes', 'scientific_profile', 'clusters']
    },
    'example_4': {
        'title': 'Roadmap...',
        'text': '',
        'steps': ['identify_actors','engage','monitor_assess'],
        'apps': ['infra_mapping', 'stakeholder', 'collabo_vision', 'balanced_score']
    }
};

jQuery(document).ready(function(){
    
    jQuery('.road-on').on('click', function() {
        jQuery('.road-on').removeClass('active');
        jQuery(this).addClass('active');
    });
    
    jQuery('#use-roadmap').on('click', function() {
        jQuery('.graph').attr('id','use-road');
        jQuery('.graph').find('.large-circle').removeClass('active');
        jQuery('.info-container.road').removeClass('hide');
        jQuery('.info-container.examples').addClass('hide');
        jQuery('.graph').find('*').css('opacity','1').css('cursor','pointer');
        
        jQuery('.graph').addClass('enabled');
        
        jQuery('html, body').animate({
            scrollTop: jQuery('.graph').offset().top
        }, 1000);
        
        return false;
    });
    
    jQuery('#see-example, .road-example').on('click', function() {
        jQuery('.graph').attr('id','example-road');
        jQuery('.graph').find('.large-circle, .small-circle, .tool-label').removeClass('active');
        
        if(jQuery(this).attr('id')=='see-example') {
            setExample('example_1');
        } else {
            setExample(jQuery(this).attr('id'));
        }
        
        jQuery('.info-container.road').addClass('hide');
        jQuery('.info-container.examples').removeClass('hide');
        
        jQuery('.graph').removeClass('enabled');
        
        jQuery('html, body').animate({
            scrollTop: jQuery('.graph').offset().top
        }, 1000);
        
        return false;
    });
    
    jQuery('#run-road').on('click', function() {
        jQuery('.graph').attr('id','run-road');
        jQuery('.large-circle').addClass('active');
        jQuery('.info-container.road').removeClass('hide');
        jQuery('.info-container.examples').addClass('hide');
        
        jQuery('#use-roadmap').attr('disabled','disabled');
        jQuery('#see-example').attr('disabled','disabled');
        jQuery(this).attr('disabled','disabled');
        
        jQuery('.graph').removeClass('enabled');
        
        jQuery('html, body').animate({
            scrollTop: jQuery('.graph').offset().top
        }, 1000);
        
        return false;
    });
    
    jQuery('.enabled .large-circle').on('click', function() {
        if(!jQuery(this).parents('.graph').hasClass('enabled')) {
            return false;
        }
        
        var circle_id = jQuery(this).attr('id');
        setStep(circle_id);
        
        return false;
    });
    
    jQuery('.enabled .small-circle, .enabled .tool-label').on('click', function() {
        if(!jQuery(this).hasClass('included') && !jQuery(this).parents('.graph').hasClass('enabled')) {
            
            return false;
        }
        
        var classes = jQuery(this).attr('class');
        var tool = classes.replaceAll("tool-label", "").replaceAll("small-circle", "").replaceAll("hovered", "").replaceAll("included", "").replaceAll(" ", "");
        
        setApp(tool);
        
        return false;
    });
    
    jQuery('.enabled .small-circle').hover(function() {
        if(!jQuery(this).hasClass('included') && !jQuery(this).parents('.graph').hasClass('enabled')) {
            return false;
        }
        
        var classes = jQuery(this).attr('class');
        var tool = classes.replaceAll("tool-label", "").replaceAll("small-circle", "").replaceAll(" ", ""); 
        jQuery('.tool-label').removeClass('hovered');
        jQuery('.tool-label.'+tool).addClass('hovered');
    });
});

function setStep(circle_id,tool='',app_title='',app_text='',app_url='',is_demo=false) {
    if (jQuery('#current_step').val()==circle_id) {
        return false;
    }

    var step_title = steps_details[circle_id]['title'];
    var step_text = steps_details[circle_id]['text'];
    var step_image = steps_details[circle_id]['image'];
    var image_width = steps_details[circle_id]['image_width'];
    var image_left = steps_details[circle_id]['image_left'];
    var image_top = steps_details[circle_id]['image_top'];

    jQuery(".step-info").animate({'opacity': 0}, 250,function() {

        jQuery('.step-title').text(step_title);
        jQuery('.step-text').text(step_text);
        jQuery('.step-image').attr('src',step_image);
        jQuery('.step-image').attr('width',image_width);
        jQuery('.step-image').css('margin-left',image_left);
        jQuery('.step-image').css('margin-top',image_top);

        if (tool!='') {
            jQuery("hr").removeClass('hide');
        } else {
            jQuery("hr").addClass('hide');
        }

        app_title = (app_title) ? app_title : '';
        app_text = (app_text) ? app_text : '';
        app_url = (app_url) ? app_url : '';

        jQuery('.app-label').text(app_title);
        jQuery('.app-text').text(app_text);
        jQuery('.app-url').text('');
        if (tool) {
            jQuery(".app-url").html('Visit the app');
        }
    }).animate({'opacity': 1}, 250);

    jQuery('#current_step').val(circle_id);

    if (!is_demo) {
        if (tool) {
            jQuery('.large-circle, .small-circle:not(.'+tool+'), .tool-label:not(.'+tool+')').removeClass('active');
        } else {
            jQuery('.large-circle, .small-circle, .tool-label').removeClass('active');
        }

        jQuery('.tool-label').removeClass('hovered');
        jQuery('.large-circle:not(#'+ circle_id +' .tool-label), .large-circle:not(#'+ circle_id +' .small-circle)').removeClass('active').removeClass('hovered');
        jQuery('#'+circle_id).addClass('active');
    }

    return false;
}
    
function setApp(tool,is_demo=false) {
    var app_title = tools_details[tool]['title'];
    var app_text = tools_details[tool]['text'];
    var app_url = tools_details[tool]['url'];

    if (jQuery('#see-example').hasClass('active')) {
        if (selected_apps.indexOf(tool)>=0) {
            jQuery('.example-text a').removeClass('link-active');
            jQuery('.example-text .' + tool).addClass('link-active');
        } else {
            return false;
        }
    }

    jQuery("hr").removeClass('hide');

    var parent_id = jQuery('.small-circle.'+tool).parent().attr('id');

    if (jQuery('#current_step').val()!=parent_id && !is_demo) {
        setStep(parent_id, tool, app_title, app_text, app_url);
    } else {
        jQuery(".app-info").animate({'opacity': 0}, 250,function() {

            jQuery(".app-label").html(app_title);
            jQuery(".app-text").html(app_text);
            jQuery(".app-url").html('Visit the app');
            jQuery('.tool-label, .small-circle').removeClass('active').removeClass('hovered');

            jQuery('.tool-label.'+tool).addClass('active');
            jQuery('.small-circle.'+tool).addClass('active');
        }).animate({'opacity': 1}, 250);
    }
    jQuery('#current_step').val(parent_id);

    jQuery('.app-url').attr('href',app_url);

    jQuery('.tool-label, .small-circle').removeClass('active').removeClass('hovered');

    jQuery('.tool-label.'+tool).addClass('active');
    jQuery('.small-circle.'+tool).addClass('active');
}

function setExample(example) {
    selected_steps = [];
    selected_apps = [];
    
    var example_title = examples[example]['title'];
    var example_text = examples[example]['text'];
    selected_steps = examples[example]['steps'];
    selected_apps = examples[example]['apps'];
    
    jQuery('.tool-label, .small-circle').removeClass('included');
    
    jQuery('html, body').animate({
        scrollTop: jQuery('.graph').offset().top
    }, 1000);
    
    jQuery('.examples-list ul li').removeClass('active');
    jQuery('#'+example).parent().addClass('active');
    
    jQuery('.example-title').text(example_title);
    jQuery('.example-text').html(example_text);
    
    jQuery('.graph').find('*').css('opacity','.4').css('cursor','default');
    
    for(var y=0;y<selected_steps.length;y++) {
        jQuery('#'+selected_steps[y]).css('opacity','1');
        jQuery('.'+selected_steps[y]).css('opacity','1');
    }
    
    for(var y=0;y<selected_apps.length;y++) {
        jQuery('.'+selected_apps[y]).css('opacity','1');
        jQuery('.'+selected_apps[y]).css('cursor','pointer');
        jQuery('.'+selected_apps[y]).addClass('included');
    }
}

function runRoad() {
    jQuery('.tool-container').find('*').css('opacity','1').css('cursor','default');
    jQuery('.graph').find('.large-circle, .label-container, .arrow, .step-info, .app-info').fadeOut(1);
    jQuery('.step-info, .app-info').animate({'opacity': 0}, 1);
    
    var delay=0, step_delay=1500, tools_delay=2000, app_delay=2500, arrow_delay=1500;

    delay += delay;
    
    jQuery('.small-circle, .tool-label').removeClass('active').removeClass('included');
    jQuery('#'+steps[0]).addClass('active');
    jQuery('#'+steps[0]).delay(delay).fadeIn(250);
    jQuery('.label-container.'+steps[0]).delay(delay).fadeIn(250);
    jQuery('#'+steps[0]).delay(0).queue(function(){setStep(steps[0],'','','','',true);});
    
    delay += tools_delay;
    
    setTimeout(function() {
        setApp(tools[0],true);
    }, delay);
    
    delay += app_delay;
    
    setTimeout(function() {
        setApp(tools[1],true);
    }, delay);
    
    delay += app_delay;
    
    setTimeout(function() {
        setApp(tools[2],true);
    }, delay);
    
    delay += app_delay;
    
    setTimeout(function() {
        setApp(tools[3],true);
    }, delay);
    
    delay += arrow_delay;
    
    jQuery('.arrow.'+steps[0]).delay(delay).fadeIn();
    
    delay += step_delay;
    
    jQuery('.large-circle').removeClass('active');
    jQuery('#'+steps[1]).addClass('active');
    jQuery('.large-circle#'+steps[1]).delay(delay).fadeIn(250);
    jQuery('.label-container.'+steps[1]).delay(delay).fadeIn(250);
    jQuery('#'+steps[1]).delay(0).queue(function(){
        setStep(steps[1],'','','','',true);
    });
    
    tools_delay = 1.6 * tools_delay;
    
    delay += app_delay;
    setTimeout(function() {
        setApp(tools[4],true);
    }, delay);
    
    delay += app_delay;
    setTimeout(function() {
        setApp(tools[5],true);
    }, delay);
    
    delay += app_delay;
    setTimeout(function() {
        setApp(tools[6],true);
    }, delay);
    
    delay += arrow_delay;
    
    jQuery('.arrow.'+steps[1]).delay(delay).fadeIn();
    
    delay += step_delay;
    
    jQuery('.large-circle').removeClass('active');
    jQuery('#'+steps[2]).addClass('active');
    jQuery('.large-circle#'+steps[2]).delay(delay).fadeIn(250);
    jQuery('.label-container.'+steps[2]).delay(delay).fadeIn(250);
    jQuery('#'+steps[2]).delay(0).queue(function(){
        setStep(steps[2],'','','','',true);
    });
    
    tools_delay = 2.4 * tools_delay;
    
    delay += app_delay;
    setTimeout(function() {
        setApp(tools[7],true);
    }, delay);
    
    delay += app_delay;
    setTimeout(function() {
        setApp(tools[8],true);
    }, delay);
    
    delay += app_delay;
    setTimeout(function() {
        setApp(tools[9],true);
    }, delay);
    
    delay += arrow_delay;
    
    jQuery('.arrow.'+steps[2]).delay(delay).fadeIn();
    
    delay += step_delay;
    
    jQuery('#'+steps[3]).addClass('active');
    jQuery('.large-circle#'+steps[3]).delay(delay).fadeIn(250);
    jQuery('.label-container.'+steps[3]).delay(delay).fadeIn(250);
    jQuery('#'+steps[3]).delay(0).queue(function(){
        setStep(steps[3],'','','','',true);
    });
    
    delay += app_delay;
    setTimeout(function() {
        setApp(tools[10],true);
    }, delay);
    
    delay += app_delay;
    setTimeout(function() {
        setApp(tools[11],true);
    }, delay);
    
    delay += arrow_delay;
    
    jQuery('.arrow.'+steps[3]).delay(delay).fadeIn();
    
    delay += step_delay;
    
    jQuery('#'+steps[4]).addClass('active');
    jQuery('.large-circle#'+steps[4]).delay(delay).fadeIn(250);
    jQuery('.label-container.'+steps[4]).delay(delay).fadeIn(250);
    jQuery('#'+steps[4]).delay(0).queue(function(){
        setStep(steps[4],'','','','',true);}
    );
    
    tools_delay = 4 * tools_delay;
    
    delay += app_delay;
    setTimeout(function() {
        setApp(tools[12],true);
    }, delay);
    
    delay += app_delay;
    setTimeout(function() {
        setApp(tools[13],true);
    }, delay);
    
    jQuery('#use-roadmap').delay(delay).queue(function(){
        jQuery('#use-roadmap').attr('disabled',false);
        jQuery('#see-example').attr('disabled',false);
        jQuery('#run-road').attr('disabled',false);
    });
    
    return false;
}

function getAppsByStep(step_id) {
    var app,step,appsByStep=[],i=0;
    
    Object.keys(tools).forEach(function (key) {
        app = tools[key];
        step = app['parent'];
        if(step==step_id) {
            appsByStep[i++]=key;
        }
    });
    
    return appsByStep;
}

String.prototype.replaceAll = function(search, replacement) {
    var target = this;
    return target.split(search).join(replacement);
};

