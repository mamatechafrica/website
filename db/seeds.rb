# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Sample Projects for Avo Community
projects_data = [
  {
    title: "WomenTech Academy",
    description: "An e-learning platform designed to bridge the tech skills gap for women in Africa through comprehensive coding bootcamps and mentorship programs.",
    detailed_description: "WomenTech Academy is a comprehensive e-learning platform specifically designed to empower African women with technology skills. The platform offers structured coding bootcamps, mentorship programs, and career guidance.\n\nKey Features:\n- Interactive coding exercises and projects\n- One-on-one mentorship matching system\n- Community forums and networking opportunities\n- Career placement assistance\n- Mobile-responsive design for accessibility\n\nThe platform has successfully trained over 500 women across 15 African countries, with an 85% job placement rate within 6 months of graduation.",
    status: "completed",
    category: "Education Technology",
    technologies: ["Ruby on Rails", "React", "PostgreSQL", "AWS", "Bootstrap", "Stripe API"],
    featured: true,
    start_date: Date.new(2023, 3, 1),
    completion_date: Date.new(2024, 1, 15),
    client_name: "African Women in Tech Foundation",
    impact_statement: "Transformed the lives of 500+ women by providing them with technical skills and career opportunities in the technology sector. 85% of graduates secured employment within 6 months, contributing to gender equality in tech across Africa.",
    repo_url: "https://github.com/mamatechafrica/womentech-academy",
    live_url: "https://womentech-academy.com",
    demo_url: "https://www.youtube.com/watch?v=demo1",
    image_url: "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
    screenshots: [
      "https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80",
      "https://images.unsplash.com/photo-1573164713988-8665fc963095?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80",
      "https://images.unsplash.com/photo-1531297484001-80022131f5a1?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80"
    ]
  },
  {
    title: "SafeSpace Mobile App",
    description: "A safety-focused mobile application that connects women with emergency services and trusted contacts in real-time during threatening situations.",
    detailed_description: "SafeSpace is a comprehensive safety mobile application designed specifically for women's security needs. The app provides instant access to emergency services, location sharing with trusted contacts, and community safety features.\n\nCore Features:\n- Panic button with GPS location sharing\n- Real-time emergency contact notifications\n- Safe route planning and navigation\n- Community reporting and safety alerts\n- Offline functionality for areas with poor connectivity\n- Integration with local emergency services\n\nThe app has been deployed in 8 major African cities and has helped prevent over 200 emergency situations through its early warning system.",
    status: "active",
    category: "Safety & Security",
    technologies: ["React Native", "Node.js", "MongoDB", "Firebase", "Google Maps API", "Socket.io"],
    featured: true,
    start_date: Date.new(2024, 2, 1),
    client_name: "Women's Safety Coalition",
    impact_statement: "Enhanced personal safety for over 10,000 women across 8 African cities. The app has been instrumental in preventing 200+ dangerous situations and providing peace of mind to users and their families.",
    repo_url: "https://github.com/mamatechafrica/safespace-app",
    live_url: "https://safespace-app.com",
    demo_url: "https://www.youtube.com/watch?v=demo2",
    image_url: "https://images.unsplash.com/photo-1563013544-824ae1b704d3?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
    screenshots: [
      "https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80",
      "https://images.unsplash.com/photo-1559526324-4b87b5e36e44?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80",
      "https://images.unsplash.com/photo-1586829135343-132950070391?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80"
    ]
  },
  {
    title: "HealthConnect Telemedicine Platform",
    description: "A telemedicine platform connecting rural communities with healthcare professionals, focusing on maternal and reproductive health services.",
    detailed_description: "HealthConnect is a comprehensive telemedicine platform designed to bridge the healthcare gap in rural African communities, with a special focus on maternal and reproductive health.\n\nPlatform Features:\n- Video consultations with certified healthcare providers\n- Appointment scheduling and management system\n- Digital health records and prescription management\n- Health education resources and materials\n- Multi-language support for local accessibility\n- Mobile-first design for smartphone users\n- Integration with local health facilities\n\nThe platform has facilitated over 5,000 consultations and has been particularly successful in providing prenatal care to expectant mothers in remote areas.",
    status: "completed",
    category: "Healthcare Technology",
    technologies: ["Vue.js", "Laravel", "MySQL", "WebRTC", "Docker", "Twilio API"],
    featured: false,
    start_date: Date.new(2023, 6, 1),
    completion_date: Date.new(2024, 3, 30),
    client_name: "Rural Health Initiative",
    impact_statement: "Provided healthcare access to over 5,000 patients in remote areas, with particular success in maternal health services. Reduced maternal mortality rates by 30% in served communities through improved prenatal care access.",
    repo_url: "https://github.com/mamatechafrica/healthconnect",
    live_url: "https://healthconnect-africa.org",
    image_url: "https://images.unsplash.com/photo-1576091160399-112ba8d25d1f?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
    screenshots: [
      "https://images.unsplash.com/photo-1559757148-5c350d0d3c56?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80",
      "https://images.unsplash.com/photo-1576091160550-2173dba999ef?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80"
    ]
  },
  {
    title: "EcoTrack Environmental Monitor",
    description: "An IoT-based environmental monitoring system that tracks air quality, water pollution, and waste management in urban areas.",
    detailed_description: "EcoTrack is an innovative IoT-based environmental monitoring system designed to help African cities track and improve their environmental conditions.\n\nSystem Components:\n- IoT sensors for air quality monitoring\n- Water quality testing integration\n- Waste management tracking\n- Real-time data dashboard\n- Public API for researchers and NGOs\n- Mobile app for citizen reporting\n- Predictive analytics for environmental trends\n\nThe system is currently deployed in 3 major cities and has helped local governments make data-driven environmental policy decisions.",
    status: "active",
    category: "Environmental Technology",
    technologies: ["Python", "Django", "IoT Sensors", "InfluxDB", "Grafana", "React", "AWS IoT"],
    featured: false,
    start_date: Date.new(2024, 1, 15),
    client_name: "Green Cities Africa",
    impact_statement: "Provides real-time environmental data to 3 major African cities, helping local governments make informed policy decisions. The system has contributed to a 15% improvement in air quality monitoring and waste management efficiency.",
    repo_url: "https://github.com/mamatechafrica/ecotrack",
    demo_url: "https://www.youtube.com/watch?v=demo3",
    image_url: "https://images.unsplash.com/photo-1558618666-fbd6c90cd4d9?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
    screenshots: [
      "https://images.unsplash.com/photo-1541888946425-d81bb19240f5?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80",
      "https://images.unsplash.com/photo-1559827260-dc66d52bef19?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80"
    ]
  },
  {
    title: "FinanceFirst Microfinance Platform",
    description: "A digital microfinance platform enabling small business loans and financial literacy programs for women entrepreneurs.",
    detailed_description: "FinanceFirst is a comprehensive microfinance platform designed to empower women entrepreneurs across Africa with access to capital and financial education.\n\nPlatform Features:\n- Digital loan application and approval system\n- Credit scoring based on alternative data\n- Financial literacy courses and resources\n- Peer-to-peer lending network\n- Mobile money integration\n- Business mentorship matching\n- Repayment tracking and management\n\nThe platform has disbursed over $2M in microloans to 1,500+ women entrepreneurs with a 95% repayment rate.",
    status: "completed",
    category: "Financial Technology",
    technologies: ["Angular", "Spring Boot", "PostgreSQL", "Blockchain", "Mobile Money APIs"],
    featured: true,
    start_date: Date.new(2023, 1, 1),
    completion_date: Date.new(2023, 12, 15),
    client_name: "Women Entrepreneurs Network",
    impact_statement: "Empowered 1,500+ women entrepreneurs with access to capital totaling $2M in microloans. Achieved 95% repayment rate and helped create over 3,000 jobs in local communities through supported businesses.",
    repo_url: "https://github.com/mamatechafrica/financefirst",
    live_url: "https://financefirst-africa.com",
    image_url: "https://images.unsplash.com/photo-1563013544-824ae1b704d3?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
    screenshots: [
      "https://images.unsplash.com/photo-1460925895917-afdab827c52f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80",
      "https://images.unsplash.com/photo-1554224155-6726b3ff858f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80"
    ]
  }
]

# Create projects
projects_data.each do |project_attrs|
  project = Project.find_or_create_by(title: project_attrs[:title]) do |p|
    p.assign_attributes(project_attrs)
  end
  
  unless project.persisted?
    project.update!(project_attrs)
  end
end

puts "Created #{Project.count} projects"
