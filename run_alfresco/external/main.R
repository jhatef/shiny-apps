column(8,
	tabsetPanel(
		tabPanel("Home", 
			h1("Welcome to the Alfresco web GUI"), h3("Powered by R and Shiny"), div(verbatimTextOutput("sbatch_call"), style="height: 400px;"), value="home"),
		tabPanel("View JSON", 
			div(verbatimTextOutput("JSON_lines"), style="height: 800px;"), value="viewjson"),
		tabPanelAbout(),
		tabPanel("R Code",
			#uiOutput("codeTab"), # This single line preferable to the below lines
			# Cannot use the above style due to known bug in shinyAce package
			#conditionalPanel(condition="input.nlp==='nlp_aboutR'", show_aboutR),
			#conditionalPanel(condition="input.nlp==='nlp_appR'", show_appR),
			#conditionalPanel(condition="input.nlp==='nlp_globalR'", show_globalR),
			# cannot include "header" if it contains Google Analytics tracking code
			#conditionalPanel(condition="input.nlp==='nlp_headerR'", show_headerR),
			#conditionalPanel(condition="input.nlp==='nlp_iosidebarwp1R'", show_iosidebarwp1R),
			#conditionalPanel(condition="input.nlp==='nlp_iosidebarwp2R'", show_iosidebarwp2R),
			#conditionalPanel(condition="input.nlp==='nlp_mainR'", show_mainR),
			#conditionalPanel(condition="input.nlp==='nlp_reactivesR'", show_reactivesR),
			#conditionalPanel(condition="input.nlp==='nlp_serverR'", show_serverR),
			#conditionalPanel(condition="input.nlp==='nlp_sidebarR'", show_sidebarR),
			#conditionalPanel(condition="input.nlp==='nlp_uiR'", show_uiR),
			value="rcode"),
		id="tsp",
		type="pills",
		selected="home"
	)
)
