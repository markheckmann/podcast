# use case of parenthesis indirectly in code (r <- r+ 1)

r <- 1
(r <- 1)

c(r <- 42, 100 ) # rarely used


wb <- createWorkbook()

sheet <- "Ausschluss"
addWorksheet(wb, sheet)
writeData(wb, sheet, df_ausschluss)

sheet <- "Bereich"
addWorksheet(wb, sheet)
writeData(wb, sheet, df_bereich_ma)

sheet <- "Demo"
addWorksheet(wb, sheet)
r <- 1
writeData(wb, sheet, "xxx", startRow = (r <- r + 2))
writeData(wb, sheet, df_fuehrung, startRow = (r <- r + 2))
writeData(wb, sheet, "yyy", startRow = (r <- r + nrow(df_fuehrung) + 3))
writeData(wb, sheet, df_standort, startRow = (r <- r + 2))
writeData(wb, sheet, "zzz", startRow = (r <- r + nrow(df_standort) + 3))
writeData(wb, sheet, df_prod_verw, startRow = (r <- r + 2))
