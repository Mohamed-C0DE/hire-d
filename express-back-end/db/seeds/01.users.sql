-- STUDENT/EMPLOYER USERS 
INSERT INTO users(first_name, last_name, email, password, designation, about_me, phone_number, avatar, city, province, skills, github_url, linkedin_url, employer, resume)
VALUES ('Trigun', 'Joshi', 'trigunjoshi@gmail.com', 'password', 'Full Stack Developer', 'I am a Full Stack Developer. I love to work with both front-end and back-end.', '6475558496', 'https://avatars.githubusercontent.com/u/15637663?v=4', 'Richmond', 'BC', 'JavaScript,HTML5,Ajax,Sass,React', 'https://github.com/joshitrigun', 'https://www.linkedin.com/in/tjoshi2020/', false, 'https://cdn-images.zety.com/pages/full_stack_developer_resume_example_template_diamond.png' ),
('David', 'Alpain', 'davealpain@outlook.com', 'password', 'Full Stack Developer', 'I am a Junior Full Stack Developer with lots of dearms!', '6276658597', 'https://images.pexels.com/photos/3153203/pexels-photo-3153203.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'Vancouver', 'BC', 'Ajax,Sass,React,TypeScript,React Native,Storybook,Ruby on Rails,PostgreSQL', 'https://github.com/davidalpain', 'https://www.linkedin.com/in/tdavidalpain/', false, 'https://cdn-images.zety.com/pages/full_stack_developer_resume_example_template_diamond.png' ),
('Alan', 'Smith', 'smith@outlook.com', 'password', 'Junior Front-end Developer', 'I am a Junior Front-end Developer. I have expertise in UI/UX design.', '2866758789', 'https://images.pexels.com/photos/6267567/pexels-photo-6267567.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'Calgary', 'AB', 'Node,MongoDB,CSS,Jest,Express,MySQL,Python,Chai/Mocha', 'https://github.com/alansmith', 'https://www.linkedin.com/in/alansmith/', false, 'https://cdn-images.zety.com/pages/full_stack_developer_resume_example_template_diamond.png' ),
('Sandy', 'Linday', 'sandy_linday@live.com', 'password', 'Full Stack Developer', 'I am a Full Stack Developer. I have experience in both front-end and back-end development.', '3625478912', 'https://images.pexels.com/photos/5604517/pexels-photo-5604517.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'Regina', 'SK', 'Ruby on Rails,PostgreSQL,JQuery,Cypress,Node,MongoDB,CSS,Jest,Express', 'https://github.com/sandy_linday', 'https://www.linkedin.com/in/sandy_linday/', false, 'https://www.velvetjobs.com/resume/full-stack-developer-resume-sample.jpg' ),
('Salman', 'Khan', 'salman@amir.com', 'password', 'Full Stack Developer', 'I am a Salman. I love problems.', '6045558496', 'https://images.pexels.com/photos/9721189/pexels-photo-9721189.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260','Vancouver', 'BC', 'TypeScript,React Native,Storybook,Ruby on Rails,PostgreSQL,JQuery,Cypress,Node,MongoDB', 'https://github.com/salman', 'https://www.linkedin.com/in/tjoshi2020/', false, 'https://www.velvetjobs.com/resume/full-stack-developer-resume-sample.jpg'),
('Amir', 'Khan', 'amir@shahrukh.com', 'password', 'Back End Developer', 'I am a Amir. I love Scripting.', '6042258496', 'https://avatars.githubusercontent.com/u/92200936?v=4', 'Vancouver', 'BC', 'JavaScript,HTML5,Ajax,Sass,MongoDB,CSS,Jest,Express,MySQL,Python','https://github.com/amir', 'https://www.linkedin.com/in/tjoshi2020/', false, 'https://www.velvetjobs.com/resume/full-stack-developer-resume-sample.jpg'),
('Shahrukh', 'Khan', 'shahrukh@salman.com', 'password', 'MERN Stack Developer', 'I am Khan. I love problems.', '6045558496', 'https://images.pexels.com/photos/10821961/pexels-photo-10821961.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'Surrey', 'BC', 'HTML5,Ajax,Sass,React,TypeScript,React Native,Storybook,Ruby on Rails,PostgreSQL,JQuery,Cypress,Node,MongoDB,CSS', 'https://github.com/salman', 'https://www.linkedin.com/in/tjoshi2020/', false, 'https://d25zcttzf44i59.cloudfront.net/full-stack-java-developer-resume-example.png'),
('John', 'Stark', 'sjohn@gmail.com', 'password', 'Sr. Full Stack Developer', 'I am looking to use the skills I have learned to make a change in the world', '6478187544', 'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'Toronto', 'ON', 'HTML5,Ajax,Sass,React,TypeScript,React Native,Storybook,Ruby on Rails,PostgreSQL,JQuery,Cypress,Node,MongoDB,CSS', 'https://github.com/johnS', 'https://www.linkedin.com/in/sjohn/', false, 'https://d25zcttzf44i59.cloudfront.net/full-stack-java-developer-resume-example.png' ),
('Tanya', 'Smith', 'smitht@gmail.com', 'password', 'Sr. Front-End Developer', 'I am looking to join a company to use my skills to create amazing UIs. Have a background in graphic design and want to use those skills with my programming skills to get a job as a front end developer or UI/UX developer.', '2267004544', 'https://images.pexels.com/photos/8090136/pexels-photo-8090136.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'London', 'ON', 'JavaScript,HTML5,Ajax,Sass,React,TypeScript,React Native,Storybook,Ruby on Rails,PostgreSQL,JQuery,Cypress', 'https://github.com/smith_coder', 'https://www.linkedin.com/in/smitht/', false, 'https://d25zcttzf44i59.cloudfront.net/full-stack-java-developer-resume-example.png' ),
('Carol', 'Johnston', 'johnstoncarol@gmail.com', 'password', 'Jr. Back-End Developer', 'Enjoy working in the backend, fetching data, and creating routes. Have some frontend experience but looking for a job as a backend developer.', '4163434544', 'https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'Oakville', 'ON', 'JavaScript,HTML5,Ajax,Sass,React,TypeScript,React Native,Storybook,Ruby on Rails,PostgreSQL,JQuery,Cypress', 'https://github.com/carol_dev', 'https://www.linkedin.com/in/carolJ/', false, 'https://d25zcttzf44i59.cloudfront.net/full-stack-java-developer-resume-example.png' ), 
('Tech Crunch', '', 'tech_crunch@gmail.com', 'password', null, 'Marketing Agency', '4160202000', 'https://cdn.icon-icons.com/icons2/2699/PNG/512/techcrunch_logo_icon_170625.png', 'Toronto', 'ON', null, null, null, true, null),
('FlightCentre', '', 'fcentre@gmail.com', 'password', null, 'Airline Company', '6044358253', 'https://upload.wikimedia.org/wikipedia/commons/0/09/Flight_Centre_Canada_Logo-wikipedia.png', 'Vancouver', 'BC', null, null, null, true, null),
('Amazon', '', 'amazon@gmail.com', 'password', null, 'Telecommunications Company', '4035169354', 'https://images-na.ssl-images-amazon.com/images/G/15/gc/designs/livepreview/amazon_dkblue_noto_email_v2016_ca-main._CB468775011_.png', 'Calgary', 'AB', null, null, null, true, null);

