class ProjectUtils {
  // Project Images (banners/thumbnails)
  static const List<String> banners = [
    "assets/projects/activesos-1.webp",
    "assets/projects/caribo-1.png",
    "assets/projects/scribble-1.webp",
    "assets/projects/warrior-for-children-1.png",
    "assets/projects/pley-1.webp",
    "assets/projects/grid-iron-1.webp",
  ];

  // Project Icons
  static const List<String> icons = [
    "assets/projects/activesos-1.webp",
    "assets/projects/caribo-1.png",
    "assets/projects/scribble-1.webp",
    "assets/projects/warrior-for-children-1.png",
    "assets/projects/pley-1.webp",
    "assets/projects/grid-iron-1.webp",
  ];

  // Project Titles
  static const List<String> titles = [
    "Active SOS",
    "Caribo",
    "Scribble",
    "Warrior for Children",
    "Pley App",
    "Grid Iron Stats",
  ];

  // Project Descriptions (Short)
  static const List<String> description = [
    "A versatile and reliable emergency alert platform built to strengthen safety and real-time communication across schools, corporations, rehab centers, and families.",
    "An innovative car and boat rental platform transforming how users access and manage rental services with seamless booking and secure payments.",
    "A premier social platform dedicated to empowering diverse voices in the literary world, connecting authors, readers, and publishing resources.",
    "A charitable application providing donation collection, merchandise, and free courses for NGOs to support children's welfare and education.",
    "The ultimate mobile platform for hospitality professionals to connect, learn, and grow with expert insights and business tools.",
    "A powerful platform for football coaches to record game statistics and manage teams, with detailed dashboards for players and admins.",
  ];

  // Project Detail Images
  static const List<List<String>> detailImages = [
    [
      "assets/projects/activesos-1.webp",
      "assets/projects/activesos-2.png",
      "assets/projects/activesos-3.png",
      "assets/projects/activesos-4.png",
    ],
    [
      "assets/projects/caribo-1.png",
      "assets/projects/caribo-2.png",
      "assets/projects/caribo-3.png",
      "assets/projects/caribo-4.png",
    ],
    [
      "assets/projects/scribble-1.webp",
      "assets/projects/scribble-2.webp",
      "assets/projects/scribble-3.webp",
      "assets/projects/scribble-4.webp",
    ],
    [
      "assets/projects/warrior-for-children-1.png",
      "assets/projects/warrior-for-children-2.webp",
    ],
    [
      "assets/projects/pley-1.webp",
      "assets/projects/pley-2.webp",
      "assets/projects/pley-3.webp",
      "assets/projects/pley-4.webp",
    ],
    [
      "assets/projects/grid-iron-1.webp",
      "assets/projects/grid-iron-2.webp",
      "assets/projects/grid-iron-3.webp",
      "assets/projects/grid-iron-4.webp",
    ],
  ];

  // Full Project Details
  static List<Map<String, dynamic>> getProjectDetails() {
    return [
      {
        'title': 'Active SOS',
        'description': 'A versatile and reliable emergency alert platform built to strengthen safety and real-time communication across schools, corporations, rehab centers, and families. It allows users to send customizable alerts, track locations instantly, and communicate securely during emergencies.',
        'overview': 'Active SOS is a versatile and reliable emergency alert platform built to strengthen safety and real-time communication across schools, corporations, rehab centers, and families. It allows users to send customizable alerts, track locations instantly, and communicate securely during emergencies.\n\nApptage came into action to bring this life-saving idea to reality, designing and developing a cross-platform solution that changes how people respond to crises. Our goal was to create a fast, intuitive, and trustworthy safety system that ensures every alert counts when seconds matter most.',
        'background': 'In moments of crisis, efficient communication can make the difference between chaos and control. Many institutions struggle with fragmented emergency systems, slow alerts, unreliable updates, and limited visibility. Parents worry about their children\'s safety, schools need instant coordination, and corporations require real-time updates to protect staff.\n\nActive SOS emerged to solve these challenges by creating a unified platform that combines instant alerts, GPS tracking, and secure communication into one cohesive experience. It\'s designed for both large organizations and individual families, providing safety, reliability, and peace of mind.',
        'keyFeatures': [
          'Customizable emergency alerts for different scenarios',
          'Real-time GPS tracking with pinpoint accuracy',
          'Secure encrypted communication channels',
          'Multi-channel alerts (SMS, push notifications, in-app)',
          'User-friendly interface for all age groups',
          'Offline accessibility and performance optimization',
        ],
        'challenges': [
          'Speed and Reliability: Ensuring alerts trigger instantly, even under low connectivity',
          'User Diversity: Building an interface simple for children yet robust for institutions',
          'Real-Time Tracking: Maintaining GPS accuracy without compromising battery',
          'Multi-Channel Alerts: Integrating SMS, push notifications, and in-app alerts',
          'Emotional UX Design: Creating a calm interface during high-stress scenarios',
        ],
        'solutions': [
          'Customizable Alert System: Personalized emergency alerts adaptable to multiple scenarios',
          'Real-Time GPS Tracking: Advanced geolocation systems for live user tracking',
          'Secure Communication Channels: Encrypted chat and notification systems',
          'User-Friendly Experience: Clean, intuitive interface with single-tap emergency buttons',
          'Performance Optimization: Alert response times under two seconds',
        ],
        'impact': 'Faster Emergency Response: Alerts now trigger and deliver in under 2 seconds.\n\nIncreased Safety Adoption: Institutions reported improved coordination and greater user trust.\n\nImproved Parental Peace of Mind: Parents can track children and receive instant status updates.\n\nReliable Cross-Platform Performance: Seamless functionality across devices and networks.',
        'website': 'www.activesos.app',
        'client': 'Active SOS Founder',
        'companyName': 'Active SOS',
      },
      {
        'title': 'Caribo',
        'description': 'An innovative car and boat rental platform transforming how users access and manage rental services. Designed for both owners and renters, the app connects individuals and vendors through a seamless, user-friendly experience.',
        'overview': 'Caribo is an innovative car and boat rental platform transforming how users access and manage rental services. Designed for both owners and renters, the app connects individuals and vendors through a seamless, user-friendly experience that ensures convenience, trust, and efficiency. By offering a wide selection of vehicles, secure payment options, and real-time communication tools, Caribo delivers a modern approach to mobility and adventure.',
        'background': 'Traditional car and boat rental processes are often burdened with inefficiencies — manual bookings, lack of trust between users, and unclear communication between owners, vendors, and customers. These gaps create frustration and limit opportunities for renters and providers alike.\n\nCaribo emerged to address these challenges by offering a comprehensive, all-in-one solution. The app empowers users to browse, book, and pay for rentals with confidence, while vendors can list and manage their vehicles with ease.',
        'keyFeatures': [
          'Unified rental ecosystem for cars and boats',
          'Real-time inventory management',
          'Secure payment gateway integration',
          'In-app chat and notification systems',
          'Review and rating systems',
          'Adaptive UI/UX design for mobile-first experience',
        ],
        'challenges': [
          'Diverse User Roles: Designing unified interface for owners, renters, and vendors',
          'Real-Time Availability: Synchronizing vehicle listings to prevent overlaps',
          'Trust & Verification: Building transparent review and verification system',
          'Payment Security: Integrating secure gateways for safe transactions',
          'Adaptive Layouts: Supporting both car and boat rentals with dynamic content',
        ],
        'solutions': [
          'Unified Rental Ecosystem: Built hybrid platform connecting all user types',
          'Seamless Booking & Payment Flow: Integrated secure payment gateway',
          'Enhanced Communication & Transparency: In-app chat and review systems',
          'Adaptive UI/UX Design: Clean, mobile-first interface for effortless browsing',
          'Performance Optimization: Enhanced responsiveness across iOS and Android',
        ],
        'impact': 'Streamlined rental process with reduced checkout time and increased successful transactions.\n\nImproved user confidence through transparent review and verification systems.\n\nEnhanced coordination between renters and vendors through in-app communication.\n\nScalable architecture ready for expansion across multiple regions.',
        'website': 'www.caribo.app',
        'client': 'Caribo Founder',
        'companyName': 'Caribo',
      },
      {
        'title': 'Scribble',
        'description': 'A premier social platform dedicated to empowering diverse voices in the literary world. Scribble curates an inclusive ecosystem where authors, avid readers, and publishing resources can connect, create, and thrive together.',
        'overview': 'Welcome to Scribble, the premier social platform dedicated to empowering diverse voices in the literary world. Founded with a mission to revolutionize the publishing industry, Scribble curates an inclusive ecosystem where authors, avid readers, and publishing resources can connect, create, and thrive together. Our goal is to break down barriers in traditional publishing and offer a space where every story matters.',
        'background': 'Founder and CEO Torrey C Butler developed this concept after realizing how difficult it was to navigate the publishing process in 2021. This came shortly after publishing his first book in 2020, experiencing the confusion and loneliness many creatives have faced. His goal with Scribble is to always leave something better than you found it.',
        'keyFeatures': [
          'Social platform for authors and readers',
          'Publishing resources and tools',
          'Global audience connection',
          'Story sharing and discovery',
          'Community building features',
          'Book marketplace for writers to sell their books',
        ],
        'challenges': [
          'Breaking down barriers in traditional publishing',
          'Creating inclusive ecosystem for diverse voices',
          'Connecting authors with readers globally',
          'Providing accessible publishing resources',
          'Building trust in a marketplace environment',
        ],
        'solutions': [
          'Curated platform connecting authors, readers, and publishing resources',
          'Inclusive ecosystem where every story matters',
          'Global network for sharing and discovering content',
          'Comprehensive publishing tools and support',
          'Secure marketplace with review and rating systems',
        ],
        'impact': 'Revolutionized the publishing industry by breaking down traditional barriers.\n\nCreated inclusive space where diverse voices can be heard.\n\nConnected authors with global audience and publishing resources.\n\nEmpowered creatives to share their stories and connect with like-minded individuals.\n\nEnabled writers to monetize their work through the marketplace.',
        'website': null,
        'client': null,
        'companyName': 'Scribble',
      },
      {
        'title': 'Warrior for Children',
        'description': 'A complete charity application solution for NGOs providing donation collection, merchandise sales, and free educational courses. Built to support children\'s welfare and education through a comprehensive digital platform.',
        'overview': 'Warrior for Children is a complete charity application solution designed for NGOs to support children\'s welfare and education. The platform provides comprehensive features including donation collection, merchandise sales, and free educational courses similar to platforms like Udemy. This Flutter-based application offers a complete solution for charitable organizations to engage with donors, manage resources, and provide educational opportunities.',
        'background': 'Charitable organizations and NGOs face challenges in efficiently collecting donations, managing merchandise, and providing educational resources to children in need. Traditional methods often lack transparency, accessibility, and user engagement. Warrior for Children was developed to address these challenges by providing a modern, user-friendly platform that streamlines all aspects of charitable operations.',
        'keyFeatures': [
          'Donation Collection: Secure and transparent donation system',
          'Merchandise Management: Complete e-commerce solution for charity merchandise',
          'Free Educational Courses: Platform for providing free courses like Udemy',
          'NGO Management Tools: Comprehensive tools for managing charitable operations',
          'User Engagement: Features to connect donors with causes',
          'Transparency: Clear tracking and reporting of donations and resources',
        ],
        'challenges': [
          'Building trust through transparency in donation handling',
          'Creating engaging platform for educational content delivery',
          'Managing multiple features (donations, merchandise, courses) in one app',
          'Ensuring secure payment processing for donations and purchases',
          'Providing intuitive interface for users of all technical levels',
        ],
        'solutions': [
          'Comprehensive Platform: Integrated solution combining donations, merchandise, and education',
          'Secure Payment Gateway: Reliable payment processing for donations and purchases',
          'Course Management System: User-friendly interface for course delivery and management',
          'Transparent Reporting: Clear visibility into donation usage and impact',
          'Modern UI/UX: Clean, intuitive design for easy navigation and engagement',
        ],
        'impact': 'Streamlined donation collection process for NGOs.\n\nIncreased transparency and trust among donors.\n\nProvided accessible educational resources for children.\n\nEnhanced engagement through merchandise sales.\n\nImproved operational efficiency for charitable organizations.',
        'website': null,
        'client': null,
        'companyName': 'Warrior for Children',
      },
      {
        'title': 'Pley App',
        'description': 'The ultimate mobile platform for hospitality professionals to connect, learn, and grow. Whether you\'re running a restaurant, managing a hotel, or owning a café, Pley brings the industry together.',
        'overview': 'Pley is the ultimate mobile platform for hospitality professionals to connect, learn, and grow. Whether you\'re running a restaurant, managing a hotel, or owning a café, Pley brings the industry together, allowing you to share insights, success stories, and best practices. Discover expert tips on customer service, cost management, and revenue growth.',
        'background': 'The hospitality industry needed a unified platform for professionals to connect, share knowledge, and grow their businesses. Pley was created to fill this gap, providing a space where industry experts can exchange ideas and take their businesses to new heights.',
        'keyFeatures': [
          'Expert Insights: Tips for better service and revenue',
          'Professional Network: Connect with industry peers',
          'Review System: Rate, review, and respond to feedback',
          'Business Tools: Manage listings and track engagement',
          'Cross-Device Access: Easy use on any device',
        ],
        'challenges': [
          'Creating unified platform for diverse hospitality businesses',
          'Building trust and credibility in professional network',
          'Managing listings and engagement effectively',
          'Ensuring cross-device compatibility',
        ],
        'solutions': [
          'Comprehensive platform connecting all hospitality professionals',
          'Robust review and rating system for credibility',
          'Advanced business tools for listing and engagement management',
          'Responsive design ensuring seamless cross-device access',
        ],
        'impact': 'Connected hospitality professionals in a growing network.\n\nImproved business relationships through review and feedback systems.\n\nEnhanced business insights through engagement tracking tools.\n\nFostered knowledge sharing and best practices across the industry.',
        'website': null,
        'client': null,
        'companyName': 'Pley',
      },
      {
        'title': 'Grid Iron Stats',
        'description': 'A powerful platform designed for coaches to effortlessly record game statistics and manage their teams. Players and parents can track individual performance and promote their skills.',
        'overview': 'Enhance your football coaching and playing experience with Grid Iron Stats. Our powerful platform is designed for coaches to effortlessly record game statistics and manage their teams. Players and parents can track individual performance and promote their skills. With a streamlined interface for coaches and a detailed dashboard for super admins, Grid Iron Stats ensures a unique and efficient digital experience for all football enthusiasts.',
        'background': 'Football teams and coaches needed a comprehensive solution for tracking game statistics, managing teams, and showcasing player performance. Grid Iron Stats was developed to provide this all-in-one platform for the football community.',
        'keyFeatures': [
          'Comprehensive Game Stats: Capture detailed statistics for every game',
          'Team Management: Manage team lineup, schedule, and performance',
          'Player Profiles: Track and showcase individual player statistics',
          'User-Friendly Interface: Intuitive design for easy navigation',
          'Super Admin Panel: Full control and analytics for all functions',
        ],
        'challenges': [
          'Capturing comprehensive game statistics accurately',
          'Managing multiple teams and players efficiently',
          'Creating intuitive interface for coaches and players',
          'Providing detailed analytics for admins',
        ],
        'solutions': [
          'Comprehensive stat tracking system for detailed game analysis',
          'Centralized team management with lineup and schedule features',
          'Individual player profiles showcasing performance metrics',
          'Streamlined interface optimized for coaches and players',
          'Advanced admin dashboard with full control and analytics',
        ],
        'impact': 'Streamlined game statistics recording for coaches.\n\nEnhanced player performance tracking and promotion.\n\nImproved team management through centralized platform.\n\nProvided valuable insights through detailed analytics dashboard.',
        'website': null,
        'client': null,
        'companyName': 'Grid Iron Stats',
      },
    ];
  }
}
