plot_experiment_means <- function(nosim, sample, lambda) {
  
  experiment <- replicate(nosim,rexp(sample,lambda))
  simulation_means <- apply(experiment,2,mean)
  mean_of_means <- round(mean(simulation_means),3)
  
  hist(simulation_means,prob=TRUE)
  par(col="red",lty=2,lwd=3)
  abline(v=mean_of_means)
  par(col="blue",lwd=3)
  lines(density(simulation_means))
}



shinyServer(
  function(input, output){
       
    output$histplot <- renderPlot(
      plot_experiment_means(input$numsim,input$samplesize,input$lambda), height=350
      )
    
  }
)