#set page(paper: "a4", margin: (y: 1in, x: 1in))
#set text(font: "Carlito", size: 11pt)

#show title: set text(font: "Merriweather", size: 24pt, fill: rgb("#21355B"))

#show heading: set text(font: "Merriweather")
#show heading.where(level: 1): it => {
    set text(size: 16pt, fill: rgb("#425E8E"))
    stack[
        #v(9pt)
        #it
        #place(top, dy: 27pt, line(length: 100%, stroke: rgb("#425E8E")))
        #v(7pt)
    ]
}
#show heading.where(level: 2): set text(size: 14pt)

#let experience(title, time, place, addr) = [
    #v(5pt)
    #box(heading(level: 2, text(size: 13pt)[#title _(#place)_]))
    #h(1fr) #time
    \
    #h(1fr) #addr
]

#title([Jonathan Khoeini])
Senior Software Engineer \@ Spotify

#{
    set text(size: 8pt);
    grid(rows: 2, columns: (1fr, 1fr, 1fr), row-gutter: 5pt,
        [Stockholm, Sweden],
        [+46 72 169 7134],
        [jonathan\@komemfamily.com],
        [www.linkedin.com/in/khoeini],
        [github.com/mkhoeini],
        [stackoverflow.com/users/774896])
}


= HIGHLIGHTS
Software engineering leader with *15+ years* of experience. Technical co-founder. CTO. VP of Technology.
Proficient in multiple tech stacks including Backend (*Java*, *Python*, *Node*),
Frontend (*TypeScript*, *React*), devops and cloud services (*Kubernetes*, *BigTable*, *PubSub*),
*iOS*, And *Data Engineering*. 

= Keywords
#text(size: 8pt, [Java • Python • Swift • Ruby • Elixir • Go • NodeJs • ExpressJs • GCP •
pub/sub • bigtable • GKE • PostgreSQL • Redis • gRPC •
Javascript • Typescript • React • NextJs • HTML •
CSS • SASS • CSS in JS • CSS Modules • Atomic
CSS • Service Workers • Progressive Web App (PWA) •
Scrum • Kanban • Agile • System Design • Algorithms and
Datastructures • TDD • BDD • OOP • FP • SOLID •
Docker • K8s • CI/CD • Bash • Linux • NGINX •
Webpack • Babel • NPM • Yarn • Jest • Cypress • Git])

= PROFESSIOINAL EXPERIENCES
#experience("Senior Software Engineer", "(6 years) December 2019 – Present", "Spotify", "Stockholm, Sweden")

- Mentored a team of engineers to _replace a legacy customer support dashboard_, Reducing Average handle time by 80% and incidents by 99%.
- Led a team of senior engineers in an *RFC-driven approach* to define and implement the first platform for the product area, reducing the risk from vendor lock-in and onboarding new lines of business. 
- Led an initiative to _reduce the number of PagerDuty alerts_ by implementing a *data-driven approach*, successfully reducing PagerDuty alerts by *over 80%*. Helped to create a *reliability working group* for the product area, generated our first-ever *monthly availability report* for our product area.
- Took ownership of _\~200_ inherited *data pipelines* (Flyte/Scio), resolving high-impact incidents across customer-support data flows.

#experience("Interim CTO", "February 2019 – December 2019", "JustTech", "Stockholm, Sweden")

- I joined as a SWE Consultant and got promoted to an Interim CTO.
- Attended board meetings, oversaw the hiring process, managed employee departures, and mentored staff among other things.

#experience("Senior Software Engineer Consult", "February 2019 – May 2019", "Sqore", "Stockholm, Sweden")

- Operated an in-house Kubernetes cluster, serving customers around the world.
- Developed a new product based on AirTable and Elixir, supporting marketing and analytics teams.
- Maintained a tech stack comprised of Ruby on Rails, TypeScript, React, and PostgreSQL, delivering a product serving numerous global universities as clients and millions of students as users.

#experience("Freelance Software Developer", "January 2018 – January 2019", "Various Projects", "Istanbul, Turkey")

Launched various projects in as a freelancer. Notably:
- The development of a scientific library in Crystal Language
- The migrating of a web application from React/Redux/REST to ReasonML and GraphQL.

#experience("CTO / Agile Coach", "March 2017 – December 2017", "Abgostaran", "Tehran, Iran")

Decided the technological direction and team composition, hiring skilled developers, building a high-performing team capable of executing our technological vision. Created a culture of iterative development and continuous improvement. 

#experience("Senior Consultant", "January 2016 – June 2017", "IranTIP", "Tehran, Iran")

- Helped shaping the architecture and implementing the complete frontend structure of the website.
- Setup GitLab instance for version control and implemented CI/CD pipelines to streamline the development process.

#experience("VP of Technology", "Jan 2016 – Jun 2017", "Intelligent Information Solutions Center (IIS)", "Tehran, Iran")

Implemented a portal for the the Ministry of Education, making sure the requirements of the stakeholders have been delivered building a custom framework inspired by React and Angular, while implementing a great user experience for the users.

#experience("CTO & Co-founder", "May 2016 – Mar 2017", "Chejoori", "Tehran, Iran")

Engineered a robust mobile app using React Native, Developed an interactive chatbot for the Telegram platform, Architected and implemented a scalable infrastructure for our services based on Docker.

#experience("CTO & Co-founder", "Apr 2013 – Jan 2016", "Kelasi", "Tehran, Iran")

Implemented a microservice architecture utilising Docker, Ruby on Rails, ClojureScript, and React, ensuring scalability and maintainability.

#experience("Web Developer & Designer", "2012 – 2013", "Student Help Center", "Tehran, Iran")

Designed, developed, and delivered a custom Drupal website using PHP and jQuery, enabling marketting and online services for the Student Help Center.


// Local Variables:
// typst-preview--master-file: "/Users/mohammadk/Dev/resume/resume.typ"
// End:
