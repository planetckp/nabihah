class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :mobile,    :validate => true
  attribute :message,	:validate => true
  attribute :nickname,  :captcha  => true



  def headers
    {
      :subject => "Contact Form",
      :to => "ranjitchandra1986@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
  end