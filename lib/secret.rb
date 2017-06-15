class Secret
  # Encapsulates secrets access to allow for different methods in development & testing (application.secrets), and production/staging (ENV variables), e.g. Heroku. Will also mitigate the impact of future changes in implementation.
  def self.get(key)
    if Rails.configuration.x.envs_that_use_secrets_yml.include? Rails.env
      Rails.application.secrets[key.to_sym]
    else
      ENV[key]
    end
  end

  def self.include?(key)
    if Rails.configuration.x.envs_that_use_secrets_yml.include? Rails.env
      Rails.application.secrets.include?(key.to_sym)
    else
      ENV.include?(key)
    end
  end

  def self.all
    if Rails.configuration.x.envs_that_use_secrets_yml.include? Rails.env
      Rails.application.secrets
    else
      ENV
    end
  end
end
