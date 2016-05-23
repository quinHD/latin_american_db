
u = User.create(password: "1234", email: "vavoom02@gmail.com")

def create_act_types
  YAML.load_file(Rails.root.join("db", "seed_data", "act_types.yml")).each do |act_type|
    ActType.create(name: act_type["name"])
  end
end

def create_targets
  YAML.load_file(Rails.root.join("db", "seed_data", "targets.yml")).each do |target_yml|
    target = Target.create(name: target_yml["name"], act_target_attributes: {})
    target_yml["target_categories"].each do |target_category_yml|
      target_category = TargetCategory.new(name: target_category_yml["name"], target: target, act_target_attributes: {})
      target_category.target_subcategories.new(target_category_yml["target_subcategories"].map { |hash| hash.merge(act_target_attributes: {}) }) if target_category_yml["target_subcategories"]
      target_category.save
    end
  end
end

create_act_types
create_targets
ActCreator.new.load

puts "Seeds complete!"

