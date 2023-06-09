# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

departments = [
    'Accounting',
    'Administration',
    'Adoption',
    'Behavioral Health',
    'Background Screening',
    'CAP/GAP',
    'CAPTA',
    'Case Management',
    'Contracts/Grant',
    'Data Entry',
    'Development',
    'ERAT',
    'Family Finders',
    'HIPPY/Achievers',
    'Human Resources',
    'Independent Living',
    'Information Technology',
    'Licensing',
    'Operations',
    'Placement',
    'Quality Assurance',
    'Records Room',
    'Rev Max',
    'Schoolhouse Link',
    'Shelter/GroupHome',
    'Training',
    'Youth Prevention Service'
  ]

  agencies = [1,2,3,4] # 4 agencies
  
  # create departments for each agency
  departments.each do |name|
    agencies.each do |agency_id|
    puts "Creating department: #{name}" # print to terminal
    Department.create(department_name: name, agency_id: agency_id)
    end
  end
  
  p "Created #{Department.count} departments"