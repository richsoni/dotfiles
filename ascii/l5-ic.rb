#!/usr/bin/env ruby

# Num  Colour    #define         R G B

# 0    black     COLOR_BLACK     0,0,0
# 1    red       COLOR_RED       1,0,0
# 2    green     COLOR_GREEN     0,1,0
# 3    yellow    COLOR_YELLOW    1,1,0
# 4    blue      COLOR_BLUE      0,0,1
# 5    magenta   COLOR_MAGENTA   1,0,1
# 6    cyan      COLOR_CYAN      0,1,1
# 7    white     COLOR_WHITE     1,1,1

def print
  items = [
    'Subject Matter Expertise: Identifies / formulates new problems and approaches taken to solve them.',
    'Subject Matter Expertise: Acts as a systems designer, leading designs of major software components, systems, and features owned by the team/ product area.',
    'Subject Matter Expertise: The go-to person for a large area of expertise.',
    'Autonomy: Able to drive sprints for a squad given strategic or functional direction.',
    'Collaborative Behaviour: Represents a squad or significant functional sub-area.',
    'Collaborative Behaviour: Drives feature development end-to-end.',
    'Collaborative Behaviour: Active partner with product, design, and peer engineering leads and managers.',
    'Collaborative Behaviour: Regularly gives actionable feedback to team members, peers, and mentees.',
    'Influence: Begins to have indirect influence beyond functional boundaries, such as with product on technical feasibility and roadmap, or with test engineering on tooling and execution needs.',
    'Influence: Aligns co-related systems across squads on common API patterns, practices, or other instrumentation.',
    'Influence: Motivates engineers on the squad to join or focus on set of initiatives.',
    'Execution: Delivers large projects at quarterly level. Sets and drives OKRs.',
    'Execution: Utilize design, coding patterns, tools and frameworks and methods to facilitate in effectively meeting the team sprint objectives and the overall quarterly team objectives.',
    'Execution: Drive POC activities, initiation of new frameworks or services while taking hands-on role in execution.'
  ]
  color_not_white_or_black = 1+rand(6)
  puts
  puts `tput setaf #{color_not_white_or_black};printf "#{items.sample}"`
  puts
end

print
