module LetUsHide
  class Configuration
    include Confiture::Configuration
    confiture_allowed_keys(:api_key)
    confiture_defaults(api_key: nil)
  end
end