class Mission < ActiveYaml::Base
  set_root_path "#{Rails.root}/db/yaml"
  fields :name, :id, :required_attributes, :gold

  def awarded_gold
    rand(gold["from"].to_i..gold["to"].to_i)
  end
end