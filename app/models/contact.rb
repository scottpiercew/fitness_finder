class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Contact Message from The Quad Co Site",
      :to => Setting.contact_email,
      :from => %("#{name}" <#{email}>)
    }
  end



    def self.keys
      KEYS
    end

    def self.all
      keys.map { |key| new(key) }
    end

    def initialize(key)
      @key = key
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
end
