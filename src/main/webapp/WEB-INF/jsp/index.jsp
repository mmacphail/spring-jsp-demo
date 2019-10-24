<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Personal - Free Bulma template</title>
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
  <!-- Bulma Version 0.8.x-->
  <link rel="stylesheet" href="https://unpkg.com/bulma@0.8.0/css/bulma.min.css" />
  <link rel="stylesheet" type="text/css" href="/css/personal.css">
  <script async type="text/javascript" src="/js/bulma.js"></script>
</head>

<body>
  <!-- Navigation bar -->
  <nav class="navbar is-link is-fixed-top">
    <div class="navbar-brand">
      <div class="navbar-burger burger" data-target="navbarExampleTransparentExample">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>

    <div id="navbarExampleTransparentExample" class="navbar-menu">
      <div class="navbar-end">
        <a class="navbar-item" href="#about">
          <span class="icon">
            <i class="fas fa-info"></i>
          </span>
          <span>About</span>
        </a>
        <a class="navbar-item" href="#services">
          <span class="icon">
            <i class="fas fa-bars"></i>
          </span>
          <span>Services</span>
        </a>
        <a class="navbar-item" href="#resume">
          <span class="icon">
            <i class="fas fa-file-alt"></i>
          </span>
          <span>Resume</span>
        </a>
        <a class="navbar-item" href="#portfolio">
          <span class="icon">
            <i class="fas fa-th-list"></i>
          </span>
          <span>Portfolio</span>
        </a>
        <a class="navbar-item" href="#contact">
          <span class="icon">
            <i class="fas fa-envelope"></i>
          </span>
          <span>Contact</span>
        </a>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <section class="hero is-link is-fullheight is-fullheight-with-navbar">
    <div class="hero-body">
      <div class="container">Hello! I am
        <h1 class="title is-1">
          Minion Tim Spring with DevTools
        </h1>
        <h2 class="subtitle is-3">
          Full Stack Web Developer
        </h2>
      </div>
    </div>
  </section>

  <!-- About -->
  <section class="section" id="about">
    <!-- Title -->
    <div class="section-heading">
      <h3 class="title is-2">About Me</h3>
      <h4 class="subtitle is-5">Jack of all trades, master of "some"</h4>
      <div class="container">
        <p>Web developer with more than <strong>4 years</strong> of well-rounded experience with a degree in the
          field of
          <strong>Computer Science</strong>, extensive knowledge of modern Web techniques and love for <strong>Coffee</strong>.
          Looking for an opportunity to work and upgrade, as well as being involved in an organization that
          believes
          in gaining a competitive edge and giving back to the community.</p>
      </div>
    </div>

    <div class="columns has-same-height is-gapless">
      <div class="column">
        <!-- Profile -->
        <div class="card">
          <div class="card-content">
            <h3 class="title is-4">Profile</h3>

            <div class="content">
              <table class="table-profile">
                <tr>
                  <th colspan="1"></th>
                  <th colspan="2"></th>
                </tr>
                <tr>
                  <td>Address:</td>
                  <td>Guru's Lab</td>
                </tr>
                <tr>
                  <td>Phone:</td>
                  <td>0123-456789</td>
                </tr>
                <tr>
                  <td>Email:</td>
                  <td>minion@despicable.me</td>
                </tr>
              </table>
            </div>
            <br>
            <div class="buttons has-addons is-centered">
              <a href="#" class="button is-link">Github</a>
              <a href="#" class="button is-link">LinkedIn</a>
              <a href="#" class="button is-link">Twitter</a>
              <a href="#" class="button is-link">CodeTrace</a>
            </div>
          </div>
        </div>
      </div>
      <div class="column">
        <!-- Profile picture -->
        <div class="card">
          <div class="card-image">
            <figure class="image is-4by3">
              <img src="https://source.unsplash.com/random/1280x960" alt="Placeholder image">
            </figure>
          </div>
        </div>
      </div>
      <div class="column">
        <!-- Skills -->
        <div class="card">
          <div class="card-content skills-content">
            <h3 class="title is-4">Skills</h3>
            <div class="content">
              <c:forEach items="${skills}" var="skill">
                <article class="media">
                  <div class="media-content">
                    <div class="content">
                      <p>
                        <strong>${skill.name}:</strong>
                        <br>
                        <progress class="progress is-primary" value="${skill.level}" max="100"></progress>
                      </p>
                    </div>
                  </div>
                </article>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Skills tags -->
  <!-- <br>
        <div class="tags custom-tags">
          <span class="tag is-light">Node.js</span><span class="tag is-light">Express.js</span><span class="tag is-light">VueJS</span><span
            class="tag is-light">JavaScript</span><span class="tag is-light">HTML5</span><span class="tag is-light">Canvas</span><span
            class="tag is-light">CSS3</span><span class="tag is-light">Bulma</span><span class="tag is-light">Bootstrap</span><span
            class="tag is-light">jQuery</span><span class="tag is-light">Pug</span><span class="tag is-light">Stylus</span><span
            class="tag is-light">SASS/SCSS</span><span class="tag is-light">Webpack</span><span class="tag is-light">Git</span><span
            class="tag is-light">ASP.NET Web Forms</span><span class="tag is-light">MSSQL</span><span class="tag is-light">MongoDB</span><span
            class="tag is-light">Apache Cordova</span><span class="tag is-light">Chrome Extensions</span>
        </div> -->

  <!-- Services -->
  <section class="section" id="services">
    <div class="section-heading">
      <h3 class="title is-2">Services</h3>
      <h4 class="subtitle is-5">What can I do for you?</h4>
    </div>
    <div class="container">
      <div class="columns">
        <div class="column">
          <div class="box">
            <div class="content">
              <h4 class="title is-5">Front End Web Development</h4>
              Develop Front End using latest standards with HTML5/CSS3 with added funtionality using JavaScript and
              Vue.js.
            </div>
          </div>
        </div>
        <div class="column">
          <div class="box">
            <div class="content">
              <h4 class="title is-5">Back End Web Development</h4>
              Develop Back End application/service using Node.js or ASP .NET and SQL server or Mongo DB databases.
            </div>
          </div>
        </div>
      </div>

      <div class="columns">
        <div class="column">
          <div class="box">
            <div class="content">
              <h4 class="title is-5">Front End Web Development</h4>
              Develop Front End using latest standards with HTML5/CSS3 with added funtionality using JavaScript and
              Vue.js.
            </div>
          </div>
        </div>
        <div class="column">
          <div class="box">
            <div class="content">
              <h4 class="title is-5">Back End Web Development</h4>
              Develop Back End application/service using Node.js or ASP .NET and SQL server or Mongo DB databases.
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Resume -->
  <section class="section" id="resume">
    <div class="section-heading">
      <h3 class="title is-2">Resume</h3>
      <h4 class="subtitle is-5">More about my past</h4>
      <a href="#" class="button is-link is-medium">
        <span class="icon">
          <i class="fas fa-file-alt"></i>
        </span>
        <span>Download My Resume</span>
      </a>
    </div>
  </section>

  <%@include file="portfolio.jsp" %>

  <%@include file="contact.jsp" %>

  <%@include file="footer.jsp" %>
</body>

</html>
