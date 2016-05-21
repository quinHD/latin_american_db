
u = User.create(password: "1234", email: "vavoom02@gmail.com")
a = Act.create(name: "Act 1", description: "LorenIpsum", start_date: Date.today, creator: User.first)
t = Target.create(name: "Targetazo")
at = ActTarget.create(act_id: a.id, targetable_id: t.id, targetable_type: "Target")
a.act_targets << at
u.acts << a
u.save

ActType.create(name: "Amenaza", description: "EEEPA")
ActType.create(name: "Asesinato", description: "EEEPA")

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


Target.create(name: "Targetamen", act_target_attributes: {})
o = Target.create(name: "Targetizon", act_target_attributes: {})
p = TargetCategory.new(name: "Categoramen", act_target_attributes: {})
o.target_categories << p
p = TargetCategory.new(name: "Categoramen2", act_target_attributes: {})
o.target_categories << p
p = TargetCategory.new(name: "Categoramen3", act_target_attributes: {})
o.target_categories << p
p.target_subcategories << TargetSubcategory.new(name: "Subgrupamen", act_target_attributes: {})
p.target_subcategories << TargetSubcategory.new(name: "Subgrupamen2", act_target_attributes: {})
p.target_subcategories << TargetSubcategory.new(name: "Subgrupamen3", act_target_attributes: {})
p.target_subcategories << TargetSubcategory.new(name: "Subgrupamen4", act_target_attributes: {})
p.target_subcategories << TargetSubcategory.new(name: "Subgrupamen5", act_target_attributes: {})


puts "Seeds complete!"

