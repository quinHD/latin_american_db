
u = User.create(password: "1234", email: "vavoom02@gmail.com")
a = Act.create(name: "Act 1", description: "LorenIpsum", start_date: Date.today, creator: User.first)
t = Target.create(name: "Targetazo")
at = ActTarget.create(act_id: a.id, targetable_id: t.id, targetable_type: "Target")
a.act_targets << at
u.acts << a
u.save


o = Organization.create(name: "Organizon", supranational: true)
p = OrganizationGroup.new(name: "Group")
o.organization_groups << p
p.organization_subgroups << OrganizationSubgroup.new(name: "Subgroup")

Authorship.create(authorshipable: o)
Authorship.create(authorshipable: p)
Authorship.create(authorshipable: OrganizationSubgroup.last)


puts "Seeds complete!"