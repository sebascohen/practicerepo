using Plots

S0 = 114000          # Starting salary
r = 0.07            # 7% annual increase
years = 0:10        # Years of experience

S2 = 140000          # Starting salary
r2 = 0.03            # 3% annual increase
years = 0:10        # Years of experience

salaries1 = [S0 * (1 + r)^x for x in years]  # Compute salary for each year PT

salaries2 = [S2 * (1 + r2)^x for x in years]  # Compute salary for each year Manager

plot(years, salaries1,
     xlabel = "Years of Experience",
     ylabel = "Salary (\$)",
     title = "Salary Growth (9% Annual Increase)",
     legend = false,
     marker = :square,
     linewidth = 2,
     yformatter = :plain)
     
     plot!(years, salaries2,
     xlabel = "Years of Experience",
     ylabel = "Salary (\$)",
     title = "Salary Growth (3%/7% Annual Increase)",
     legend = false,
     marker = :circle,
     linewidth = 2,
     yformatter = :plain)
     
     savefig("PTplot.png")

