shinyUI(pageWithSidebar(
  headerPanel("Project Developing Data Products"),
  sidebarPanel(
    h2('Data Input Panel'),
    
    h4('1. Enter sample size for simulation'),
    radioButtons("samplesize","Sample Size",c("30" = 30, "40" = 40, "50" = 50)),
    
    h4('2.Select number of simulations to perform'),
    sliderInput("numsim","Number of simulations", value = 1000, min = 500, max =1500, 1),
    
    h4('3. Select lambda value'),
    sliderInput("lambda","lambda value", value = 0.2, min = 0.1, max =0.3, 0.1)
        
    ),
  mainPanel(
    h2('Simple interative tool to illustrate normal distribution'),
    plotOutput(outputId="histplot"),
    p('The purpose of this data product is to illustrate how the distribution of the mean of a sample changes as the sample size changes as well as the number of simulations is varied. This tool is inspired by the course on Inference in the Data Science series offerred by Johns Hopkins University on Coursera'),
    p('The simulation uses an exponential distribution rexp(), to generate the samples. The number of simulations, sample size and the lambda needs to be provided to the function to facilitate this'),
    
    h3('Instructions'),
    p('1. The Data Input pane on the left is used to manipulate the generation of the histogram'),
    p('2. Select the sample size from the radio button'),
    p('3. Use the simulation slider bar to select the number of simulations to perform'),
    p('4. Use the lambda slider bar to select the lamda value'),
    p('5. Observe how the distribution of sample means becomes more gaussian as the number of samples and simulations increases')
    
    )
  
  )
)