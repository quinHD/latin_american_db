class ActCreator
  def load(file="db/csv/acts.csv")
    acts_loaded = SmarterCSV.process(file)

    acts_loaded.each do |act_loaded|
      id = act_loaded[:id]
      act = Act.new(
        name: act_loaded[:name],
        description: act_loaded[:description],
        start_date: act_loaded[:start_date] || Date.today,
        end_date: act_loaded[:end_date]
      )
      act.result = Result.new(
        deaths: act_loaded[:deaths],
        arrested: act_loaded[:arrested],
        missing: act_loaded[:missing],
        personal_attacks: act_loaded[:personal_attacks],
        property_attacks: act_loaded[:property_attacks],
        economic_cost: act_loaded[:economic_cost]
      )
      act.place = Place.new(
        country: act_loaded[:country],
        type_of_area: act_loaded[:type_of_area],
        city: act_loaded[:city],
        province: act_loaded[:province],
        name: act_loaded[:place_name]
      )

      act.sources << Source.new(description: act_loaded[:source])

      act.save

      create_organizations(act, act_loaded)

      create_act_types(act, id)
      create_targets(act, id)
      create_target_categories(act, id)
      create_target_subcategories(act, id)
    end
  end

  def create_organizations(act, act_loaded)
    organization = Organization.find_or_create_by(name: act_loaded[:organization])
    group = act_loaded[:group] && OrganizationGroup.find_or_create_by(name: act_loaded[:group])
    subgroup = act_loaded[:subgroup] && OrganizationSubgroup.find_or_create_by(name: act_loaded[:subgroup])
    organization.update(country: act_loaded[:country_organization], number_participants: act_loaded[:number_participants])
    ao_organization = organization.act_organization || ActOrganization.create(organizable: organization)
    if group
      organization.organization_groups << group
      ao_group = group.act_organization || ActOrganization.create(organizable: group)
    end

    if subgroup
      group = OrganizationGroup.create(name: "ERROR-ACCIÓN 125, TIENE SUBGRUPO PERO NO GRUPO") if group.nil?
      group.organization_subgroups << subgroup
      ao_subgroup = subgroup.act_organization || ActOrganization.create(organizable: subgroup)
    end

    act.act_organizations << (ao_subgroup || ao_group || ao_organization)
  end

  def create_act_types(act, id)
    act_types = get_act_types(id)
    act.act_types << ActType.find(act_types)
  end

  def create_targets(act, id)
    targets = get_targets(id)
    act.act_targets << ActTarget.targets.where(targetable_id: targets)
  end

  def create_target_categories(act, id)
    target_categories = get_target_categories(id)
    act.act_targets << ActTarget.target_categories.where(targetable_id: target_categories)
  end

  def create_target_subcategories(act, id)
    target_subcategories = get_target_subcategories(id)
    act.act_targets << ActTarget.target_subcategories.where(targetable_id: target_subcategories)
  end

  def get_act_types(id)
    act_types.select { |at| at[:act_id] == id }.map { |i| i[:act_type_id] }
  end

  def get_targets(id)
    targets.select { |t| t[:act_id] == id }.map { |i| i[:target_id] }
  end  

  def get_target_categories(id)
    target_categories.select { |tc| tc[:act_id] == id }.map { |i| i[:target_category_id] }
  end

  def get_target_subcategories(id)
    target_subcategories.select { |tc| tc[:act_id] == id }.map { |i| i[:target_subcategory_id] }
  end

  def target_categories
    [{ act_id: 34, target_category_id: 30 }, { act_id: 30, target_category_id: 22 }, 
    { act_id: 38, target_category_id: 22 }, { act_id: 18, target_category_id: 22 }, 
    { act_id: 10, target_category_id: 22 }, { act_id: 57, target_category_id: 10 }, 
    { act_id: 92, target_category_id: 28 }, { act_id: 94, target_category_id: 28 }, 
    { act_id: 100, target_category_id: 18 }, { act_id: 104, target_category_id: 30 }, 
    { act_id: 113, target_category_id: 30 }, { act_id: 115, target_category_id: 30 }, 
    { act_id: 116, target_category_id: 30 }, { act_id: 121, target_category_id: 10 }, 
    { act_id: 122, target_category_id: 23 }, { act_id: 114, target_category_id: 10 }, 
    { act_id: 136, target_category_id: 22 }, { act_id: 26, target_category_id: 31 }, 
    { act_id: 31, target_category_id: 10 }, { act_id: 150, target_category_id: 22 }, 
    { act_id: 154, target_category_id: 13 }, { act_id: 174, target_category_id: 30 }, 
    { act_id: 25, target_category_id: 22 }, { act_id: 54, target_category_id: 10 }, 
    { act_id: 62, target_category_id: 10 }, { act_id: 64, target_category_id: 10 }, 
    { act_id: 69, target_category_id: 10 }, { act_id: 66, target_category_id: 18 }, 
    { act_id: 79, target_category_id: 18 }, { act_id: 194, target_category_id: 22 }, 
    { act_id: 200, target_category_id: 10 }, { act_id: 207, target_category_id: 10 }, 
    { act_id: 209, target_category_id: 22 }, { act_id: 210, target_category_id: 28 }, 
    { act_id: 208, target_category_id: 10 }, { act_id: 214, target_category_id: 10 }, 
    { act_id: 215, target_category_id: 29 }, { act_id: 212, target_category_id: 13 }, 
    { act_id: 60, target_category_id: 18 }, { act_id: 63, target_category_id: 10 }]
  end

  def target_subcategories
    [{ act_id: 4, target_subcategory_id: 29 }, { act_id: 5, target_subcategory_id: 48 },
    { act_id: 6, target_subcategory_id: 29 }, { act_id: 7, target_subcategory_id: 53 },
    { act_id: 8, target_subcategory_id: 47 }, { act_id: 9, target_subcategory_id: 45 },
    { act_id: 10, target_subcategory_id: 21 }, { act_id: 13, target_subcategory_id: 1 },
    { act_id: 14, target_subcategory_id: 56 }, { act_id: 15, target_subcategory_id: 45 },
    { act_id: 16, target_subcategory_id: 54 }, { act_id: 17, target_subcategory_id: 2 },
    { act_id: 19, target_subcategory_id: 2 }, { act_id: 20, target_subcategory_id: 55 },
    { act_id: 21, target_subcategory_id: 2 }, { act_id: 22, target_subcategory_id: 50 },
    { act_id: 27, target_subcategory_id: 29 }, { act_id: 28, target_subcategory_id: 51 },
    { act_id: 29, target_subcategory_id: 45 }, { act_id: 32, target_subcategory_id: 45 },
    { act_id: 33, target_subcategory_id: 48 }, { act_id: 37, target_subcategory_id: 29 },
    { act_id: 39, target_subcategory_id: 53 }, { act_id: 40, target_subcategory_id: 53 },
    { act_id: 41, target_subcategory_id: 53 }, { act_id: 42, target_subcategory_id: 54 },
    { act_id: 43, target_subcategory_id: 54 }, { act_id: 44, target_subcategory_id: 48 },
    { act_id: 45, target_subcategory_id: 54 }, { act_id: 46, target_subcategory_id: 54 },
    { act_id: 47, target_subcategory_id: 54 }, { act_id: 48, target_subcategory_id: 54 },
    { act_id: 49, target_subcategory_id: 53 }, { act_id: 50, target_subcategory_id: 54 },
    { act_id: 55, target_subcategory_id: 28 }, { act_id: 58, target_subcategory_id: 2 },
    { act_id: 59, target_subcategory_id: 54 }, { act_id: 61, target_subcategory_id: 54 },
    { act_id: 67, target_subcategory_id: 54 }, { act_id: 68, target_subcategory_id: 28 },
    { act_id: 70, target_subcategory_id: 54 }, { act_id: 71, target_subcategory_id: 54 },
    { act_id: 72, target_subcategory_id: 15 }, { act_id: 73, target_subcategory_id: 28 },
    { act_id: 74, target_subcategory_id: 28 }, { act_id: 75, target_subcategory_id: 12 },
    { act_id: 75, target_subcategory_id: 28 }, { act_id: 76, target_subcategory_id: 54 },
    { act_id: 77, target_subcategory_id: 3 }, { act_id: 78, target_subcategory_id: 54 },
    { act_id: 80, target_subcategory_id: 41 }, { act_id: 80, target_subcategory_id: 54 },
    { act_id: 81, target_subcategory_id: 45 }, { act_id: 82, target_subcategory_id: 52 },
    { act_id: 83, target_subcategory_id: 45 }, { act_id: 84, target_subcategory_id: 56 },
    { act_id: 85, target_subcategory_id: 45 }, { act_id: 86, target_subcategory_id: 11 },
    { act_id: 87, target_subcategory_id: 45 }, { act_id: 88, target_subcategory_id: 2 },
    { act_id: 89, target_subcategory_id: 51 }, { act_id: 90, target_subcategory_id: 47 },
    { act_id: 91, target_subcategory_id: 1 }, { act_id: 93, target_subcategory_id: 41 },
    { act_id: 95, target_subcategory_id: 5 }, { act_id: 96, target_subcategory_id: 45 },
    { act_id: 97, target_subcategory_id: 47 }, { act_id: 99, target_subcategory_id: 29 },
    { act_id: 101, target_subcategory_id: 55 }, { act_id: 102, target_subcategory_id: 55 },
    { act_id: 103, target_subcategory_id: 52 }, { act_id: 105, target_subcategory_id: 45 },
    { act_id: 106, target_subcategory_id: 48 }, { act_id: 107, target_subcategory_id: 55 },
    { act_id: 108, target_subcategory_id: 29 }, { act_id: 109, target_subcategory_id: 1 },
    { act_id: 110, target_subcategory_id: 1 }, { act_id: 111, target_subcategory_id: 1 },
    { act_id: 112, target_subcategory_id: 1 }, { act_id: 118, target_subcategory_id: 42 },
    { act_id: 119, target_subcategory_id: 1 }, { act_id: 120, target_subcategory_id: 53 },
    { act_id: 123, target_subcategory_id: 1 }, { act_id: 124, target_subcategory_id: 10 },
    { act_id: 126, target_subcategory_id: 45 }, { act_id: 127, target_subcategory_id: 2 },
    { act_id: 128, target_subcategory_id: 52 }, { act_id: 130, target_subcategory_id: 1 },
    { act_id: 131, target_subcategory_id: 1 }, { act_id: 132, target_subcategory_id: 53 },
    { act_id: 133, target_subcategory_id: 1 }, { act_id: 134, target_subcategory_id: 52 },
    { act_id: 135, target_subcategory_id: 1 }, { act_id: 137, target_subcategory_id: 52 },
    { act_id: 138, target_subcategory_id: 49 }, { act_id: 139, target_subcategory_id: 45 },
    { act_id: 140, target_subcategory_id: 3 }, { act_id: 141, target_subcategory_id: 1 },
    { act_id: 142, target_subcategory_id: 1 }, { act_id: 143, target_subcategory_id: 43 },
    { act_id: 145, target_subcategory_id: 53 }, { act_id: 146, target_subcategory_id: 54 },
    { act_id: 146, target_subcategory_id: 52 }, { act_id: 149, target_subcategory_id: 1 },
    { act_id: 151, target_subcategory_id: 45 }, { act_id: 152, target_subcategory_id: 42 },
    { act_id: 153, target_subcategory_id: 41 }, { act_id: 155, target_subcategory_id: 1 },
    { act_id: 156, target_subcategory_id: 45 }, { act_id: 157, target_subcategory_id: 53 },
    { act_id: 158, target_subcategory_id: 53 }, { act_id: 159, target_subcategory_id: 18 },
    { act_id: 160, target_subcategory_id: 3 }, { act_id: 160, target_subcategory_id: 54 },
    { act_id: 161, target_subcategory_id: 1 }, { act_id: 162, target_subcategory_id: 53 },
    { act_id: 163, target_subcategory_id: 23 }, { act_id: 164, target_subcategory_id: 1 },
    { act_id: 165, target_subcategory_id: 21 }, { act_id: 165, target_subcategory_id: 54 },
    { act_id: 167, target_subcategory_id: 1 }, { act_id: 168, target_subcategory_id: 45 },
    { act_id: 169, target_subcategory_id: 45 }, { act_id: 170, target_subcategory_id: 42 },
    { act_id: 171, target_subcategory_id: 45 }, { act_id: 172, target_subcategory_id: 1 },
    { act_id: 172, target_subcategory_id: 54 }, { act_id: 172, target_subcategory_id: 1 },
    { act_id: 173, target_subcategory_id: 54 }, { act_id: 173, target_subcategory_id: 53 },
    { act_id: 174, target_subcategory_id: 1 }, { act_id: 175, target_subcategory_id: 53 },
    { act_id: 175, target_subcategory_id: 3 }, { act_id: 176, target_subcategory_id: 5 },
    { act_id: 177, target_subcategory_id: 52 }, { act_id: 178, target_subcategory_id: 45 },
    { act_id: 179, target_subcategory_id: 15 }, { act_id: 180, target_subcategory_id: 16 },
    { act_id: 181, target_subcategory_id: 16 }, { act_id: 182, target_subcategory_id: 49 },
    { act_id: 183, target_subcategory_id: 17 }, { act_id: 184, target_subcategory_id: 2 },
    { act_id: 185, target_subcategory_id: 17 }, { act_id: 186, target_subcategory_id: 28 },
    { act_id: 187, target_subcategory_id: 52 }, { act_id: 188, target_subcategory_id: 54 },
    { act_id: 189, target_subcategory_id: 54 }, { act_id: 190, target_subcategory_id: 54 },
    { act_id: 191, target_subcategory_id: 54 }, { act_id: 192, target_subcategory_id: 54 },
    { act_id: 193, target_subcategory_id: 53 }, { act_id: 195, target_subcategory_id: 42 },
    { act_id: 197, target_subcategory_id: 12 }, { act_id: 197, target_subcategory_id: 28 },
    { act_id: 198, target_subcategory_id: 54 }, { act_id: 199, target_subcategory_id: 28 },
    { act_id: 200, target_subcategory_id: 1 }, { act_id: 201, target_subcategory_id: 1 },
    { act_id: 202, target_subcategory_id: 45 }, { act_id: 203, target_subcategory_id: 1 },
    { act_id: 204, target_subcategory_id: 1 }, { act_id: 205, target_subcategory_id: 49 },
    { act_id: 206, target_subcategory_id: 1 }, { act_id: 211, target_subcategory_id: 54 },
    { act_id: 213, target_subcategory_id: 54 }, { act_id: 216, target_subcategory_id: 21 },
    { act_id: 217, target_subcategory_id: 21 }, { act_id: 218, target_subcategory_id: 4 }]
  end

  def targets
    [{act_id: 35, target_id: 3}, {act_id: 117, target_id: 3}, {act_id: 147, target_id: 3}, 
    {act_id: 166, target_id: 3}, {act_id: 51, target_id: 3}, {act_id: 52, target_id: 3}, 
    {act_id: 56, target_id: 3}, {act_id: 65, target_id: 3}]
  end

 def act_types
    [{act_id: 4, act_type_id: 5}, {act_id: 5, act_type_id: 5},
    {act_id: 6, act_type_id: 5}, {act_id: 7, act_type_id: 5},
    {act_id: 8, act_type_id: 2}, {act_id: 9, act_type_id: 2},
    {act_id: 10, act_type_id: 2}, {act_id: 13, act_type_id: 7},
    {act_id: 14, act_type_id: 5}, {act_id: 15, act_type_id: 2},
    {act_id: 16, act_type_id: 2}, {act_id: 17, act_type_id: 7},
    {act_id: 18, act_type_id: 5}, {act_id: 19, act_type_id: 7},
    {act_id: 20, act_type_id: 5}, {act_id: 21, act_type_id: 7},
    {act_id: 22, act_type_id: 2}, {act_id: 25, act_type_id: 2},
    {act_id: 26, act_type_id: 11}, {act_id: 27, act_type_id: 2},
    {act_id: 28, act_type_id: 2}, {act_id: 29, act_type_id: 2},
    {act_id: 29, act_type_id: 7}, {act_id: 30, act_type_id: 2},
    {act_id: 31, act_type_id: 2}, {act_id: 32, act_type_id: 2},
    {act_id: 33, act_type_id: 5}, {act_id: 34, act_type_id: 11},
    {act_id: 35, act_type_id: 11}, {act_id: 37, act_type_id: 5},
    {act_id: 38, act_type_id: 2}, {act_id: 39, act_type_id: 2},
    {act_id: 40, act_type_id: 5}, {act_id: 41, act_type_id: 5},
    {act_id: 42, act_type_id: 5}, {act_id: 43, act_type_id: 5},
    {act_id: 44, act_type_id: 5}, {act_id: 45, act_type_id: 5},
    {act_id: 46, act_type_id: 5}, {act_id: 47, act_type_id: 5},
    {act_id: 48, act_type_id: 5}, {act_id: 49, act_type_id: 5},
    {act_id: 50, act_type_id: 5}, {act_id: 51, act_type_id: 11},
    {act_id: 52, act_type_id: 11}, {act_id: 54, act_type_id: 9},
    {act_id: 55, act_type_id: 2}, {act_id: 56, act_type_id: 11},
    {act_id: 57, act_type_id: 9}, {act_id: 58, act_type_id: 7},
    {act_id: 59, act_type_id: 5}, {act_id: 60, act_type_id: 2},
    {act_id: 61, act_type_id: 5}, {act_id: 62, act_type_id: 9},
    {act_id: 63, act_type_id: 9}, {act_id: 64, act_type_id: 9},
    {act_id: 65, act_type_id: 11}, {act_id: 66, act_type_id: 2},
    {act_id: 67, act_type_id: 5}, {act_id: 68, act_type_id: 5},
    {act_id: 69, act_type_id: 1}, {act_id: 70, act_type_id: 5},
    {act_id: 71, act_type_id: 5}, {act_id: 72, act_type_id: 9},
    {act_id: 73, act_type_id: 2}, {act_id: 74, act_type_id: 2},
    {act_id: 75, act_type_id: 2}, {act_id: 75, act_type_id: 3},
    {act_id: 76, act_type_id: 5}, {act_id: 77, act_type_id: 7},
    {act_id: 77, act_type_id: 3}, {act_id: 78, act_type_id: 5},
    {act_id: 79, act_type_id: 2}, {act_id: 80, act_type_id: 5},
    {act_id: 80, act_type_id: 4}, {act_id: 81, act_type_id: 2},
    {act_id: 82, act_type_id: 2}, {act_id: 83, act_type_id: 2},
    {act_id: 84, act_type_id: 5}, {act_id: 84, act_type_id: 2},
    {act_id: 85, act_type_id: 2}, {act_id: 86, act_type_id: 9},
    {act_id: 87, act_type_id: 2}, {act_id: 88, act_type_id: 7},
    {act_id: 89, act_type_id: 2}, {act_id: 90, act_type_id: 2},
    {act_id: 91, act_type_id: 7}, {act_id: 92, act_type_id: 11},
    {act_id: 93, act_type_id: 2}, {act_id: 94, act_type_id: 11},
    {act_id: 95, act_type_id: 1}, {act_id: 96, act_type_id: 2},
    {act_id: 97, act_type_id: 2}, {act_id: 99, act_type_id: 5},
    {act_id: 100, act_type_id: 5}, {act_id: 101, act_type_id: 5},
    {act_id: 102, act_type_id: 11}, {act_id: 103, act_type_id: 2},
    {act_id: 104, act_type_id: 11}, {act_id: 105, act_type_id: 2},
    {act_id: 106, act_type_id: 5}, {act_id: 107, act_type_id: 2},
    {act_id: 108, act_type_id: 5}, {act_id: 109, act_type_id: 2},
    {act_id: 110, act_type_id: 2}, {act_id: 111, act_type_id: 2},
    {act_id: 112, act_type_id: 7}, {act_id: 113, act_type_id: 11},
    {act_id: 114, act_type_id: 9}, {act_id: 115, act_type_id: 11},
    {act_id: 116, act_type_id: 11}, {act_id: 117, act_type_id: 11},
    {act_id: 118, act_type_id: 12}, {act_id: 119, act_type_id: 7},
    {act_id: 120, act_type_id: 2}, {act_id: 121, act_type_id: 2},
    {act_id: 122, act_type_id: 2}, {act_id: 123, act_type_id: 1},
    {act_id: 124, act_type_id: 2}, {act_id: 126, act_type_id: 2},
    {act_id: 127, act_type_id: 7}, {act_id: 128, act_type_id: 2},
    {act_id: 130, act_type_id: 7}, {act_id: 131, act_type_id: 3},
    {act_id: 132, act_type_id: 4}, {act_id: 133, act_type_id: 2},
    {act_id: 134, act_type_id: 2}, {act_id: 135, act_type_id: 3},
    {act_id: 136, act_type_id: 2}, {act_id: 137, act_type_id: 2},
    {act_id: 138, act_type_id: 2}, {act_id: 139, act_type_id: 2},
    {act_id: 140, act_type_id: 4}, {act_id: 141, act_type_id: 12},
    {act_id: 142, act_type_id: 7}, {act_id: 143, act_type_id: 2},
    {act_id: 145, act_type_id: 5}, {act_id: 146, act_type_id: 2},
    {act_id: 147, act_type_id: 11}, {act_id: 149, act_type_id: 7},
    {act_id: 150, act_type_id: 2}, {act_id: 151, act_type_id: 2},
    {act_id: 152, act_type_id: 12}, {act_id: 153, act_type_id: 2},
    {act_id: 154, act_type_id: 2}, {act_id: 155, act_type_id: 7},
    {act_id: 156, act_type_id: 2}, {act_id: 157, act_type_id: 2},
    {act_id: 158, act_type_id: 2}, {act_id: 159, act_type_id: 1},
    {act_id: 160, act_type_id: 3}, {act_id: 160, act_type_id: 2},
    {act_id: 161, act_type_id: 7}, {act_id: 162, act_type_id: 5},
    {act_id: 163, act_type_id: 2}, {act_id: 164, act_type_id: 7},
    {act_id: 165, act_type_id: 4}, {act_id: 165, act_type_id: 2},
    {act_id: 166, act_type_id: 11}, {act_id: 167, act_type_id: 4},
    {act_id: 168, act_type_id: 2}, {act_id: 169, act_type_id: 2},
    {act_id: 170, act_type_id: 12}, {act_id: 171, act_type_id: 2},
    {act_id: 172, act_type_id: 3}, {act_id: 172, act_type_id: 2},
    {act_id: 172, act_type_id: 2}, {act_id: 173, act_type_id: 2},
    {act_id: 173, act_type_id: 2}, {act_id: 174, act_type_id: 11},
    {act_id: 175, act_type_id: 2}, {act_id: 175, act_type_id: 7},
    {act_id: 176, act_type_id: 11}, {act_id: 177, act_type_id: 2},
    {act_id: 178, act_type_id: 2}, {act_id: 179, act_type_id: 9},
    {act_id: 180, act_type_id: 9}, {act_id: 181, act_type_id: 9},
    {act_id: 182, act_type_id: 2}, {act_id: 183, act_type_id: 9},
    {act_id: 184, act_type_id: 7}, {act_id: 185, act_type_id: 3},
    {act_id: 186, act_type_id: 2}, {act_id: 187, act_type_id: 5},
    {act_id: 188, act_type_id: 5}, {act_id: 189, act_type_id: 5},
    {act_id: 190, act_type_id: 5}, {act_id: 191, act_type_id: 4},
    {act_id: 192, act_type_id: 5}, {act_id: 193, act_type_id: 4},
    {act_id: 194, act_type_id: 2}, {act_id: 195, act_type_id: 12},
    {act_id: 197, act_type_id: 4}, {act_id: 197, act_type_id: 2},
    {act_id: 198, act_type_id: 5}, {act_id: 199, act_type_id: 2},
    {act_id: 200, act_type_id: 9}, {act_id: 200, act_type_id: 4},
    {act_id: 201, act_type_id: 7}, {act_id: 202, act_type_id: 2},
    {act_id: 203, act_type_id: 7}, {act_id: 204, act_type_id: 7},
    {act_id: 205, act_type_id: 2}, {act_id: 206, act_type_id: 7},
    {act_id: 207, act_type_id: 9}, {act_id: 207, act_type_id: 4},
    {act_id: 208, act_type_id: 9}, {act_id: 209, act_type_id: 2},
    {act_id: 210, act_type_id: 11}, {act_id: 211, act_type_id: 5},
    {act_id: 212, act_type_id: 5}, {act_id: 213, act_type_id: 5},
    {act_id: 214, act_type_id: 4}, {act_id: 215, act_type_id: 11},
    {act_id: 216, act_type_id: 5}, {act_id: 217, act_type_id: 5},
    {act_id: 218, act_type_id: 7}]
  end
end

