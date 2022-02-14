-- STUDENT USERS
INSERT INTO users(first_name, last_name, email, password, designation, about_me, phone_number, avatar, city, province, skills, github_url, linkedin_url, employer)
VALUES ('Trigun', 'Joshi', 'trigunjoshi@gmail.com', 'password', 'Full Stack Developer', 'I am a Full Stack Developer. I love to work with both front-end and back-end.', '6475558496', 'https://avatars.githubusercontent.com/u/15637663?v=4', 'Richmond', 'BC', 'JavaScript, Node.js, Express.js, React.js, Ruby on Rails, jQuery, TypeScript, Testing, SASS, CSS, HTML', 'https://github.com/joshitrigun', 'https://www.linkedin.com/in/tjoshi2020/', false ),
('David', 'Alpain', 'davealpain@outlook.com', 'password', 'Full Stack Developer', 'I am a Junior Full Stack Developer with lots of dearms!', '6276658597', 'https://www.pexels.com/photo/man-sitting-cozy-while-working-on-his-laptop-3153203/', 'Vancouver', 'BC', 'JavaScript, Node.js, Express.js, React.js, Ruby on Rails, jQuery, TypeScript, Testing', 'https://github.com/davidalpain', 'https://www.linkedin.com/in/tdavidalpain/', false ),
('Alan', 'Smith', 'smith@outlook.com', 'password', 'Junior Front-end Developer', 'I am a Junior Front-end Developer. I have expertise in UI/UX design.', '2866758789', 'https://www.pexels.com/photo/person-holding-node-text-1261427/', 'Calgary', 'AB', 'JavaScript, Node.js, Express.js, React.js, Ruby on Rails, jQuery, TypeScript, Testing, SASS, CSS', 'https://github.com/alansmith', 'https://www.linkedin.com/in/alansmith/', false ),
('Sandy', 'Linday', 'sandy_linday@live.com', 'password', 'Full Stack Developer', 'I am a Full Stack Developer. I have experience in both front-end and back-end development.', '3625478912', 'https://www.pexels.com/photo/photo-of-woman-using-silver-laptop-while-lying-on-grass-field-4458394/', 'Regina', 'SK', 'JavaScript, Node.js, Express.js, React.js, Ruby on Rails, jQuery, TypeScript, Testing, SASS, CSS', 'https://github.com/sandy_linday', 'https://www.linkedin.com/in/sandy_linday/', false ),
('Salman', 'Khan', 'salman@amir.com', 'password', 'Full Stack Developer', 'I am a Salman. I love problems.', '6045558496', 'https://avatars.githubusercontent.com/u/15637663?v=4', 'Vancouver', 'BC', 'JavaScript, Node.js, Express.js, React.js, Testing', 'https://github.com/salman', 'https://www.linkedin.com/in/tjoshi2020/', false),
('Amir', 'Khan', 'amir@shahrukh.com', 'password', 'Back End Developer', 'I am a Amir. I love Scripting.', '6042258496', 'https://avatars.githubusercontent.com/u/15637663?v=4', 'Vancouver', 'BC', 'JavaScript, Node.js, Express.js, React.js, Testing', 'https://github.com/amir', 'https://www.linkedin.com/in/tjoshi2020/', false),
('Shahrukh', 'Khan', 'shahrukh@salman.com', 'password', 'MERN Stack Developer', 'I am Khan. I love problems.', '6045558496', 'https://avatars.githubusercontent.com/u/15637663?v=4', 'Surrey', 'BC', 'JavaScript, Node.js, Express.js, React.js, Testing', 'https://github.com/salman', 'https://www.linkedin.com/in/tjoshi2020/', false),
('John', 'Stark', 'sjohn@gmail.com', 'password', 'Sr. Full Stack Developer', 'I am looking to use the skills I have learned to make a change in the world', '6478187544', 'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'Toronto', 'ON', 'HTML, CSS, JS, GIT, GITHUB, REACT, NODE, EXPRESS, RUBY, MONGODB, SQL', 'https://github.com/johnS', 'https://www.linkedin.com/in/sjohn/', false ),
('Tanya', 'Smith', 'smitht@gmail.com', 'password', 'Sr. Front-End Developer', 'I am looking to join a company to use my skills to create amazing UIs. Have a background in graphic design and want to use those skills with my programming skills to get a job as a front end developer or UI/UX developer.', '2267004544', 'https://images.pexels.com/photos/8090136/pexels-photo-8090136.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'London', 'ON', 'HTML, CSS, JS, VUE, BOOTSTRAP', 'https://github.com/smith_coder', 'https://www.linkedin.com/in/smitht/', false ),
('Carol', 'Johnston', 'johnstoncarol@gmail.com', 'password', 'Jr. Back-End Developer', 'Enjoy working in the backend, fetching data, and creating routes. Have some frontend experience but looking for a job as a backend developer.', '4163434544', 'https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'Oakville', 'ON', 'HTML, CSS, JS, ANGULAR, BOOTSTRAP, PYTHON, NODE, EXPRESS, RUBY', 'https://github.com/carol_dev', 'https://www.linkedin.com/in/carolJ/', false );

-- EMPLOYER USERS
INSERT INTO users(first_name, last_name, email, password, designation, about_me, phone_number, avatar, city, province, skills, github_url, linkedin_url, employer)
VALUES ('Tech Crunch', '', 'tech_crunch@gmail.com', 'password', null, 'Marketing Agency', 4160202000, null, 'Toronto', 'Ontario', null, null, null, true);

