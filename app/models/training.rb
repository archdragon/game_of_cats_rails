class Training < ActiveYaml::Base
  set_root_path "#{Rails.root}/db/yaml"
  fields :name, :id, :attribute_id
end