class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Connect Message from The Quad Co Site",
      :to => "gsweitz1@jhu.edu",
      :from => %("#{name}" <#{email}>)
    }
  end

  # simple_form automatically uses `id` for the option value.
  def id
    @key
  end

  # simple_form automatically uses this for the option text.
  def name
    # I18n.t(@key, scope: :"models.order.interests")
    @key
  end
end
