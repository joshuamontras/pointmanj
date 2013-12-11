require 'sinatra'
require 'yaml'
require 'wkhtmltopdf-heroku'
require 'pdfkit'

get '/' do
  @awesome_instance_variables = {
  	:name => nil,
    :twitter => nil,
    :linkedin => nil,
    :github => nil,
    :email => nil,
    :working_with_rails => nil,
    :personal_image => nil,
    :personal_site => nil,
    :hire_availability => nil
  }
  YAML.load_file('config/personal_settings.yml').each do |key,value|
    @awesome_instance_variables[key.to_sym] = value
  end

  erb :resume
end


get '/resume.pdf' do
	 @awesome_instance_variables = {
  	:name => nil,
    :twitter => nil,
    :linkedin => nil,
    :github => nil,
    :email => nil,
    :working_with_rails => nil,
    :personal_image => nil,
    :personal_site => nil,
    :hire_availability => nil
  }
  YAML.load_file('config/personal_settings.yml').each do |key,value|
    @awesome_instance_variables[key.to_sym] = value
  end
  kit = PDFKit.new(erb :pdf)
  # puts "Dir.entries '.' #{Dir.entries('.').inspect}"
  # kit.stylesheets << './public/stylesheets/style.css'
  kit.stylesheets << './public/stylesheets/bootstrap.min.css'
  # kit.to_pdf
  # above works but looks crappy..
  # TODO : Only geneate a new resume if something changed.
  kit.to_file '/tmp/Joshua_Montross_Resume.pdf'
  send_file '/tmp/Joshua_Montross_Resume.pdf', :filename => "Joshua_Montross_Resume.pdf"

end

__END__

@@ resume
  <html>
   <head>

      <script src='/javascripts/bootstrap.js'></script>
      <link href='/stylesheets/bootstrap.min.css' rel='stylesheet'/>
      <link href='/stylesheets/style.css' rel='stylesheet' />
      <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
      <link href='http://fonts.googleapis.com/css?family=Ledger' rel='stylesheet' type='text/css' />
      <link href='http://fonts.googleapis.com/css?family=Asap:400,700' rel='stylesheet' type='text/css' />
      <script src='//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js' type='text/javascript'></script>
    </head>
     <body class="body">
      <div class='navbar navbar-fixed-top'>
        <div class='navbar-inner'>
          <div class='container'>
            <div class='row'>
              <div class='span12'>
                <header class='jumbotron subhead' id='overview' style='margin-left:-20px; margin-right:-20px; margin-bottom:0px; padding: 20px; padding-bottom:30px; border-radius: 0px 0px 15px 15px;'>
                  <div style='float:right'>
                    <p>
                      <a class='twitter' href='http://twitter.com/#!/<%= @awesome_instance_variables[:twitter] %>'></a>
                      <a class='linkedin' href='http://www.linkedin.com/in/<%= @awesome_instance_variables[:linkedin] %>'></a>
                      <a class='github' href='https://github.com/<%= @awesome_instance_variables[:github] %>'></a>
                      <a href="https://coderwall.com/jmontross"><img alt="Endorse jmontross on Coderwall" src="https://api.coderwall.com/jmontross/endorsecount.png" /></a>
                      <br style='clear:both' />
                      <br style='clear:both' />

                      <br style='clear:both' />
                      <a href="/resume.pdf" target="new"> Resume as pdf </a>
                      <br style='clear:both' />
                      <a href="/docs/Joshua_Montross_Resume.doc" target="new"> Resume as word document </a>
                      <br style='clear:both' />
                       <% if @awesome_instance_variables[:tagline] %>
                        <small> <%= @awesome_instance_variables[:tagline] %> <br style='clear:both' /> ~j  </small>
                       <% end %>
                       <% if @awesome_instance_variables[:working_with_rails] %>
                       <a href='http://workingwithrails.com/person/<%= @awesome_instance_variables[:working_with_rails] %>'>
                        <img alt='Recommend Me' src='http://workingwithrails.com/images/tools/compact-small.jpg' />
                      </a>
                      <% end %>
                    </p>
                  </div>
                  <% if @awesome_instance_variables[:personal_site] %>
                  	<a href="<%= @awesome_instance_variables[:personal_site]%>">
                  <% end %>
                  <img src='<%= @awesome_instance_variables[:personal_image] %>' style='float:left; padding: 10px; width: 190px; clear:bottom; margin:0px 20px 20px 0px; padding:4px; background-color: rgb(255,255,255)' />
                  <% if @awesome_instance_variables[:personal_site] %>
                  	</a>
                  <% end %>
                  <h1 style='color: rgb(255,255,255)'><%= @awesome_instance_variables[:name] %></h1>
                  <h2 style='color: rgb(220,220,220)'><%= @awesome_instance_variables[:job_title] %></h2>
                  <h3 style='color: rgb(240,240,240)'>Currently <%= @awesome_instance_variables[:hire_availability] %> for hire</h3>
                  <h4>
                    <a href='mailto:<%= @awesome_instance_variables[:email] %>'><%= @awesome_instance_variables[:email] %></a>
                  </h4>
                </header>
                <div class='clear' style='clear:both'></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class='container'>
        <section id='projects'>
          <div class='row'>
            <div class='span7'>
              <div class='page-header'>
                <h1>
                  Projects and Jobs
                  <small>I have worked with Ruby and Rails since 2008.</small>
                </h1>
              </div>
              <div class='project'>
                <h2>Picaro</h2>
                <h3>Senior Software Engineer</h3>
                <h4>February, 2013 - November, 2013</h4>
                <p> Bringing transparency to methane emissions in the natural gas industry and providing technology for molecular spectroscopy </p>
                <ul>
                <li>
                  Created new product with one other dev using node.js, jquery, Google maps, and leaflet to map and share methane emissions
                </li>
                <li>
                  Moved dev team to be more agile by using git, pivotal tracker, and then convincing stakeholders of benefits.
                </li>
                <li>
                  Wrote chef recipes for our different web products to use with vagrant to take setup time of personal environment from multiple days to minutes and zero chance of missed steps
                </li>
                <li>
                  Created new API endpints for node.js application for easier mapping of routes and methane emissions
                </li>
                </ul>
                <p>
                  <span class='label'>#python</span>
                  <span class='label'>#javascript</span>
                  <span class='label'>#node.js</span>
                  <span class='label'>#jquery</span>
                  <span class='label'>#mongo</span>
                  <span class='label'>#AWS</span>
                  <span class='label'>#chef</span>
                </p>
              </div>
              <div class='project'>
                <h2>Empowered.com</h2>
                <h3>Software Engineer</h3>
                <h4>October, 2011 - December, 2012</h4>
                <p>Empowering students to learn useful skills from a university using great technology.  I am the project lead on our fork of the open source application <a href='http://www.github.com/empowered/canvas-lms'> canvas-lms </a> .</p>
                <ul>
                <li>
                  Utilized rails 2.3 delayed jobs plugin to create a video transcoding solution for web recording and ipad display
                </li>
                <li>
                  Configuration management using chef and amazon web services to scale with grace (one command deploy).
                </li>
                <li>
                  Engineered vagrant, chef-solo, and virtual machine process for minimizing setup time across multiple services.
                </li>
                <li>
                  Introduced fellow employees in engineering and business intelligence to the use of ruby scripting to work more effectively with web services and eliminate repetitive tasks.
                </li>
                </ul>
                <p>
                  <span class='label'>#rubyonrails</span>
                  <span class='label'>#javascript</span>
                  <span class='label'>#jquery</span>
                  <span class='label'>#php</span>
                  <span class='label'>#mongo</span>
                  <span class='label'>#AWS</span>
                </p>
              </div>
              <div class='project'>
              <h2>Devbootcamp.com</h2>
                <h3>Mentor</h3>
                <h4>June, 2011 - Current</h4>
                <p>Dev boot camp is an intensive 10 week course meant to take someone from very little programming skill to "world class beginner".
                </p>
                <ul>
                <li>
                  Mentored two proteges learning to become ruby on rails developers for each cohort since summer 2011.
                </li>
                <li>
                  Provided assistance in understanding datatypes, duck-typing, and other core features of Ruby.
                </li>
                <li>
   				        Pair programmed, showed how to write unit tests, and taught basic web apps on unix with apache and sys5init.
                </li>
                </ul>
              </div>
              <div class='project'>
                <h2>Demosphere.com</h2>
                <h3>Web developer providing premium sports league and organization software as a service.</h3>
                <h4>July 2009 - September 2011</h4>
                <p>
               	Made awesome applications empowering coaches, players, and parents to easily manage the soccer and sports organizations.
                </p>
                <ul>
                  <li>Developed ruby (mostly sinatra) applicatons for paypal interaction, transaction repair automation, self-healing systems, and more.</li>
                  <li>Learned legacy templating language along with html and javascript for web design.  </li>
                  <li>Favored use of javascript building html on front end with fast queries on backend outputting json.  </li>
                </ul>
                <p>
                  <span class='label'>#rubyonrails</span>
                  <span class='label'>#javascript</span>
                  <span class='label'>#jquery</span>
                  <span class='label'>#firebird</span>
                  <span class='label'>#mongo</span>
                  <span class='label'>#redis</span>
                  <span class='label'>#quickbooks</span>
                  <span class='label'>#agile</span>
                </p>
              </div>
              <div class='project'>
                <h2>Financial Literacy Foundation</h2>
                <h3>Teaching financial literacy courses in Washington, DC and developing the web site.</h3>
                <h4> Spring 2008 -  Summer 2009</h4>
                <p> I began as a volunteer and later became teacher, web developer, and curriculum curator </p>
                 <ul>
                   <li> Designed, promoted, and conducted workshops for teens and young adults.
                   <li> Taught economics & financial literacy at SEED School DC for one year.</li>
                   <li> Developed a rails 1.2 app with one other person to support assessments, attendance, and more. </li>
                 </ul>
                <p>
                  <span class='label'>#rubyonrails</span>
                  <span class='label'>#javascript</span>
                  <span class='label'>#prototype</span>
                  <span class='label'>#agile</span>
                </p>
              </div>
            </div>

            <div class='span5'>
            <div class='page-header'>
                <h1>
                  Education
                  <small>The roots are bitter, but the fruit is sweet. </small>
                </h1>
	            </div>
            <div class='project'>
              <h3>BBA, Finance and Information Systems</h3>
              <h4>2004-2008 George Washington University</h4>
            </div>
            <div class='project'>
              <h3>MS, Information Systems Design</h3>
              <h4>2008-2009 George Washington University</h4>
            </div>
            <div class='project'>
                <h1>
                  Conferences
                  <small>They are more than fun.</small>
                </h1>
            </div>
            <ul>
              <li>Waza 2013</li>
              <li>RubyConf 2012</li>
              <li>RubyConf 2009</li>
              <li>RubyConf 2010</li>
              <li>Dreamforce 2010</li>
              <li>JSConf 2009</li>
              <li>JSConf 2010</li>
              <li>CanvasCon 2011</li>
            </ul>

            <div class='project'>
              <h1>
                Side projects
                <small>Keep learning on the side</small>
              </h1>
            </div>
            <div class='project'>
              <h3><a href= "http://wwww.crossvet.org"> Crossvet.org </a> </h3>
              <h4> Crossfit style training where all sales go to honorvet.org </h4>
              <ul>
              <li> Time was donated </li>
              <li> Built in one day on August 4th, 2012. </li>
              <li> Created brand, logo, site design, and copyright with one graphically skilled friend, AWS, CLI, and Sublime </li>
              </ul>
              <span class='label'>#wordpress</span>
	        </div>
            <div class='project'>
              <h3><a href="thebridgeprojectdc.org"> The Bridge Project</a> </h3>
              <h4>Sinatra and mongo app for mapping social services in Washington, DC </h4>
              <p>
              Worked with friend Colin Van Dyke to build in late 2010.
              </p>
              <span class='label'>#jquery</span>
              <span class='label'>#mongo</span>
              <span class='label'>#sinatra</span>
              <span class='label'>#nginx</span>
              <span class='label'>#unicorn</span>
	        </div>
          <div class='project'>
              <h3><a href="#"> pointmanj.com </a> </h3>
              <h4>Sinatra app with webkit and pdf generation from html content on the fly </h4>
              <p>
              The resume pdf is generated from this html (and admittedly could use some work).
              <a href="http://www.github.com/jmontross/pointmanj">The source is available here.</a>
              </p>

              <span class='label'>#sinatra</span>
              <span class='label'>#heroku</span>
              <span class='label'>#pdfkit</span>

          </div>
	       <!--  <div class='project'>
              <h3>Open Source Contributions</h3>
              <h4>Pay it forward </h4>
              <p>
               I enjoy contributing to open sourece projects I am using and would like to improve.
              </p>
              <ul>
              <li>Veewee - building of baseboxes for use with systems configuration</li>
              <li>Dansbeerlist - working with friend on a rails 3 app he created </li>
              <li>check my github for latest</li>
              </ul>
	        </div>  	    -->
          </div>
        </section>
      </div>
    </body>
    </html>


@@ pdf

  <html>
   <head>
   <link href='/stylesheets/bootstrap.min.css' rel='stylesheet'/>
   <link href='/stylesheets/style.css' rel='stylesheet' />
   </head>
     <body>
      <div class='container'>
        <section id='projects'>
          <div class='row'>
            <div class='span7'>
              <div class='page-header'>
                <h1>
                  Projects and Jobs
                  <small>I have worked with Ruby and Rails since 2008.</small>
                </h1>
              </div>
              <div class='project'>
                <h2>Picaro</h2>
                <h3>Senior Software Engineer</h3>
                <h4>February, 2013 - November, 2013</h4>
                <p> Bringing transparency to methane emissions in the natural gas industry and providing technology for molecular spectroscopy </p>
                <ul>
                <li>
                  Created new product with one other dev using node.js, jquery, Google maps, and leaflet to map and share methane emissions
                </li>
                <li>
                  Moved dev team to be more agile by using git, pivotal tracker, and then convincing stakeholders of benefits.
                </li>
                <li>
                  Wrote chef recipes for our different web products to use with vagrant to take setup time of personal environment from multiple days to minutes and zero chance of missed steps
                </li>
                <li>
                  Created new API endpints for node.js application for easier mapping of routes and methane emissions
                </li>
              </div>
              <div class='project'>
                <h2>Empowered.com</h2>
                <h3>Software Engineer</h3>
                <h4>October, 2012 - December, 2012</h4>
                <p>Empowering students to learn useful skills from a university using great technology.  I am the project lead on our fork of the open source application <a href='http://www.github.com/empowered/canvas-lms'> canvas-lms </a> .</p>
                <ul>
                <li>
                  Utilized rails 2.3 plugin background_job to create a video transcoding solution for web recording and ipad display
                </li>
                <li>
                  Configuration management using chef and amazon web services to scale with grace.
                </li>
                <li>
                  Realized need for better local set up process; developed vagrant and chef-solo strategy for minimizing setup time across multiple services.
                </li>
                <li>
                  Mentored multiple fellow employees in engineering and business intelligence on using ruby for scripts to work more effectively with web services.
                </li>
                </ul>
              </div>
              <div class='project'>
              <h2>Devbootcamp.com</h2>
                <h3>Mentor</h3>
                <h4>June, 2011 - Current</h4>
                <p>Dev boot camp is an intensive 10 week course meant to take someone from very little programming skill to world class beginner.
                The course is renowned for good content and providing students with the necessary skills to land their first engineering job. </p>
                <ul>
                <li>
                  Mentoring two proteges learning to become ruby on rails developers.
                </li>
                <li>
                  Provided assistance in understanding datatypes, duck-typing, and other core features of Ruby.
                </li>
                <li>
   				  Pair programmed, showed how to write unit tests, and taught basic web apps on unix with apache and sys5init.
                </li>
                </ul>
              </div>
              <div class='project'>
                <h2>Demosphere.com</h2>
                <h3>Web developer providing premium sports league and organization software as a service.</h3>
                <h4>July 2009 - September 2011</h4>
                <p>
               	Made awesome applications empowering coaches, players, and parents to easily manage their sports organizations.
                </p>
                <ul>
                  <li>Developed multiple sinatra applicatons.</li>
                  <li>Standalone CLI ruby applications for running our unique infrastructure</li>
                  <li>Employed a variety of very helpful Ruby Gems as well as wrote own when there were none to fit the need</li>
                  <li>Learned legacy templating language and used along with firebird for supporting the past</li>
                </ul>
              </div>
            </div>
          </div>
        </section>
      </div>
    </body>
    </html>

