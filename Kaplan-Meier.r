## Curvas de Kaplan-Meier

survObject <- Surv(dataframe$TiempoDeSupervivencia, dataframe$EstadoDelPaciente)
fit <- survfit(survObject ~ 1, data = dataframe)
ggsurvplot(fit, data=dataframe, surv.median.line = "hv",   conf.int = TRUE, xlab = "Tiempo / meses")

summary(fit)
