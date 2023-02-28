class CvReader
  def initialize(text)
    @text = text
    @name = ""
    @email = ""
    @education = []
    @experience = []
    @projects = []
    @publications = []
  end

  def extract_information
    extract_name
    extract_email
    extract_education
    extract_experience
    extract_projects
    extract_publications
  end

  def to_h
    {
      name: @name,
      email: @email,
      education: @education,
      experience: @experience,
      projects: @projects,
      publications: @publications
    }
  end

  private

  def extract_name
    # Extract name from text
    # Modify this method as needed
    @name = "John Doe"
  end

  def extract_email
    # Extract email from text
    # Modify this method as needed
    @email = "john.doe@example.com"
  end

  def extract_education
    # Extract education from text
    # Modify this method as needed
    @education = [
      { institution: "University of Example", degree: "Bachelor of Science", field_of_study: "Computer Science", graduation_year: "2020" },
      { institution: "Example College", degree: "Associate of Science", field_of_study: "Mathematics", graduation_year: "2018" }
    ]
  end

  def extract_experience
    # Extract experience from text
    # Modify this method as needed
    @experience = [
      { company: "Example Inc.", job_title: "Software Engineer", start_date: "January 2021", end_date: "Present", description: "Worked on the development of a web application using Ruby on Rails and React.js" },
      { company: "ABC Company", job_title: "Intern", start_date: "May 2020", end_date: "August 2020", description: "Assisted with the development of a mobile application using Swift and React Native" }
    ]
  end

  def extract_projects
    # Extract projects from text
    # Modify this method as needed
    @projects = [
      { title: "Project 1", description: "Developed a Ruby on Rails web application for managing tasks" },
      { title: "Project 2", description: "Implemented a machine learning algorithm for classifying images using Python" }
    ]
  end

  def extract_publications
    # Extract publications from text
    # Modify this method as needed
    @publications = [
      { title: "Paper 1", authors: "John Doe, Jane Smith", venue: "IEEE Conference on Example", year: "2021" },
      { title: "Paper 2", authors: "John Doe, Bob Johnson", venue: "ACM Journal of Example", year: "2020" }
    ]
  end
end
