import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import tech_stack from "./TechStacks";
import axios from "axios";
import Cookies from "js-cookie";
import Stack from "@mui/material/Stack";
import Button from "@mui/material/Button";
import "./CreateSeekerForm.css";
import onChangeHandler from "../../helpers/onChangeHandler";

const CreateSeekerForm = () => {
  const navigate = useNavigate();
  const techArray = tech_stack.map((skill) => {
    return { ...skill, checked: false };
  });

  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [email, setEmail] = useState("");
  const [number, setNumber] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [designation, setDesignation] = useState("");
  const [about, setAbout] = useState("");
  const [city, setCity] = useState("");
  const [province, setProvince] = useState("");
  const [githubUrl, setGithubUrl] = useState("");
  const [linkedinUrl, setLinkedinUrl] = useState("");
  const [avatar, setAvatar] = useState("");
  const [resume, setResume] = useState("");
  const [checkedState, setCheckedState] = useState(techArray);
  const [submitted, setSubmitted] = useState(false);
  const [error, setError] = useState("");

  useEffect(() => {
    const id = Cookies.get("id");
    axios.get("/api/users").then((response) => {
      const data = response.data;
      data.forEach((user) => {
        if (id) {
          if (user.id === Number(id)) {
            setFirstName(user.first_name);
            setLastName(user.last_name);
            setEmail(user.email);
            setNumber(user.phone_number);
            setPassword(user.password);
            setDesignation(user.designation);
            setAbout(user.about_me);
            setCity(user.city);
            setProvince(user.province);
            setGithubUrl(user.github_url);
            setLinkedinUrl(user.linkedin_url);
            setAvatar(user.avatar);
            setResume(user.resume);
            const skills = user.skills.split(",");
            const newCheckedState = checkedState.map((skill) => {
              if (skills.includes(skill.name)) {
                skill.checked = true;
              }
              return skill;
            });
            setCheckedState(newCheckedState);
          }
        }
      });
    });
  }, []);

  const reset = () => {
    setFirstName("");
    setLastName("");
    setEmail("");
    setNumber("");
    setPassword("");
    setConfirmPassword("");
    setDesignation("");
    setAbout("");
    setCity("");
    setProvince("");
    setGithubUrl("");
    setLinkedinUrl("");
    setAvatar("");
    setResume("");
    setCheckedState(
      tech_stack.map((skill) => {
        return { ...skill, checked: false };
      })
    );
    setTimeout(() => setSubmitted(false), 3000);
  };

  const validate = () => {
    if (firstName === "") {
      setError("First name cannot be blank");
      return;
    }
    if (lastName === "") {
      setError("Last name cannot be blank");
      return;
    }
    if (email === "") {
      setError("Email cannot be blank");
      return;
    }
    if (number === "") {
      setError("Number cannot be blank");
      return;
    }
    if (password === "") {
      setError("Password cannot be blank");
      return;
    }
    if (confirmPassword === "") {
      setError("Confirm password cannot be blank");
      return;
    }
    if (confirmPassword !== password) {
      setError("Confirm password and password inputs are different");
      return;
    }
    if (designation === "") {
      setError("Designation cannot be blank");
      return;
    }
    if (about === "") {
      setError("About cannot be blank");
      return;
    }
    if (city === "") {
      setError("City cannot be blank");
      return;
    }
    if (province === "") {
      setError("Province cannot be blank");
      return;
    }
    if (githubUrl === "") {
      setError("Github URL cannot be blank");
      return;
    }
    if (linkedinUrl === "") {
      setError("LinkedIn URL cannot be blank");
      return;
    }
    if (avatar === "") {
      setError("Avatar cannot be blank");
      return;
    }
    if (resume === "") {
      setError("Resume cannot be blank");
      return;
    }

    setError("");
    onSubmitHandler();
  };

  const onSubmitHandler = () => {
    const stack = [];
    checkedState.forEach((item, index) => {
      if (item.checked) {
        stack.push(item.name);
      }
    });
    const data = {
      first_name: firstName,
      last_name: lastName,
      email,
      number,
      password,
      designation,
      about,
      city,
      province,
      github_url: githubUrl,
      linkedin_url: linkedinUrl,
      resume,
      avatar,
      employer: false,
      skills: stack.join(", "),
    };

    axios
      .post("http://localhost:8080/api/users", data)
      .then((response) => {
        setSubmitted(response.data);
        reset();
        setTimeout(() => navigate(`/login`), 3000);
      })
      .catch((err) => {
        console.log(err.message);
      });
  };

  return (
    <>
      <form className="w-100 mx-auto" onSubmit={(e) => e.preventDefault()}>
        <div className="seeker-form-container">
          <div className="message">
            {submitted ? (
              <p className="bg-success text-center text-white w-25 mx-auto fw-bold">
                {submitted}
              </p>
            ) : (
              ""
            )}
            {error ? (
              <p className="bg-danger text-center text-white w-25 mx-auto fw-bold">
                {error}
              </p>
            ) : (
              ""
            )}
          </div>
          <div className="forms">
            <div className="form-header">
              <h3 className="text-center">Edit Profile</h3>
              <div className="form-input">
                <input
                  type="text"
                  placeholder="First Name"
                  name="first_name"
                  value={firstName}
                  onChange={(event) => setFirstName(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="text"
                  placeholder="Last Name"
                  name="last_name"
                  value={lastName}
                  onChange={(event) => setLastName(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="email"
                  placeholder="Email"
                  name="email"
                  value={email}
                  onChange={(event) => setEmail(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="text"
                  placeholder="Phone Number"
                  name="number"
                  value={number}
                  onChange={(event) => setNumber(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="password"
                  placeholder="Password"
                  name="password"
                  value={password}
                  onChange={(event) => setPassword(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="password"
                  placeholder="Confirm Password"
                  name="confirm_password"
                  value={confirmPassword}
                  onChange={(event) => setConfirmPassword(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="text"
                  placeholder="Designation"
                  name="designation"
                  value={designation}
                  onChange={(event) => setDesignation(event.target.value)}
                />
              </div>
              <div className="form-input">
                <textarea
                  name="about"
                  rows="5"
                  cols="33"
                  placeholder="About me..."
                  value={about}
                  onChange={(event) => setAbout(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="text"
                  placeholder="City"
                  name="city"
                  value={city}
                  onChange={(event) => setCity(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="text"
                  placeholder="Province"
                  name="province"
                  value={province}
                  onChange={(event) => setProvince(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="text"
                  placeholder="Github"
                  name="github_url"
                  value={githubUrl}
                  onChange={(event) => setGithubUrl(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="text"
                  placeholder="Linkedin"
                  name="linkedin_url"
                  value={linkedinUrl}
                  onChange={(event) => setLinkedinUrl(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="text"
                  placeholder="Choose Avatar"
                  name="avatar"
                  value={avatar}
                  onChange={(event) => setAvatar(event.target.value)}
                />
              </div>
              <div className="form-input">
                <input
                  type="text"
                  placeholder="Upload Resume"
                  name="resume"
                  value={resume}
                  onChange={(event) => setResume(event.target.value)}
                />
              </div>
            </div>
            <div className="form-footer">
              <div className="d-flex flex-column">
                <h4>Add Skills</h4>
                <div className="tech-stack">
                  {checkedState.map(({ name }, index) => {
                    return (
                      <div className="tech-stack-names" key={index}>
                        <input
                          type="checkbox"
                          name={name}
                          value={name}
                          id={name}
                          checked={checkedState[index].checked}
                          onChange={() =>
                            onChangeHandler(
                              index,
                              checkedState,
                              setCheckedState
                            )
                          }
                        />
                        <label htmlFor={name}>{name}</label>
                      </div>
                    );
                  })}
                </div>
              </div>
              <Stack spacing={2} direction="row">
                <Button variant="outlined" onClick={validate}>
                  Save
                </Button>
                <Button
                  variant="outlined"
                  href={
                    Cookies.get("user")
                      ? `/developers/${Cookies.get("id")}`
                      : "/"
                  }
                >
                  Cancel
                </Button>
              </Stack>
            </div>
          </div>
        </div>
      </form>
    </>
  );
};

export default CreateSeekerForm;
