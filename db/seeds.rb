
u = User.create(password: "1234", email: "vavoom02@gmail.com")
a = Act.create(name: "Act 1", description: "LorenIpsum", start_date: Date.today, author: User.first)
t = Target.create(name: "Targetazo")
at = ActTarget.create(act_id: a.id, targetable_id: t.id, targetable_type: "Target")
a.act_targets << at
u.acts << a

u.save