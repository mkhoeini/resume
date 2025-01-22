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
      employee. My mission was to *mentor and lead* a team of engineers in replacing a legacy admin dashboard with new
      technologies while modernizing and innovating the product. I successfully *taught* TypeScript and React to
      the team while creating a new microservice-based architecture using async Python. We delivered a product
      that has been in successful use and continuous development for close to six years, with virtually no
      tech-related incidents. During my tenure with the team, I was responsible for:
      - Defining, prioritizing, and leading tech initiatives.
      - Creating a collaborative setup and running tech retrospectives to reduce technical
        debt and maintain high-quality services with low maintenance effort.
      - Leading and educating the team on the importance of SLIs and SLOs for reliability and quality.
      - Implementing our first SLOs and establishing a weekly meeting to review our SLOs and
        other reliability-related dashboards, fostering a culture of continuous improvement.

    Before moving on to my next stop at Spotify, I was responsible for *onboarding and mentoring* the new team
    replacing us, ensuring their success. My next journey at Spotify involved transforming the Customer Support
    tooling Product Area into a platform. I had the priviledge of leading the effort to define and implement a
    new product as the first successful example of a platform for our product area. I was responsible for:
      - Leading a team of *senior engineers* in an RFC-driven approach.
      - Establishing close relationships with *stakeholders and designers* to identify needs, negotiate requirements,
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

From an SWE Consultant to an Interim CTO, I held diverse responsibilities and gained varied experiences at JustTech.
During this period, I had two distinct assignments: one with a small startup named Sqore, and another with Spotify, where I
contributed my expertise. Concurrent with my Spotify assignment, I was appointed as the Interim CTO of JustTech. My
responsibilities encompassed attending board meetings, overseeing the hiring process, managing employee departures,
mentoring staff, and facilitating the growth of our human resources department. I facilitated this transition until joining
Spotify as a full-time employee.

At Sqore, I was part of a three-engineer team managing substantial operations. My expertise quickly earned their trust,
enabling me to enhance their technical infrastructure. We utilized an in-house Kubernetes cluster with a diverse technology
stack, including Ruby on Rails, TypeScript, React, PostgreSQL, AirTable, and Elixir - some of which I introduced. This
stack supported product development, marketing, analytics, and various technical requirements. Our platform bridged the
gap between students and universities in higher education, serving numerous global universities as clients and millions of
students as users. Our products were crucial for customer support, marketing, and analytics operations.

#line()
#experience("Freelance Software Developer", "January 2018 – January 2019", "Various Projects", "Istanbul, Turkey")

Throughout the year, I undertook various projects, showcasing my versatility in software development. Notable among
these was the development of a scientific library in Crystal, a statically-typed, compiled language known for its
performance and syntax inspired by Ruby. Another significant project involved the transformation of a web application,
migrating from a React/Redux/REST architecture to a more modern stack utilizing ReasonML, A syntax extension and
toolchain for OCaml, focused on JavaScript and native compilation, and GraphQL. These projects not only demonstrated my
proficiency in diverse programming languages and frameworks but also highlighted my ability to adapt to evolving
technologies in the field of software development.

Technology Stack: React, Redux, ReasonML, GraphQL, Crystal

#line()
#experience("CTO & Agile Coach", "March 2017 – December 2017", "Abgostaran", "Tehran, Iran")

As the Chief Technology Officer (CTO) for a company contracted by the Ministry of Agriculture, I played a pivotal role in
shaping the technological direction and team composition. My responsibilities extended beyond technical leadership to
include serving as an Agile Coach, fostering an environment of iterative development and continuous improvement.
Key aspects of my role included:
- Technology Selection: After careful evaluation, I chose Microsoft SharePoint as our primary backend and automation
platform, leveraging its robust features for document management and workflow automation.
- Custom Frontend Development: To enhance user experience and meet specific project requirements, I spearheaded the
creation of a bespoke frontend using Vue.js and Vuex for state management. This modern, reactive interface significantly
improved usability and performance.
- Backend Integration: Implemented a custom proxy server to facilitate seamless communication between our Vue.js
frontend and the SharePoint backend, ensuring optimal data flow and system performance.
- Talent Acquisition: Responsible for recruiting and hiring skilled developers, building a high-performing team capable of
executing our technological vision.
This role showcased my ability to blend strategic technology choices with hands-on development, while also nurturing an
agile, high-performance team in a government-contracted environment.

Technology Stack: SharePoint, Vue.js, Functional Programming, Clojure

#line()
#experience("Senior Consultant", "January 2016 – June 2017", "IranTIP", "Tehran, Iran")

IranTIP is an innovative platform designed to connect Iranian companies with global investors. As a key member of a
highly skilled four-developer team, I played a crucial role in architecting and implementing the complete frontend structure
of the website.
My primary contributions included:
- Frontend Architecture: Established a robust frontend framework using React, a popular JavaScript library for building
user interfaces, integrated with MobX for efficient state management.
- Development Environment: Configured a comprehensive development environment utilizing Webpack for module
bundling and TypeScript for enhanced code reliability and maintainability.
- DevOps Implementation: Set up essential DevOps tools, including a GitLab instance for version control and implemented
CI/CD (Continuous Integration/Continuous Deployment) pipelines to streamline the development process.
This project showcased my ability to leverage modern web technologies and development practices to create a scalable,
maintainable, and efficient web application. The combination of React’s component-based architecture, MobX’s reactive
state management, and TypeScript’s static typing resulted in a robust and performant frontend solution.

Technology Stack: React, MobX, TypeScript, Webpack, GitLab CI/CD

#line()
#experience("Vice President of Technology", "January 2016 – June 2017", "Intelligent Information Solutions Center (IIS)",
"Tehran, Iran")

As the Vice President of Technology at IIS, I spearheaded the implementation of a critical subsystem for the nationwide
portal of the Ministry of Education. Due to contractual constraints, the use of major external dependencies was prohibited,
presenting a unique challenge.
Key Achievements:
- Frontend Innovation: Led the frontend development, focusing on an intricate Drag and Drop interface. To meet the
project’s specific needs, I engineered a custom framework that hybridized elements from React and Angular.
- Minimalist Dependency Approach: Successfully implemented the complex interface using only jQuery with select plugins
and Hamt.js, a lightweight data structure library employed as an alternative to ImmutableJS for undo/redo functionality.
- Framework Integration: Later integrated this interface into a more comprehensive framework built on AngularJS,
demonstrating adaptability and scalability in our approach.
- Multi-faceted Web Development: Developed two distinct web interfaces: a customer panel and an admin panel,
showcasing versatility in both frontend and backend development.
- Project Diversity: Managed and contributed to several additional projects, highlighting adaptability across various
technological landscapes.
This role underscored my ability to innovate under constraints, lead complex technical projects, and leverage a diverse set
of technologies to deliver robust, scalable solutions in a high-stakes educational technology environment.

Technology Stack:
• Frontend: React, Angular, TypeScript, jQuery
• State Management: Redux
• DevOps: Docker, Cloud technologies
• Backend: MongoDB, Redis, Python, Node.js, Ruby

#line()
#experience("CTO & Co-founder", "May 2016 – March 2017", "Chejoori", "Tehran, Iran")

As the Chief Technology Officer and co-founder of Chejoori, I was instrumental in designing and developing a
comprehensive suite of products for our innovative startup. My responsibilities encompassed the entire technical stack,
from mobile applications to backend infrastructure.
Key Accomplishments:
- Mobile Application Development: Engineered a robust mobile app using React Native, enabling cross-platform
functionality and rapid development cycles.
- Chatbot Integration: Developed an interactive chatbot for the Telegram platform, enhancing user engagement and
providing an additional channel for customer interaction.
- Infrastructure Design: Architected and implemented a scalable infrastructure for our services based on Docker, ensuring
flexibility, consistency, and ease of deployment across different environments.
- Database Management: Established and maintained database systems, focusing on performance optimization and data
integrity to support our growing user base.
This role showcased my ability to wear multiple hats in a startup environment, from strategic technology planning to
hands-on development across various platforms and technologies. My experience at Chejoori demonstrated my capacity to
lead technical initiatives in a fast-paced startup environment, leveraging cutting-edge technologies to build a cohesive and
scalable product ecosystem.

Technology Stack:
- Frontend: React, ReactNative, ClojureScript
- Backend: Python, Clojure
- Infrastructure: Docker, PaaS
- Database: RethinkDB

#line()
#experience("CTO & Co-founder", "April 2013 – January 2016", "Kelasi", "Tehran, Iran")

As the Chief Technology Officer and co-founder of Kelasi, I led the technological vision and implementation for our
innovative startup in the education technology and MOOC (Massive Open Online Course) sectors. Our platform leveraged
cutting-edge technologies to deliver a robust and scalable learning solution.

Key Achievements:
- Backend Architecture: Designed and implemented a sophisticated server infrastructure based on Ruby on Rails,
adopting a microservice architecture to ensure scalability and maintainability.
- Infrastructure Management: Utilized Docker for containerization, streamlining deployment processes and enhancing
system reliability across different environments.
- Frontend Development: Spearheaded the creation of a dynamic and responsive frontend using ClojureScript and React,
providing an engaging and interactive user experience for our educational platform.
- Technology Integration: Successfully integrated diverse technologies to create a cohesive and efficient full-stack
solution, balancing performance with user-centric design.

This role demonstrated my ability to harness emerging technologies in creating an innovative educational platform,
showcasing my skills in both strategic technology planning and hands-on development. My tenure at Kelasi underscored my
capacity to lead technical initiatives in a startup environment, effectively utilizing modern web technologies to build a
scalable and user-friendly educational platform.

Technology Stack:
- Backend: Ruby on Rails
- Frontend: ClojureScript, React
- Infrastructure: Docker
- Architecture: Microservices

#line()
#experience("Web Developer & Designer", "2012 – 2013", "Student Help Center", "Cyberjaya, Malaysia")

In this role, I spearheaded the development and design of a comprehensive website solution for the Student Help Center,
showcasing my full-stack development capabilities.

Key Accomplishments:
- End-to-End Development: Engineered a complete website from conception to deployment, demonstrating proficiency in
both frontend and backend technologies.
- Content Management System Integration: Leveraged the power of Drupal, a versatile CMS, to create a dynamic and
easily maintainable web platform.
- Custom Functionality: Utilized PHP to develop bespoke features, tailoring the site to meet the specific requirements of
the Student Help Center.
- Interactive User Interface: Implemented responsive and user-friendly interfaces using jQuery, enhancing overall user
experience and engagement.

This project underscored my ability to independently manage a comprehensive web development initiative, effectively
utilizing industry-standard technologies to deliver a robust and user-centric online platform. My work at the Student Help
Center demonstrated my capacity to blend technical expertise with design sensibilities, resulting in a fully functional and
aesthetically pleasing web solution.

Technology Stack: PHP, jQuery, Drupal

#line()
#experience("Web Developer, Freelancer, & Consultant", "2012 – 2013", "Various Places", "Tehran, Iran")

During this period, I engaged in diverse projects across multiple domains, showcasing my versatility and adaptability in
software development.

Key Projects and Achievements:
- Restaurant Management Software:
- Developed a desktop application for restaurant management and accounting using Python and Qt.
- Later reimplemented the application using JavaScript and Node-webkit, demonstrating adaptability to evolving
technologies.
- Dynamic Programming Application: Engineered a desktop application using C++ and GTK, focused on dynamic
programming algorithms.
- Extensible CMS Platform: Created a ground-up, customizable Content Management System primarily targeted at
universities, showcasing my ability to develop scalable web solutions.
- Web Design Company: Founded a web design firm leveraging cutting-edge technologies, highlighting my entrepreneurial
spirit and technical leadership.
- Local Business Mapping Startup: Co-founded a startup to implement a local map service for finding nearby businesses,
demonstrating my ability to identify market needs and develop innovative solutions.
This period of my career underscored my ability to work across various technologies and platforms, from desktop
applications to web services, and my capacity to blend technical expertise with entrepreneurial initiatives. My diverse
experiences during this time demonstrated my versatility as a developer, my ability to quickly adapt to new technologies,
and my entrepreneurial drive in the tech industry.

Technology Stack:
- Languages: Python, PHP, C++, JavaScript
- Frameworks/Libraries: Qt, GTK, Node-webkit
- Areas: Web Development, Desktop Applications, CMS, Mapping Services
