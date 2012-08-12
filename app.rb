require 'sinatra'

get '/' do
  response = %w{<html>
<head>

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
  </head>
   <body style='padding-top: 200px'>
    <div class='navbar navbar-fixed-top'>
      <div class='navbar-inner'>
        <div class='container'>
          <div class='row'>
            <div class='span12'>
              <header class='jumbotron subhead' id='overview' style='margin-left:-20px; margin-right:-20px; margin-bottom:0px; padding: 20px; padding-bottom:30px; border-radius: 0px 0px 15px 15px;'>
                <div style='float:right'>
                  <p>
                    <a class='twitter' href='http://twitter.com/#!/jdmontross'></a>
                    <a class='linkedin' href='http://www.linkedin.com/in/joshuamontross'></a>
                    <a class='github' href='https://github.com/jmontross'></a>
                    <br style='clear:both' />
                    <br style='clear:both' />
                    <a href='http://workingwithrails.com/person/<%=working_with_rails_id %>'>
                      <img alt='Recommend Me' src='http://workingwithrails.com/images/tools/compact-small.jpg' />
                    </a>
                  </p>
                </div>
                <img src='/images/josh_up_redwoods.jpg' style='float:left; padding: 10px; width: 190px; clear:bottom; margin:0px 20px 20px 0px; padding:4px; background-color: rgb(255,255,255)' />
                <h1 style='color: rgb(255,255,255)'>Joshua Montross</h1>
                <h2 style='color: rgb(220,220,220)'>Ruby on Rails Developer</h2>
                <h3 style='color: rgb(240,240,240)'>Currently unavailable for hire</h3>
                <h4>
                  <a href='mailto:joshua.montross@gmail.com'>joshua.montross@gmail.com</a>
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
                Project
                <small>I have worked with Ruby on Rails and related technologies since 2008. Below are some of the projects I'm proud of having been involved in during this time.</small>
              </h1>
            </div>
            <div class='project'>
              <h2>Empowered.com</h2>
              <h3>Software Engineer</h3>
              <h4>October, 2012 - Current</h4>
              <p>Empowering students to learn useful skills from a university using great technology.  I am the lead developer on our fork of the open source application <a href="www.github.com/empowered/canvas-lms"> canvas-lms </a> .</p>
            </div>
            <div class='project'>
              <h2>Demosphere.com</h2>
              <h3>Web developer providing premium sports league and organization software as a service.</h3>
              <h4>July 2009 - September 2011</h4>
              <p>
             , , and 
              </p>
              ul>
                <li>Developed multiple sinatra applicatons.</li>                
                <li>Standalone CLI ruby applications</li>             
                <li>Employed a variety of very helpful Ruby Gems as well as wrote own when there were none to fit the need</li>
                <li>Learned legacy templating language and used along with firebird for supporting the past</li>
              </ul>
              <p>
                <span class='label'>#rubyonrails</span>
                <span class='label'>#javascript</span>
                <span class='label'>#jquery</span>
                <span class='label'>#coffeescript</span>
                <span class='label'>#datatables</span>
                <span class='label'>#sqlserver</span>
                <span class='label'>#extjs</span>
                <span class='label'>#agile</span>
              </p>
            </div>
            <div class='project'>
              <h2>Financial Literacy Foundation</h2>
              <h3>Teaching financial literacy courses in Washington, DC and developing the web site.</h3>
              <h4> 2007 -  2009</h4>
              <p> Rails 1.2 app supporting student logins and assessments.  </p>
               <ul>
                 <li> Taught at SEED School DC for one year.
               </ul>
              <p>
                <span class='label'>#rubyonrails</span>
                <span class='label'>#javascript</span>
                <span class='label'>#prototype</span>        
                <span class='label'>#agile</span>
              </p>
            </div>
           
            </div>
          </div>
          <div class='span5'>
            <div class='page-header'>
              <h1>
                Tool Box
                <small>gadgets and tools</small>
              </h1>
            </div>
            <h3>Essentials</h3>
            <ul>
              <li>Command Line Interface (CLI)</li>
              <li>Agile Project Management</li>
              <li>Ruby, Rails (of course)</li>
              <li>Test Driven Development (admittedly sometimes)</li>
              <li>Git</li>
              <li>Javascript</li>
              <li>jQuery</li>
              <li>Sublime or Textmate </li>
              <li>Rubymine when the above two fail and I need step thru debugging</li>
            </ul>
            <h3>Likes</h3>
            <ul>
              <li>Sinatra</li>
              <li>Rails 3 mapping of commands to word rails instead of script/</li>
              <li>Simple elegance/li>              
              <li>Understanding that we are acting on assumptions until we have data</li>
            </ul>
            <h3>I know well, but don't savor</h3>
            <ul>
              <li>Legacy Rails 1.x or 2.x apps</li>
              <li>Prototype.js (you had your day)</li>
              <li>PHP (Sort of ugly, package management is weird, so 1990s)</li>
              <li>Salesfarce (overpriced and overvalued yet powerful at same time)
            </ul>
            <div class='page-header'>
              <h1>
                Conferences
                <small>One reason I love working with Ruby/Rails is the diverse and helpful developer community</small>
              </h1>
            </div>
            <p>I've attended the following conferences:</p>
            <ul>
              <li>RubyConf 2009</li>
              <li>RubyConf 2010</li>
              <li>Dreamforce 2010</li>
              <li>JSConf 2009</li>
              <li>JSConf 2010</li>
              <li>CanvasCon 2011</li>
              <li>
                RailsConf 2008 (presented lightening talk on restful_workflow)
              </li>
              <li>RailsConf 2007</li>
            </ul>
            <div class='page-header'>
              <h1>
                Education
                <small>The most useful thing I learned in school was SQL and how to open a bottle of beer with another bottle of beer.  I'm now proficient at both, same time.  </small>
              </h1>
            </div>
            <div class='project'>
              <h3>BBA, Finance and Information Systems Concentrations</h3>
              <h4>2004-2008 George Washington University</h4>              
            </div>
            <div class='project'>
              <h3>MS, Information Systems Design</h3>
              <h4>2008-2009 George Washington University</h4>              
            </div>
          </div>
        </div>
      </section>
    </div>
  </body>
  </html>
  }
  response.join(' ')
  
end
