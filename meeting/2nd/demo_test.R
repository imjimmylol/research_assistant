library(tidytext)
library(tibble)
library(stringr)
library(dplyr)

txt_data = c("Tesla is on a mission to accelerate the world¡¦s transition to sustainable
energy. We focus relentlessly on innovation and rely on collaboration
across our teams to help achieve this goal. Along the way, we are
committed to maintaining safe and humane working conditions,
ensuring that all workers, including those within our supply chain, are
treated with respect and dignity and that our manufacturing
processes are environmentally responsible. Internally, we are
continuing to build a culture that is safe, respectful, fair and inclusive
for all our employees.
As cliche as it sounds, it is only thanks to our employees that we¡¦ve
gotten to where we are today. If we expect to continue innovating
and changing the world for the better, we must ensure we have a
talented and engaged workforce with ample opportunity to
contribute to our mission and grow professionally.
At the center of Tesla¡¦s strategy is:
Regular and meaningful engagement with our employees;
A robust culture of safety;
Clear development pathways for all our employees;
Highly competitive compensation programs; and
Principles of diversity, equity and inclusion built into all aspects of
hiring, promotion and retention.",
             
             "We planned very early¡Xwith Gigafactory Shanghai as the blueprint
In December 2019, we started planning for the potential spread of COVID-19 outside of China. Because Tesla had proactively
worked early on with our Gigafactory Shanghai operations on how the local government and businesses responded to COVID19, we were better prepared on the ground in our other global locations before the impact was felt in the rest of the world.
Specifically, we convened a pandemic management team at the leadership level and created a Tesla Playbook, including
COVID-19 response plans, policies and best practices. This team also implemented a six-step Return/Resume Operations Plan,
which involved Tesla¡¦s EHS, HR, Security and Travel teams, including members at all levels of the organization, from associates
on the ground up through leadership, conducting risk assessments and executing plans to minimize identified risks.
Fact and figures*
A track-and-trace system was implemented¡X99.9% effective at stopping spread of the virus
We saw fewer than 40 workplace transmission cases of COVID-19 in all of 2020
Employee COVID-19 testing positivity rates were less than half the community rate, whether they were in the workplace or
working remotely
All employees received COVID-19 prevention training
Launched touchless vehicle delivery option globally in 2020
Free vaccines for employees aged 65+ began on March 1, 2021
¡E Free vaccines for all employees began on April 16, 2021", 
             "Since our earliest days, Tesla has been built upon a culture of open communication. Over the years, as Tesla has grown as a
company, we have worked to maintain this culture. Quite simply, we believe that raising matters openly and discussing them
freely is the best way to solve problems and ensure a healthy, fulfilling, productive and amicable workplace. Employees have
the right to freely discuss their wages, benefits and terms and conditions of employment and to raise complaints internally or
externally.
Tesla encourages employees to bring any concerns or complaints they may have to any member of management. This open
communication is a reality at Tesla and employee concerns are given attention as promptly as possible. While the open floor
policy is available to all employees at any time, we all have a role to play in ensuring we maintain a respectful and safe
workplace. To this end, any employee who is subjected to, a witness of or has knowledge of any conduct that violates Tesla
policies, is asked to immediately report the conduct. Members of management may be subject to discipline if they fail to report
in a timely manner.
Our employees can report concerns to their supervisor or HR partner. If they prefer to report another way, the Integrity Line is
available 24 hours a day, seven days a week. The Integrity Line allows employees to report concerns anonymously and without
fear of retaliation. Consistent with the U.N. Guiding Principles, Tesla publicizes the Integrity Line to promote accessibility,
including an internal website link for quick and easy access. Concerns are reviewed in accordance with established protocols by
investigators with expertise in employee relations, human relations, compliance, information security, internal audit and
environmental, health and safety. Investigations teams periodically review trends, outcomes and opportunities for remediation
and appropriate controls.")




text = c()
for(i in txt_data){
  text = append(str_replace_all(i, pattern = "\n", replacement = ""), text)
}

# print(text)


txt_tibble = tibble(indus = c("air", "land", "air"), text = text) %>% unnest_tokens(word, text)

print(txt_tibble)

sample_dict = tibble(
  word = c("responsible", "respectful", "relentlessly", 'positivity'),
  value = c(10, 8, -20, 15),
  sentiment = c("positive", "positive", "negative", "positive")
)


  
txt_tibble %>% 
  inner_join(sample_dict) %>%
  group_by(indus) %>%
  select(value) %>% 
  summarise(sentiment_score = sum(as.numeric(value)))

  # group_by(indus)

