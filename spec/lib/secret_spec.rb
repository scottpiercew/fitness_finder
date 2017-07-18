require 'rails_helper'

RSpec.describe Secret do
  secrets_envs = Rails.configuration.x.envs_that_use_secrets_yml
  envs_envs = Rails.configuration.x.envs_that_use_env
  all_envs = secrets_envs + envs_envs

  describe 'Secret.get' do
    secrets_envs.each do |environment|
      it "should (1) respond with correct secret_key_base in #{environment}" do
        set_environment(environment)
        secret = 'secret_key_base'
        expect(Secret.get('secret_key_base')).to eq(Rails.application.secrets[:secret_key_base])
      end
    end

    envs_envs.each do |environment|
      it "should (2) respond with correct ENV secret in #{environment}" do
        set_environment(environment)
        with_modified_env EXAMPLE_SECRET: 'foo' do
          expect(Secret.get('EXAMPLE_SECRET')).to eq(ENV['EXAMPLE_SECRET'])
        end
      end
    end

    envs_envs.each do |environment|
      it "should (3) return nil with unknown credential in #{environment}" do
        set_environment(environment)
        secret = 'unknown_secret'
        expect(Secret.get(secret)).to be nil
      end
    end
  end

  describe 'Secret.include?' do
    secrets_envs.each do |environment|
      it "should (1) respond with true when a secret has been set in #{environment}" do
        set_environment(environment)
        add_to_secrets('EXAMPLE_SECRET', 'foo')
        expect(Secret.include?('EXAMPLE_SECRET')).to be true
        remove_from_secrets('EXAMPLE_SECRET')
      end
    end

    envs_envs.each do |environment|
      it "should (2) respond with true when a secret has been set in #{environment}" do
        set_environment(environment)
        with_modified_env EXAMPLE_SECRET: 'foo' do
          expect(Secret.include?('EXAMPLE_SECRET')).to be true
        end
      end
    end

    all_envs.each do |environment|
      it "should (3) respond with false when a secret is not set in #{environment}" do
        set_environment(environment)
        expect(Secret.include?('EXAMPLE_SECRET')).to be false
      end

      it "should (4) respond with false when a secret is nil in #{environment}" do
        set_environment(environment)
        with_modified_env EXAMPLE_SECRET: nil do
          expect(Secret.include?('EXAMPLE_SECRET')).to be false
        end
      end
    end
  end

  def set_environment(environment)
    allow(Rails).to receive(:env).and_return(ActiveSupport::StringInquirer.new(environment))
  end

  def with_modified_env(options, &block)
    ClimateControl.modify(options, &block)
  end

  # ClimateControl gem handles ENVs nicely, but not Rails.application.secrets. Roll my own setup & teardown.
  def add_to_secrets(key, value)
    Rails.application.secrets.merge! key.to_sym => value
  end

  def remove_from_secrets(key)
    Rails.application.secrets.except!(key.to_sym)
  end
end
