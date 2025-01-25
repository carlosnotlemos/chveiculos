class ContactsController < ApplicationController
  def index
    @socialsnet = [
      { sociallink: "https://www.instagram.com/carlim_11/", socialclass: "ri-instagram-line", title: "Instagram" },
      { sociallink: "https://github.com/carlosnotlemos", socialclass: "ri-github-line", title: "GitHub" },
      { sociallink: "https://www.linkedin.com/in/carlos-henrique-b33b78191/", socialclass: "ri-linkedin-box-line", title: "Linkedin" }
    ]
  end
end
