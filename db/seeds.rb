puts "🌱 Seeding projects..."

# Seed your database here

#Project data
project1 = Project.create(name: "Create React App", description: "FlatIron Phase 2 final project")
project2 = Project.create(name: "Create Ruby App", description: "FlatIron Phase 3 final project")


#programmers data
programmer1 = Programmer.create(name: "Gilfoyle")
programmer2 = Programmer.create(name: "Dinesh")

#Task Data
Task.create(title: "Pied piper", description: "Hooli chat", project_id: project1.id, programmer_id: programmer1.id)
Task.create(title: "The box", description: "Compression", project_id: project2.id, programmer_id: programmer2.id)


puts "✅ Done seeding!"

