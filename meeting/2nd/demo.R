library(tidytext)
library(tibble)
library(stringr)
library(dplyr)

txt_data = c("Tesla is on a mission to accelerate the world’s transition to sustainable
energy. We focus relentlessly on innovation and rely on collaboration
across our teams to help achieve this goal. Along the way, we are
committed to maintaining safe and humane working conditions,
ensuring that all workers, including those within our supply chain, are
treated with respect and dignity and that our manufacturing
processes are environmentally responsible. Internally, we are
continuing to build a culture that is safe, respectful, fair and inclusive
for all our employees.
As cliché as it sounds, it is only thanks to our employees that we’ve
gotten to where we are today. If we expect to continue innovating
and changing the world for the better, we must ensure we have a
talented and engaged workforce with ample opportunity to
contribute to our mission and grow professionally.
At the center of Tesla’s strategy is:
Regular and meaningful engagement with our employees;
A robust culture of safety;
Clear development pathways for all our employees;
Highly competitive compensation programs; and
Principles of diversity, equity and inclusion built into all aspects of
hiring, promotion and retention.",
             
             "We planned very early—with Gigafactory Shanghai as the blueprint
In December 2019, we started planning for the potential spread of COVID-19 outside of China. Because Tesla had proactively
worked early on with our Gigafactory Shanghai operations on how the local government and businesses responded to COVID19, we were better prepared on the ground in our other global locations before the impact was felt in the rest of the world.
Specifically, we convened a pandemic management team at the leadership level and created a Tesla Playbook, including
COVID-19 response plans, policies and best practices. This team also implemented a six-step Return/Resume Operations Plan,
which involved Tesla’s EHS, HR, Security and Travel teams, including members at all levels of the organization, from associates
on the ground up through leadership, conducting risk assessments and executing plans to minimize identified risks.
Fact and figures*
A track-and-trace system was implemented—99.9% effective at stopping spread of the virus
We saw fewer than 40 workplace transmission cases of COVID-19 in all of 2020
Employee COVID-19 testing positivity rates were less than half the community rate, whether they were in the workplace or
working remotely
All employees received COVID-19 prevention training
Launched touchless vehicle delivery option globally in 2020
Free vaccines for employees aged 65+ began on March 1, 2021
• Free vaccines for all employees began on April 16, 2021")

text = c()
for(i in txt_data){
  text = append(str_replace_all(i, pattern = "\n", replacement = ""), text)
}

print(text)


txt_tibble = tibble(line = 1:2, text = text) %>% unnest_tokens(word, text)



sample_dict = tibble(
  word = c("responsible", "respectful", "relentlessly"),
  value = c(10, 8, -20),
  sentiment = c("positive", "positive", "negative")
)


score = txt_tibble %>% 
  select(word) %>% 
  inner_join(sample_dict) %>% 
  select(value) %>% 
  sum()

print(score)
