class Regeneration < ActiveYaml::Base
  set_root_path "#{Rails.root}/db/yaml"
  fields :name, :id
end