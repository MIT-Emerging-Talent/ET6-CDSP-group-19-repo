<!-- markdownlint-disable MD024 -->
<!--
  MD024 is disabled here because we intentionally repeat headers like 
  "Contributions", "Challenges" and "Progress" in each member's individual
  retrospectives. These duplicates are purposeful, so ignoring
  this rule prevents unnecessary lint warnings for valid cases.
-->
# Milestone 3: Data Analysis

**Milestone dates:** July 1 – July 21

The main goal of this milestone was to identify and apply appropriate analysis
techniques that matched our research questions, data characteristics, and
team constraints. We focused on selecting methods that would effectively
answer our research questions while being realistic about our technical
capabilities and the nature of our dataset. This milestone also welcomed
Muhammet Isik, who joined us from Group DECQ to contribute to our work.

Below is our collective reflection on what went well, what we can improve, and
what we’ve learned from working together during this phase.

---

## 🔴 Stop Doing

- Overestimating our available time windows given competing commitments and
  coordination challenges.  
- Working on tasks in isolation without sharing progress early;
  regular check-ins help us stay better aligned.

---

## 🟢 Continue Doing

- Maintaining realistic expectations about our technical capabilities and
  choosing appropriate analysis methods accordingly.  
- Supporting each other through the learning curve of working with complex,
  real-world datasets.  
- Maintaining open communication about challenges and blockers as they arise.

---

## 🟡 Start Doing

- Setting up more frequent check-ins to maintain momentum and keep everyone
  aligned on progress.  
- Creating clearer task distribution early in the milestone to maximize
  our collective efficiency.  
- Establishing better communication protocols to stay connected when working
  asynchronously across different schedules.  
- Planning analysis phases with more realistic buffer time for unexpected
  data challenges.

---

## 💡 Lessons Learned

- Government datasets are authoritative, but also often large, messy, and
  time-consuming to clean.  
- Real-world data analysis often involves more iterative problem-solving than
  expected.  
- Choosing simpler techniques that align with our question and constraints
  (e.g., chi-square tests, time series analysis, logistic regression) can be
  more impactful than complex ones.  
- Flexibility is essential as the team navigates between gaps in availability,
  skill levels, and time zones.  
- Having a range of experience levels has supported shared learning, even when
  progress was uneven.

---

## 📊 Strategy vs. Board

### 1️⃣ What parts of our plan went as expected?

- Successfully identified analysis techniques (chi-square, time series,
  logistic regression) that are appropriate for our research questions and
  skill level.  
- Maintained focus on matching analysis methods to our actual constraints
  rather than pursuing overly complex approaches.  
- Found that our emphasis on simplicity and appropriateness over sophistication
  aligned well with the milestone objectives.

### 2️⃣ What parts of our plan did not work out?

- Coordination across different schedules and time zones proved more
  challenging than anticipated, requiring us to adapt to more asynchronous
  work patterns.  
- The comprehensive nature of our government dataset required more extensive
  preprocessing work than initially planned.  
- We spent significant time during this milestone on cleaning tasks that we
  had originally hoped to finish earlier.

### 3️⃣ Did you need to add things that weren't in your strategy?

- Enhanced our data cleaning and validation processes to properly handle the
  characteristics of our comprehensive dataset.  
- Adapted to more asynchronous work patterns than originally planned due to
  scheduling coordination needs.  
- Initially, we had not planned to use 'absentia' outcomes as a measure of
  representation. However, since our first-selected tables did not include
  reliable legal representation data and the dataset was too large to explore
  everything in time,
  we temporarily used 'absentia' data as a proxy to keep analysis moving.  
  Fortunately, our teammates later discovered and cleaned another table
  containing actual legal representation information.

### 4️⃣ Or remove extra steps?

- Streamlined our approach to focus on core analysis techniques rather than
  exploring every possible method.

---

## 👤 Individual Retrospectives

### Banu Ozyilmaz

#### Contributions

- Explored the dataset structure and identified key variables from the
  `B_tblProceeding` table relevant to our research question
- Worked on initial data analysis and drafted the first version of the notebook
- Maintained the 1_datasets documentation by recording newly added tables
  and keeping track of data sources
- Added content to the retrospective file, recorded agenda notes, and organized
  them systematically in the notes folder
- Helped teammates with documentation and error fixes
- Contributed to team coordination and milestone planning discussions
- Supported data quality assessment and validation efforts

#### Challenges

- Handling the size and complexity of the dataset was very challenging,
  requiring significant computational resources and processing time
- Coordinating work across different time zones and personal commitments
  created scheduling difficulties and communication gaps
- Experienced a personal loss during this period that affected my availability
  and focus, requiring adaptation of work patterns
- Learning new tools and methods while working under time pressure was demanding
  and required balancing thoroughness with efficiency

#### Progress

- Gained hands-on experience with data manipulation tools like pandas
  and improved proficiency in data processing workflows
- Improved ability to identify meaningful patterns in complex datasets
  and extract actionable insights
- Learned to choose analysis methods that match available resources and time
  constraints while maintaining analytical rigor
- Developed better understanding of data limitations, uncertainty, and
  quality assessment techniques
- Built confidence in working with real-world, messy data and handling
  unexpected data challenges
- Enhanced project management and documentation skills through milestone coordination

### Amro Mohamed

#### Contributions

- Responsible for completing the Exploratory Data Analysis (EDA) part of the project
- Focused on understanding key patterns, distributions, and relationships
  in the data
- Analyzed case types, detention durations, and legal representation timelines
- Developed comprehensive visualizations and statistical summaries for the dataset
- Created detailed documentation of findings and methodologies used

#### Challenges

- Lack of consistent communication and availability within the team affected
  collaboration efficiency
- Difficulty aligning on shared goals and resolving blockers in a timely manner
- Working with large, complex datasets required significant time and computational
  resources
- Balancing thoroughness of analysis with project timeline constraints

#### Progress

- Gained extensive experience in exploratory data analysis techniques
- Developed skills in data visualization and pattern recognition
- Improved ability to work independently while maintaining project standards
- Enhanced understanding of immigration case data structures and relationships
- Built proficiency in statistical analysis and interpretation

### Muhammad Shahroz

#### Contributions

- Participated in data analysis and EDA activities during this milestone
- Contributed to team discussions and decision-making processes
- Supported data exploration efforts and documentation tasks
- Engaged with learning new analytical techniques and methodologies

#### Challenges

- Communication within the team could have been better coordinated
- Adjusting to new analytical tools and methods while meeting project deadlines
- Working across different time zones and availability schedules
- Balancing learning curve with productive contribution to team goals

#### Progress

- Learned about data analysis and EDA methodologies in this milestone
- Gained insights from observing how other team members approached problems
- Developed new ideas and perspectives through collaborative work
- Improved understanding of real-world data analysis challenges and solutions
- Enhanced technical skills through hands-on experience with the dataset

### Muhammet Ali Isik

#### Contributions

- Joined the group during this milestone and reviewed previous work to understand
  the team's progress and current state of the project
- Explored the data through EDA activities, focusing on case types, detention
  durations, and legal representation patterns
- Contributed to data analysis efforts by building on the foundation laid
  by previous team members
- Engaged with the existing codebase and analytical approaches to maintain
  project continuity

#### Challenges

- Communication within the team could be better organized to improve
  collaboration efficiency and coordination
- Joining the project mid-stream required significant time to understand
  previous work and catch up with team progress
- Adapting to the team's established workflows and analytical approaches
  while contributing meaningfully to ongoing work

#### Progress

- Learned extensively by observing other team members' analysis approaches
  and methodologies
- Gained understanding of the project's analytical framework and research questions
- Developed familiarity with the EOIR dataset structure and characteristics
- Enhanced ability to work with existing code and build upon others' contributions
- Improved skills in collaborative data analysis and team integration

### Ammar Ibrahim

#### Contributions

- Participated in cleaning the Reps_Assigned table to support the analysis
  of legal representation data
- Contributed to modifying the data_analysis notebook to reflect updated
  data structure and findings
- Supported data quality improvement efforts through table cleaning and validation
- Engaged with the analytical workflow despite personal challenges

#### Challenges

- Faced a difficult personal situation that limited ability to participate
  effectively through most of the milestone
- The coding level in this milestone was somewhat challenging, requiring
  additional learning and adaptation
- Working in isolation for much of the milestone made it harder to stay
  aligned with the team's progress and objectives

#### Progress

- Gained deeper experience working with pandas and Jupyter notebooks in
  a real-world setting
- Learned to explore and reuse code written by others as a pathway to
  understanding complex analytical workflows
- Discovered new Python libraries that help handle different types of data
  and analytical challenges
- Realized the importance of open communication in teamwork and collaborative
  data analysis projects

### Gennadii Ershov

#### Contributions

- Focused on cleaning, exploring, and validating the EOIR dataset comprehensively
- Cleaned the juvenile_proceedings table and revised previous cleaning logic
  for the cases table to improve data quality
- Initiated the structure for the data exploration notebook and delegated
  main exploration tasks to team members
- Took the lead in organizing Zoom calls and served as main speaker to guide
  discussions and align team progress
- Provided technical guidance to team members throughout the analytical process
- Documented the data cleaning and validation process to ensure clarity
  and reproducibility

#### Challenges

- Coordinating team efforts across different time zones and availability
  schedules while maintaining project momentum
- Balancing leadership responsibilities with technical contributions
  and quality assurance
- Ensuring consistent data quality standards while managing multiple
  cleaning and validation tasks

#### Progress

- Enhanced leadership and coordination skills through organizing team meetings
  and guiding discussions
- Developed expertise in data cleaning and validation processes for
  complex government datasets
- Improved ability to delegate tasks effectively while maintaining
  quality oversight
- Built proficiency in technical documentation and process standardization
- Strengthened skills in providing technical guidance and mentorship
  to team members

### Ramon Colmenares

#### Contributions

- Analyze and read the project to catch up
- Identify where I can contribute
- Starting building the website

#### Challenges

- Understand the code and the datasets for the code analysis

#### Progress

- First draft of the website, with charts using the code of the notebooks and plotly
