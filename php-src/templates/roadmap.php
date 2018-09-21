

<h2>Vertical Roadmap</h2>

<div class='text-container'>
    <p>We propose a five stage process for designing innovative investment projects per nishe industry market, such as:</p>
    
    <ol>
        <li>mapping sectoral and regional strengths</li>
        <li>identification of actors per sector of interest</li>
        <li>actors engagement</li>
        <li>collaborative project design</li>
        <li>monitoring and assess</li>
    </ol>
    
    <button id='use-roadmap' class='road-on active'>Use roadmap</button>
    <button id='see-example' class='road-on'>See Examples</button>
    <button id='run-road' class='road-on run-btn' onclick='return runRoad();'>Play <i class='fa fa-play'></i></button>
    
</div>


<div class='tool-container'>
    <div class='graph enabled'>
    
        <div class='large-circle active' id='mapping'>

            <p class='step-label'>Mapping</p>

            <div class='small-circle related_analysis active'></div>

            <div class='small-circle scientific_profile'></div>

            <div class='small-circle focus_group'></div>

            <div class='small-circle special_indexes'></div>

        </div>

        <div class='label-container mapping'>

            <p class='tool-label related_analysis active'>Related varieted<br>analysis</p>

            <p class='tool-label scientific_profile'>Regional<br>scientific profile</p>

            <p class='tool-label focus_group '>EDP Focus<br>groups</p>

            <p class='tool-label special_indexes'>Specialisation<br>indexes</p>

        </div>

        <div class='large-circle' id='monitor_assess'>

            <p class='step-label'>Implement<br>monitor<br>assess</p>

            <div class='small-circle balanced_score'></div>

            <div class='small-circle satisfy_survey'></div>

        </div>

        <div class='label-container monitor_assess'>
            <p class='tool-label balanced_score'>Balanced<br>scorecards</p>

            <p class='tool-label satisfy_survey'>Stakeholder<br>satisfaction<br>survey</p>
        </div>


        <div class='large-circle' id='identify_actors'>

            <p class='step-label'>Identify<br>actors</p>

            <div class='small-circle vision_sharing'></div>

            <div class='small-circle infra_mapping'></div>

            <div class='small-circle clusters'></div>

        </div>

        <div class='label-container identify_actors'>

            <p class='tool-label vision_sharing'>Vision<br>sharing</p>

            <p class='tool-label infra_mapping'>Research<br>infrastructure<br>mapping</p>

            <p class='tool-label clusters'>Clusters &<br>innovation<br>ecosystems</p>

        </div>



        <div class='large-circle' id='engage'>

            <p class='step-label'>Engagement</p>

            <div class='small-circle stakeholder'></div>

            <div class='small-circle collabo_vision'></div>

            <div class='small-circle debate_glance'></div>

        </div>


        <div class='label-container engage'>

            <p class='tool-label stakeholder'>Stakeholder<br>engagement</p>

            <p class='tool-label collabo_vision'>Collaborative<br>vision building</p>

            <p class='tool-label debate_glance'>Debate at<br>a glance</p>

        </div>

        <div class='large-circle' id='co_design'>

            <p class='step-label'>Project <br> co-design</p>

            <div class='small-circle action_plan'></div>

            <div class='small-circle open_repo'></div>

        </div>

        <div class='label-container co_design'>

            <p class='tool-label action_plan'>Action plan<br>co-design</p>

            <p class='tool-label open_repo'>Open data<br>repository</p>

        </div>

            <img src='wp-content/themes/onlineS3/roadmap/img/arrow_1.png' class='arrow mapping' width='70'>

            <img src='wp-content/themes/onlineS3/roadmap/img/arrow_2.png' class='arrow identify_actors' width='70'>

            <img src='wp-content/themes/onlineS3/roadmap/img/arrow_3.png' class='arrow engage' width='55'>

            <img src='wp-content/themes/onlineS3/roadmap/img/arrow_4.png' class='arrow co_design' width='70'>

        </div>

        <div class='info-container road'>

        <div class='step-info'>

            <img class='step-image' src='wp-content/themes/onlineS3/roadmap/img/mapping.png' width='60'/>

            <p class='step-title'>Mapping</p>

            <p class='step-text'>The mapping exercise aims at the identification of the region’s position within the Global value chain…</p>

            <hr>

        </div>

        <div class='app-info'>

            <p class='app-label'>EDP Focus groups</p>

            <p class='app-text'>
                The EDP focus groups application provides a content 
                management system that facilitates the organisation of EDP group meetings.
            </p>

            <a class='app-url' href='#' target='_blank' >Visit the app</a>

        </div>

    </div>

    <div class='info-container examples hide'>
        <div class='example-info'>

            <img class='example-image' src='wp-content/themes/onlineS3/roadmap/img/question.png' width='55'/>

            <p class='example-title'>How can I identify my region in the global value chain?</p>

            <p class='example-text'>First it is important to sketch the regional scientific profile,  the existing clusters and the specialization of the region and also to perform a related variety analysis…</p>

            <hr>
        </div>

        <div class='examples-list'>
            <p class='see-examples'>See examples:</p>

            <ul>

                <li class='active'><a href='#' id='example_1' class='road-example'>Roadmap example 1</a></li>

                <li><a href='#' id='example_2' class='road-example'>How can I identify my region in the global value chain?</a></li>

                <li><a href='#' id='example_3' class='road-example'>Roadmap example 3</a></li>

                <li><a href='#' id='example_4' class='road-example'>Roadmap ...</a></li>

            </ul>
        </div>
    </div>
    
    <input id='current_step' class='hide'/>
</div>