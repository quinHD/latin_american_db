
u = User.create(password: "1234", email: "vavoom02@gmail.com")
a = Act.create(name: "Act 1", description: "LorenIpsum", start_date: Date.today, creator: User.first)
t = Target.create(name: "Targetazo")
at = ActTarget.create(act_id: a.id, targetable_id: t.id, targetable_type: "Target")
a.act_targets << at
u.acts << a
u.save

Category.create("Amenaza", description: "EEEPA")
Category.create("Asesinato", description: "EEEPA")


o = Organization.create(name: "Organizon", supranational: true)
p = OrganizationGroup.new(name: "Groupamen")
o.organization_groups << p
p = OrganizationGroup.new(name: "Groupamen2")
o.organization_groups << p
p = OrganizationGroup.new(name: "Groupamen3")
o.organization_groups << p
p.organization_subgroups << OrganizationSubgroup.new(name: "Subgroup")
p.organization_subgroups << OrganizationSubgroup.new(name: "Subgroup2")
p.organization_subgroups << OrganizationSubgroup.new(name: "Subgroup3")
p.organization_subgroups << OrganizationSubgroup.new(name: "Subgroup4")
p.organization_subgroups << OrganizationSubgroup.new(name: "Subgroup5")

puts "Seeds complete!"