class Contact < MailForm::Base
  require 'secret'
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  def headers
    {
      :subject => "Connect Message from The Quad Co Site",
      :to => Secret.get('CONTACT_EMAIL'),
      :from => %("#{name}" <#{email}>)
    }
  end
end
