#set page(paper: "a4", margin: (y: 0.4in, x: 0.3in))
#set text(font: "Inter", size: 9pt)
#show heading: set text(font: "Rubik", weight: "black")
#show heading.where(level: 1): set text(size: 24pt)
#show heading.where(level: 2): it => {
  set text(size: 18pt)
  stack[
    #it
    #place(top, dy: 18pt, line(length: 100%, stroke: gray))
    #v(6pt)
  ]
}
#show heading.where(level: 3): set text(size: 14pt)

#let icon(name) = box(width: 0.2in, baseline: 25%, image(name))

#let experience(title, time, place, addr) = grid(rows: 2, columns: (1fr, 1fr), align: (left, right),
  title, [#time #icon("calendar.svg")], place, [#addr #icon("map.svg")])

#page(background: place(top + right, rect(fill: rgb("2A6465"), width: 30%, height: 100%)))[
  #grid(columns: (70%, 30%), gutter: 0.2in, stroke: none, [
    = MOHAMMAD SADEGH KHOEINI
    Senior Software Engineer \@ Spotify

    #grid(rows: 3, columns: 2, column-gutter: 0.1in,
      [#icon("map.svg") Stockholm, Sweden],
      [#icon("phone.svg") +46 72 169 7134],
      [#icon("email.svg") mohammadk\@spotify.com],
      [#icon("linkedin.svg") mohammad-sadegh-khoeini-b6779956],
      [#icon("github.svg") github.com/mkhoeini],
      [#icon("stack-overflow.svg") stackoverflow.com/users/774896])

    == HIGHLIGHTS
    Software engineering leader with 15+ years of experience. Technical co-founder. CTO. VP of Technology.
    Proficient in multiple tech stacks including Backend (Java, Python), Frontend (TypeScript, React),
    And data engineering. Proven track record of continuous improvement and collaboration using agile
    methodologies.

    == LATEST PROFESSIOINAL EXPERIENCE
    #experience("Senior Software Engineer", "(5 years) December 2019 – Present", "Spotify", "Stockholm, Sweden")

    I joined Spotify in 2019 as a consultant and after a few months transitioned to a full-time
      employee. My mission was to mentor and lead a team of engineers in replacing a legacy admin dashboard with new
      technologies while modernizing and innovating the product. I successfully taught TypeScript and React to
      the team while creating a new microservice-based architecture using async Python. We delivered a product
      that has been in successful use and continuous development for close to six years, with virtually no
      tech-related incidents. During my tenure with the team, I was responsible for:
      - Defining, prioritizing, and leading tech initiatives.
      - Creating a collaborative setup and running tech retrospectives to reduce technical
        debt and maintain high-quality services with low maintenance effort.
      - Leading and educating the team on the importance of SLIs and SLOs for reliability and quality.
      - Implementing our first SLOs and establishing a weekly meeting to review our SLOs and
        other reliability-related dashboards, fostering a culture of continuous improvement.

    Before moving on to my next stop at Spotify, I was responsible for onboarding and mentoring the new team
    replacing us, ensuring their success. My next journey at Spotify involved transforming the Customer Support
    tooling Product Area into a platform. I had the priviledge of leading the effort to define and implement a
    new product as the first successful example of a platform for our product area. I was responsible for:
      - Leading a team of senior engineers in an RFC-driven approach.
      - Establishing close relationships with stakeholders and designers to identify needs, negotiate requirements,
        and timelines, define roadmaps, and provide accountability for on-time delivery while
        progress through different MVP phases to launch a full product.

    After leading the initial definition, design, and launch of the product, I took ownership of the frontend
    component and mentored my team in frontend technologies. Led an initiative to reduce the number of
    PagerDuty alerts from our legacy systems by implementing a data-driven approach. Guided the team in
    improving processes and enhancing our quality culture by conducting post-mortems for incidents and
    reducing alert noise. Successfully reduced PagerDuty alerts by over 80%.

    My latest focus is on the reliability working group of our product area, of which I am a
    founding member. Our first initiative, which has become a product area-wide effort with
    TSG approval, was to generate our first-ever monthly availability report for our product area.
  ], block(inset: 0.1in)[
    #set text(fill: white, size: 6pt)
    #show heading: set block(above:0.2in, below: 0.1in)

    #box(clip: true, radius: 50%, width: 100%, image("avatar.png"))

    == Top Skills
    === Leadership & Soft Skills
    Cross Functional
    Collaboration • Effective
    Communication • Data
    Driven Decision Making •
    Technical Excelence &
    Innovation • Mentorship
    & Growth • Sustainable
    Software Development

    === Methodologies
    Scrum • Kanban • Agile •
    System Design •
    Algorithms and
    Datastructures • TDD •
    BDD • OOP • FP • SOLID

    === Backend
    Java • Python • Ruby •
    Elixir • Go • NodeJs •
    ExpressJs • GCP •
    pub/sub • bigtable • GKE
    • PostgreSQL • Redis •
    gRPC

    === Frontend
    Javascript • Typescript •
    React • NextJs • HTML •
    CSS • SASS • CSS in JS
    • CSS Modules • Atomic
    CSS • Service Workers •
    Progressive Web App
    (PWA)

    === Tools
    Docker • K8s • CI/CD •
    Bash • Linux • NGINX •
    Webpack • Babel • NPM
    • Yarn • Jest • Cypress •
    Git

    === EDUCATION
    #icon("grad.svg") Master of Science in
    Computer Science (Dropped
    out)
    Sharif University of
    Technology
    2014 – 2016

    #icon("grad.svg") Bachelor of Science
    in Applied Mathematics
    Kharazmi University
    2007 – 2011
  ])
]


== FORMER PROFESSIONAL EXPERIENCE
#experience("Consult Software Engineer", "February 2019 – December 2019", "JustTeck", "Stockholm, Sweden")

I joined as a SWE Consultant and got promoted to an Interim CTO.
During this period, I had two assignments: first with a small startup named
Sqore, then with Spotify. At the same time, I was the Interim CTO of JustTech.

==== Interim CT
My responsibilities included attending board meetings, overseeing the
hiring process, managing employee departures, and mentoring staff among other
things.

==== Sqore, SSWE Consult
I was part of a three-engineer team managing substantial operations.
We utilized an in-house Kubernetes cluster.
The tech stack comprised of Ruby on Rails, TypeScript, React, PostgreSQL,
AirTable, and Elixir - some of which I introduced. Our tech supported product
development, marketing, analytics, and various technical requirements. The
product served numerous global universities as clients and millions of students
as users. Our products were crucial for customer support, marketing, and
analytics operations.

#let sep = pad(y: 8pt, line(length: 100%, stroke: 0.5pt + silver))
#sep
#experience("Freelance Software Developer", "January 2018 – January 2019", "Various Projects", "Istanbul, Turkey")

I undertook various projects in this period as a freelancer. Notable among
these was the development of a scientific library in Crystal Programming
Language, and a project involved the rewrite of a web application,
migrating from a React/Redux/REST architecture to a new stack using ReasonML
and GraphQL.

#sep
#experience("CTO & Agile Coach", "March 2017 – December 2017", "Abgostaran", "Tehran, Iran")

A company contracted by the Ministry of Agriculture. My role was shaping the
technological direction and team composition. My other responsibilities included
include serving as an Agile Coach, creating a culture of iterative development
and continuous improvement. Key aspects of my role included:
- Technology Selection: Microsoft SharePoint as our primary backend,
automation platform, document management, and workflow automation.
- Custom Frontend Development: Created a bespoke frontend using Vue.js and Vuex for
state management.
- Backend Integration: Implemented a proxy server from scratch in C\# to enable
communication between the vue.js frontend and the SharePoint backend.
- Talent Acquisition: hiring skilled developers, building a high-performing team
capable of executing our technological vision.

#sep
#experience("Senior Consultant", "January 2016 – June 2017", "IranTIP", "Tehran, Iran")

As a key member of a highly skilled four-developer team, I helped shaping the
architecture and implementing the complete frontend structure of the website.
My primary contributions included:
- Frontend Architecture: React integrated with MobX for efficient state management.
- Development Environment: Configured Webpack for module bundling and TypeScript for
enhanced code reliability and maintainability.
- DevOps Implementation: Set up GitLab instance for version control and implemented
CI/CD pipelines to streamline the development process.

#pagebreak()
== FORMER PROFESSIONAL EXPERIENCE

#let experience1Line(title, time, place) = grid(rows: 1, columns: (3fr, 1fr),
align: (left + top, right + top),
[#v(6pt) #text(10pt)[#emph(title) at #emph(place)]],
[#time #icon("calendar.svg")])

#experience1Line("VP of Technology", "Jan 2016 – Jun 2017", "Intelligent Information Solutions Center (IIS)")

I implemented a critical subsystem for the nationwide portal of the Ministry of
Education. Led the frontend development, implemented Drag and Drop interface. I
built a custom framework inspired by React and Angular.

#experience1Line("CTO & Co-founder", "May 2016 – Mar 2017", "Chejoori")

Engineered a robust mobile app using React Native, Developed an interactive chatbot
for the Telegram platform, Architected and implemented a scalable infrastructure
 for our services based on Docker.

#experience1Line("CTO & Co-founder", "Apr 2013 – Jan 2016", "Kelasi")

Implemented a backend based on Ruby on Rails, adopting a microservice architecture
to ensure scalability and maintainability. Utilized Docker for containerization.
Built a frontend using ClojureScript and React,

#experience1Line("Web Developer & Designer", "2012 – 2013", "Student Help Center")

Engineered a complete website from conception to deployment leveraging Drupal.
Utilized PHP to develop bespoke features, tailoring the site to meet the specific
requirements of the Student Help Center. Implemented responsive UI using jQuery.

#experience1Line("Web Developer, Freelancer, & Consultant", "2012 – 2013", "Various Places")

During this period, I engaged in diverse projects across multiple domains.
Key Projects and Achievements:
- Developed a desktop application for restaurant management and accounting using
 Python and Qt. Later reimplemented the application using JavaScript and Node-webkit.
- Engineered a desktop application using C++ and GTK, focused on dynamic
programming algorithms.
- Created a ground-up, customizable Content Management System primarily targeted at
universities.
- Founded a web design firm leveraging cutting-edge technologies.
- Co-founded a startup to implement a local map service for finding nearby businesses.
