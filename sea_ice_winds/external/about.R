function(){
	tabPanel("About",
		HTML('<div style="float: right; margin: 0 5px 5px 10px;"><iframe width="560" height="315" src="//www.youtube.com/embed/3V8X1Dg__V4" frameborder="0" allowfullscreen></iframe></div>
		
		<p style="text-align:justify">This web application displays annual and decadal time series of mean monthly sea ice concentrations and proportion of days within a month exhibiting extreme wind events.
		The graphics can be displayed as bar or line plots. Plots are for a specific month in ten-year increments, with a maximum time selection of 1960 - 2099.</p>
		
		<p style="text-align:justify">Wind values shown are any one of three different Global Climate Model (GCM) outputs. Sea ice values are a composite (five-model average) of GCM outputs.
		The wind and sea ice outputs do not come from the same GCMs.
		Different model evaluation procedures were used to assess which Coupled Model Intercomparison Project (CMIP5) GCMs were well-suited to Alaska/Arctic analyses for winds and sea ice.</p>
		
		<p style="text-align:justify">The CMIP5 composite model wind event frequencies are aggregated to counts per month from daily GCM outputs.
		Sea ice concentration comes from GCM outputs originally at the monthly time scale.
		Since proportions of days in a month and concentration values both range from zero to one, they conveniently plot on the same scale.</p>
		
		<p style="text-align:justify">Selection of RCP 6.0 or RCP 8.5 refers to wind data only. All sea ice data are from RCP 8.5.
		The negative sign in wind threshold levels is ignored when the variable, Wind, is selected, since this is strictly wind magnitude.
		When WE wind or NS wind are selected, the app plots frequencies of wind events greater or less than than the selected threshold.
		For instance, when examining extreme winds in a negative direction, e.g., -10.8 m/s, view events below (less than) the threshold; for positive thresholds, choose above (greater than).
		Later I will add the ability to select less than a threshold in addtion to greater than a threshold.</p>
		
		<p style="text-align:justify">There are three arctic seas to choose from. Sea ice concentration and wind speeds are averaged over their domains.
		There is additionally the option of using the entire sea area or only a coastal portion of the sea.</p>
		
		<p style="text-align:justify"><em>This project is funded by the Alaska Ocean Observing System through its cooperative agreement ##NA11NOS0120020 with the National Oceanic and Atmospheric Administration (NOAA).
		Work was performed by the Alaska Center for Climate Assessment and Policy(ACCAP) at the University of Alaska Fairbanks (UAF) in partnership with the Scenarios Network for Alaska and Arctic Planning (SNAP, UAF).</em></p>
		<br/>
		
		<strong>Download source data</strong>
		<br/>
		<a href="http://www.snap.uaf.edu/data.php#dataset=Historical_Estimates_and_Projections_of_Sea_Ice_Concentration" target="_blank">Historical and projected sea ice concentration</a>
		<br/>
		<a href="http://www.snap.uaf.edu/data.php#dataset=Historical_Daily_Quantile_Mapped_Near_Surface_Wind_Velocity" target="_blank">Quantile-mapped historical daily wind velocity</a>
		<br/>
		<a href="http://www.snap.uaf.edu/data.php#dataset=Projected_Daily_Quantile_Mapped_Near_Surface_Wind_Velocity" target="_blank">Quantile-mapped projected daily wind velocity</a>
		<br/>
		<p></p>'),

		HTML('
		<div style="clear: left;"><img src="http://www.gravatar.com/avatar/52c27b8719a7543b4b343775183122ea.png" alt="" style="float: left; margin-right:5px" /></div>
		<p>Matthew Leonawicz<br/>
		Statistician | useR<br/>
		<a href="http://leonawicz.github.io" target="_blank">Github.io</a> | 
		<a href="http://blog.snap.uaf.edu" target="_blank">Blog</a> | 
		<a href="https://twitter.com/leonawicz" target="_blank">Twitter</a> | 
		<a href="http://www.linkedin.com/in/leonawicz" target="_blank">Linkedin</a> <br/>
		<a href="http://www.snap.uaf.edu/", target="_blank">Scenarios Network for Alaska and Arctic Planning</a>
		</p>'),
		
		fluidRow(
			column(4,
				strong('Related apps'),
				p(HTML('<ul>'),
					HTML('<li>'),a("Coastal Alaska Extreme Temperature and Wind Events", href="http://shiny.snap.uaf.edu/temp_wind_events/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Arctic Sea Ice Extents and Concentrations", href="http://shiny.snap.uaf.edu/sea_ice_coverage/", target="_blank"),HTML('</li>'),
				HTML('</ul>')),
				strong('Code'),
				p('Source code available at',
				a('GitHub', href="https://github.com/ua-snap/shiny-apps/tree/master/sea_ice_winds", target="_blank")),
				br()
			),
			column(4,
				strong('Related blog posts'),
				p(HTML('<ul>'),
					HTML('<li>'),a("Arctic sea ice concentration and extreme wind events", href="http://blog.snap.uaf.edu/2013/09/09/r-shiny-app-arctic-sea-ice-concentration-and-extreme-winds/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Coastal Alaska extreme temperature and wind events", href="http://blog.snap.uaf.edu/2013/05/20/r-shiny-web-app-extreme-events/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Arctic sea ice extents and concentrations", href="http://blog.snap.uaf.edu/2013/05/20/r-shiny-web-app-sea-ice/", target="_blank"),HTML('</li>'),
				HTML('</ul>')),
				br()
			),
			column(4,
				strong('References'),
				p(HTML('<ul>'),
					HTML('<li>'),a('Coded in R', href="http://www.r-project.org/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a('Built with the Shiny package', href="http://www.rstudio.com/shiny/", target="_blank"),HTML('</li>'),
					HTML('<li>'),"Additional supporting R packages",HTML('</li>'),
					HTML('<ul>'),
						HTML('<li>'),a('Hmisc', href="http://cran.r-project.org/web/packages/Hmisc/index.html", target="_blank"),HTML('</li>'),
					HTML('<ul>'),
				HTML('</ul>'))
			)
		),
		value="about"
	)
}
