
u = User.create(password: "1234", email: "vavoom02@gmail.com")
a = Act.create(name: "Act 1", description: "LorenIpsum", start_date: Date.today, creator: User.first)

Organization.create(name: "Organamen", supranational: false, act_organization_attributes: {})
o = Organization.create(name: "Organizon", supranational: true, act_organization_attributes: {})
p = OrganizationGroup.new(name: "Groupamen", act_organization_attributes: {})
o.organization_groups << p
p = OrganizationGroup.new(name: "Groupamen2", act_organization_attributes: {})
o.organization_groups << p
p = OrganizationGroup.new(name: "Groupamen3", act_organization_attributes: {})
o.organization_groups << p
p.organization_subgroups << OrganizationSubgroup.new(name: "Subgroup", act_organization_attributes: {})
p.organization_subgroups << OrganizationSubgroup.new(name: "Subgroup2", act_organization_attributes: {})
p.organization_subgroups << OrganizationSubgroup.new(name: "Subgroup3", act_organization_attributes: {})
p.organization_subgroups << OrganizationSubgroup.new(name: "Subgroup4", act_organization_attributes: {})
p.organization_subgroups << OrganizationSubgroup.new(name: "Subgroup5", act_organization_attributes: {})

  
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

puts "Seeds complete!"

