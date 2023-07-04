require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# departments = [
#     'Accounting',
#     'Administration',
#     'Adoption',
#     'Behavioral Health',
#     'Background Screening',
#     'CAP/GAP',
#     'CAPTA',
#     'Case Management',
#     'Contracts/Grant',
#     'Data Entry',
#     'Development',
#     'ERAT',
#     'Family Finders',
#     'HIPPY/Achievers',
#     'Human Resources',
#     'Independent Living',
#     'Information Technology',
#     'Licensing',
#     'Operations',
#     'Placement',
#     'Quality Assurance',
#     'Records Room',
#     'Rev Max',
#     'Schoolhouse Link',
#     'Shelter/GroupHome',
#     'Training',
#     'Youth Prevention Service'
#   ]

#   agencies = [1,2,3,4] # 4 agencies
  
#   # create departments for each agency
#   departments.each do |name|
#     agencies.each do |agency_id|
#     puts "Creating department: #{name}" # print to terminal
#     Department.create(department_name: name, agency_id: agency_id)
#     end
#   end
  
  # p "Created #{Department.count} departments"

#   office_names = [
#     'Desoto',
#     'Group Home',
#     'Lakewood Ranch',
#     'Manatee',
#     'Northgate',
#     'Schoolhouse Link',
#     'Shelter'
#   ]
  
#  office_names.each do |office_name|
#    Office.create(
#       office_name: office_name,
#       address: Faker::Address.full_address,
#       office_phone: Faker::PhoneNumber.cell_phone
#    )
#   end


# needs = ['Email', 'ASK', 'Edit Request', 'Mindshare', 'Key FoB', 'FSFN', 'Cell phone', 'Laptop']

# needs.each do |need_name| 
#     Need.create(
#         need_name: need_name
#     )
# end

titles = [
  "Permanency Manager",
  "CAPTA Program Administrator",
  "Adoption Specialist",
  "Placement Specialist",
  "Case Manager Support Specialist",
  "Family Finders Specialist",
  "CM Support Specialist",
  "Contract & UM Manager",
  "Family Support Worker",
  "Dental Services Administrative Assistant",
  "HIPPY & Achievers Manager",
  "Youth Education Advocate",
  "Fiscal Program Administrator",
  "Quality Management Specialist",
  "Child Welfare Case Manager",
  "YPS Counselor",
  "Operations Manager",
  "Case Manager Supervisor",
  "Chief Financial Officer",
  "Data Analyst",
  "Learning & Professional Development Assistant Director",
  "Accounts Payable Clerk",
  "Behavioral Health Services Specialist",
  "Youth Counselor",
  "Out of Home Assistant Director",
  "IT Specialist",
  "Independent Living Specialist",
  "Front Desk Specialist",
  "Relicensing Specialist",
  "Recruitment Specialist",
  "Schoolhouse Link Program Coordinator",
  "Vice President of Out of Home Care",
  "Adoption Supervisor",
  "PRN Adoption Support",
  "Director of Operations - Manatee",
  "Revenue Maximization Specialist II",
  "Case Management Support Specialist",
  "Nurse Care Coordinator",
  "President/CEO",
  "Rev Max Specialist 1",
  "ECC Case Manager",
  "CAPTA Nurse Care Coordinator",
  "Vice President of Prevention",
  "Learning and Professional Development Specialist",
  "Fiscal Services Specialist II",
  "Reunification Parent Support",
  "Group Home Program Coordinator",
  "CAPTA Counselor",
  "ERAT Supervisor",
  "HIPPY Home Visitor",
  "Family Advocate",
  "ERAT Counselor",
  "Program Coordinator",
  "Data Entry Specialist",
  "Initial Licensing Supervisor",
  "Caregiver Assistance Program Spec",
  "Adoption Facilitator",
  "Quality Assurance Records Custodian",
  "Independent Living Manager",
  "Assistant Director of Adoptions",
  "Case Manager",
  "Sr. Director of Contract Administration",
  "Executive Assistant/Office Manager",
  "CAPTA Parent Educator",
  "CAP Support Specialist",
  "Non Judicial Operations Manager",
  "YPS Admin Assistant",
  "Family Support Specialist",
  "Independent Living Housing Specialist",
  "Caregiver Support Specialist",
  "Director of Operations - Sarasota/Desoto",
  "Director of Out of Home Care",
  "Resource Coordinator",
  "Licensing Support Specialist",
  "Street Outreach Worker",
  "Achievers Coordinator & HIPPY Data Clerk",
  "Placement Supervisor",
  "Independent Living Coordinator",
  "UM Coordinator PT",
  "Initial Licensing Specialist",
  "Foster Family Support Worker",
  "Relicensing Licensing Support",
  "Level 1 Licensing Specialist",
  "Administrative Manager",
  "Assistant Program Director",
  "Program Specialist",
  "Case Management Administrative Assistant",
  "Family Finders Specialist",
  "Director of Schoolhouse Link",
  "ECC Community Coordinator",
  "Records Specialist",
  "Family Finders Program Manager",
  "Case Manager PT",
  "Office Administrator",
  "Senior Director of Programs",
  "YPS Program Coordinator",
  "Quality Assurance Specialist",
  "Lead Quality Assurance Specialist",
  "UM Supervisor",
  "Fiscal Accountant",
  "Records Supervisor",
  "Network Administator",
  "Case Management Support Specialist",
  "Independent Living Life Skills Specialist",
  "Admin/Accounting Assistant",
  "Chief Operating Officer",
  "Adoption Subsidy Specialist",
  "Independent Living Transitional Specialist",
  "Program Director",
  "Vice President of Dependency Child Welfare",
  "Chief Legal Officer",
  "Permanency Specialist",
  "Licensing Trainer",
  "Vice President of Communications & Community Engagement",
  "Relicensing Supervisor",
  "Adoption Case Manager Support Specialist",
  "Director of Early Childhood Court",
  "Background Screening Analyst",
  "Director of Residential Programs",
  "Reunification Team Supervisor",
  "Missing Child & Human Trafficking",
  "Training Unit Supervisor",
  "Senior Accountant",
  "Recruitment Specialist",
  "Residential Counselor",
  "Administrative Assistant",
  "Foster Family Support Worker",
  "Enhanced Placement Specialist",
  "CAPTA Program Manager",
  "Community Resource Specialist",
  "Caregiver Assistance Program Supervisor",
  "ECC Family Support Worker",
  "Training Unit Supervisor",
  "Senior Child Welfare Case Manager",
  "HIPPY & Achievers Admin Assistant",
  "ERAT Operations Coordinator",
  "ERAT Intervention Supervisor",
  "On Call Placement Specialist",
  "Human Resources Generalist",
  "ERAT Intervention Specialist",
  "Director of Data Analytics & Performance",
  "Administrative Assistant (PT)",
  "Live Scan Analyst",
  "BSU Supervisor",
  "Sr Director of Information Systems",
  "SPOA/Post Adoption Specialist",
  "Facilities Assistant",
  "Reunification Team Parent Support",
  "CBC Program Assistant Special Projects",
  "VP of CBC Operations",
  "ERAT Support Specialist",
  "ERAT Program Supervisor Manatee",
  "Parent Educator",
  "Payroll Administrator",
  "Sr. Data Entry Specialist",
  "Communications Specialist",
  "REACH Program Coordinator",
  "Director of Adoptions",
  "Recruiting and Onboarding Specialist",
  "Rev Max Specialist",
  "Learning and Professional Development Director",
  "Child Heath Care Coordinator",
  "Behavioral Health Care Coordinator",
  "Rev Max Supervisor",
  "GAP & CAP Specialist",
  "Family Support Specialist Supervisor",
  "WATCH Program Director",
  "Campaign Assistant",
  "Learning and Professional Development Coordinator",
  "Psychotropic Medication Specialist/CWCM",
  "Foster Parent Community Specialist",
  "Grant & Compliance Specialist",
  "Fatherhood Specialist",
  "ERAT Prevention Counselor",
  "Child Well Being Specialist",
  "Facilities Manager",
  "QA Administrative Assistant",
  "QM Specialist",
  "Residential Manager"
]

titles.each do |name|
  Title.create(title_name: name)
end



  p "Created #{Title.count} titles"

  puts " seeding data..."

