setwd("~/Datathon 2024")

final_dataset_disad <- final_dataset %>% filter(self_certified_small_disadvantaged_business == TRUE)

boxplot1 <- ggplot(data = final_dataset_disad, aes(x = potential_total_value_of_award, y = c8a_program_participant)) + 
  geom_boxplot(outliers = FALSE) +
  labs(title = "EPA Awards for Small Disadvantaged Businesses",
       x = "Potential Total Value of Award", 
       y = "C8(a) Program Participation") +
  scale_x_continuous(labels = function(x) paste0("$", format(x / 1e6, scientific = FALSE), "M")) +
  scale_y_discrete(labels = c("FALSE" = "No", "TRUE" = "Yes"))

boxplot1 

