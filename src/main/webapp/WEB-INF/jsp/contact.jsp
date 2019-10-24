<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

  <section class="section" id="contact">
    <div class="container">
      <form:form method="POST" modelAttribute="contact" action="/sendContactMessage">
      <div class="section-heading">
        <h3 class="title is-2">Contact</h3>
        <h4 class="subtitle is-5">Get in touch</h4>
      </div>
      <br/>
      <div class="columns">
        <div class="column is-6 is-offset-3">
          <div class="box">
            <div class="field">
              <form:label class="label" path="name">Name</form:label>
              <div class="control">
                <form:input class="input" path="name" type="text" placeholder="Text input" />
              </div>
            </div>

            <div class="field">
              <form:label class="label" path="email">Email</form:label>
              <div class="control has-icons-left">
                <form:input class="input" path="email" type="email" placeholder="Email input" value="" />
                <span class="icon is-small is-left">
                  <i class="fas fa-envelope"></i>
                </span>
              </div>
            </div>

            <div class="field">
              <form:label class="label" path="message">Message</form:label>
              <div class="control">
                <form:textarea class="textarea" path="message" placeholder="Textarea"></form:textarea>
              </div>
            </div>

            <div class="field is-grouped has-text-centered">
              <div class="control">
                <form:button type="submit" class="button is-link is-large">
                  <span class="icon">
                    <i class="fas fa-envelope"></i>
                  </span>
                  <span>Submit</span></form:button>
              </div>
            </div>
          </div>
        </div>
      </div>
      </form:form>
    </div>
  </section>