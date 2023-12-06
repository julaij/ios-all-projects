//
//  Universities.swift
//  Dangol_UniversityAApp
//
//  Created by Julai Dangol on 11/11/23.
//

import Foundation



struct UniversityList
{
    var collegeName: String
    var collegeImage: String
    var collegeInfo: String
    
}

struct Universities
{
    var domain: String
    var list_Array: [UniversityList]
}

let domains = ["Computer Science", "Data Science", "Information Technology", "Engineering", "Business"]


let universities: [Universities] = [
    Universities(
        domain: "Computer Science",
        list_Array: [
            UniversityList(collegeName: "Harvard University", collegeImage: "harvard_image", collegeInfo: "Harvard is a prestigious university. It has a rich history and tradition of academic excellence. The computer science department at Harvard is known for producing top-notch researchers and professionals. Students benefit from a vibrant campus life and a strong alumni network."),
            UniversityList(collegeName: "MIT", collegeImage: "mit_image", collegeInfo: "MIT is known for its cutting-edge research. With a focus on innovation, MIT's computer science programs prepare students for real-world challenges. The faculty comprises leading experts in various fields, providing students with valuable insights. The campus environment fosters collaboration and creativity."),
            UniversityList(collegeName: "Stanford University", collegeImage: "stanford_image", collegeInfo: "Stanford is a leading institution in computer science. Renowned for its Silicon Valley location, Stanford offers students unique opportunities for industry engagement. The computer science curriculum emphasizes both theory and practical application. Stanford's commitment to diversity and inclusion enriches the learning experience."),
            UniversityList(collegeName: "Carnegie Mellon University", collegeImage: "cmu_image", collegeInfo: "CMU is renowned for its computer science programs. With a strong emphasis on research, CMU equips students with cutting-edge knowledge. The university's collaborative atmosphere encourages interdisciplinary projects. CMU's reputation for producing successful graduates makes it a top choice for aspiring computer scientists."),
            UniversityList(collegeName: "University of Cambridge", collegeImage: "cambridge_image", collegeInfo: "Cambridge offers world-class computer science education. Rooted in centuries of academic tradition, the university provides a rigorous curriculum. Students benefit from the guidance of distinguished faculty members. The vibrant academic community and access to cutting-edge resources contribute to Cambridge's status as a global leader."),
        ]
    ),
    Universities(
        domain: "Data Science",
        list_Array: [
            UniversityList(collegeName: "UC Berkeley", collegeImage: "berkeley_image", collegeInfo: "UC Berkeley is known for its data science programs. The university's commitment to research excellence is reflected in its state-of-the-art facilities. Students at UC Berkeley gain hands-on experience through collaborative projects and internships. The diverse and inclusive community fosters a dynamic learning environment."),
            UniversityList(collegeName: "Massachusetts Institute of Technology", collegeImage: "mit_image", collegeInfo: "MIT excels in data science research. The institute's multidisciplinary approach prepares students to tackle complex data challenges. MIT fosters a culture of curiosity and innovation, empowering students to make a meaningful impact. The strong network of industry connections provides valuable opportunities for career advancement."),
            UniversityList(collegeName: "Columbia University", collegeImage: "columbia_image", collegeInfo: "Columbia offers comprehensive data science courses. The curriculum at Columbia emphasizes both theoretical foundations and practical applications. Students benefit from the university's location in the heart of New York City, providing access to diverse industries. Columbia's commitment to cutting-edge research enhances the learning experience."),
            UniversityList(collegeName: "University of Washington", collegeImage: "washington_image", collegeInfo: "UW has a strong focus on data science education. The university's collaborative research centers offer students unique opportunities for exploration. With a commitment to inclusivity, UW provides a supportive community for aspiring data scientists. The beautiful campus and vibrant city of Seattle add to the overall student experience."),
            UniversityList(collegeName: "ETH Zurich", collegeImage: "eth_image", collegeInfo: "ETH Zurich is a leading institution in data science. Known for its world-class faculty, ETH Zurich provides a rigorous education in data science. The university's global perspective and collaborative research initiatives contribute to an enriching academic experience. Students at ETH Zurich are well-prepared for leadership roles in the rapidly evolving field of data science."),
        ]
    ),
    Universities(
        domain: "Information Technology",
        list_Array: [
            UniversityList(collegeName: "California Institute of Technology", collegeImage: "caltech_image", collegeInfo: "Caltech is known for its IT programs. The institute's commitment to cutting-edge technology and research sets it apart. Students at Caltech benefit from a challenging curriculum and hands-on projects. The supportive academic community and close collaboration with industry leaders enhance the overall learning experience."),
            UniversityList(collegeName: "Georgia Institute of Technology", collegeImage: "gatech_image", collegeInfo: "Georgia Tech offers cutting-edge IT education. With a focus on innovation, Georgia Tech prepares students for the dynamic IT industry. The institute's strong industry partnerships provide valuable insights and networking opportunities. The campus environment encourages creativity and collaboration."),
            UniversityList(collegeName: "University of Illinois Urbana-Champaign", collegeImage: "illinois_image", collegeInfo: "UIUC is a top choice for IT studies. The university's IT programs combine theoretical foundations with practical applications. UIUC's commitment to research and innovation is evident in its cutting-edge facilities. The diverse and inclusive community fosters a supportive learning environment for aspiring IT professionals."),
            UniversityList(collegeName: "Purdue University", collegeImage: "purdue_image", collegeInfo: "Purdue excels in IT research and education. Known for its rigorous curriculum, Purdue prepares students for success in the IT industry. The university's strong emphasis on experiential learning and internships provides practical skills. Purdue's extensive alumni network further supports students in their career journeys."),
            UniversityList(collegeName: "University of Texas at Austin", collegeImage: "uta_image", collegeInfo: "UT Austin is known for its IT curriculum. With a focus on innovation and technology, UT Austin prepares students for diverse IT roles. The university's collaborative research centers provide opportunities for hands-on learning. The vibrant campus life and dynamic city of Austin enhance the overall student experience."),
        ]
    ),
    Universities(
            domain: "Engineering",
            list_Array: [
                UniversityList(collegeName: "MIT", collegeImage: "mit_image", collegeInfo: "MIT is a pioneer in engineering education. Known for its cutting-edge research, MIT prepares students for leadership roles in engineering. The institute's strong emphasis on hands-on projects and collaboration enhances the learning experience. MIT's global perspective and diverse community contribute to an enriching academic journey."),
                UniversityList(collegeName: "Stanford University", collegeImage: "stanford_image", collegeInfo: "Stanford offers a comprehensive range of engineering programs. Renowned for its innovative approach, Stanford equips students with the skills needed for success in engineering. The university's commitment to sustainability and social impact adds depth to the engineering curriculum. Stanford's beautiful campus and collaborative culture enhance the overall student experience."),
                UniversityList(collegeName: "University of Michigan", collegeImage: "michigan_image", collegeInfo: "U of M is known for its excellence in engineering. With a focus on research and innovation, U of M prepares students for diverse engineering challenges. The university's state-of-the-art facilities and collaborative research centers provide a dynamic learning environment. U of M's supportive community and strong alumni network contribute to the success of its engineering graduates."),
                UniversityList(collegeName: "ETH Zurich", collegeImage: "eth_image", collegeInfo: "ETH Zurich is a leader in engineering research. The university's commitment to interdisciplinary collaboration sets it apart. ETH Zurich's strong ties to industry and emphasis on practical skills prepare students for real-world engineering challenges. The vibrant campus and picturesque surroundings create a stimulating learning environment."),
                UniversityList(collegeName: "Tsinghua University", collegeImage: "tsinghua_image", collegeInfo: "Tsinghua is a top engineering institution in China. Known for its rigorous curriculum, Tsinghua prepares students for leadership roles in engineering. The university's strong emphasis on research and innovation fosters a culture of excellence. Tsinghua's global perspective and diverse student body contribute to a well-rounded engineering education."),
            ]
        ),
        Universities(
            domain: "Business",
            list_Array: [
                UniversityList(collegeName: "Harvard Business School", collegeImage: "hbis_image", collegeInfo: "HBS is renowned for its business education. With a focus on leadership and innovation, Harvard Business School prepares students for success in the business world. The case study method and interactive learning approach create a dynamic educational experience. HBS's global network and strong alumni connections offer unparalleled opportunities for career advancement."),
                UniversityList(collegeName: "Wharton School, University of Pennsylvania", collegeImage: "wharton_image", collegeInfo: "Wharton is a top choice for business studies. Known for its rigorous curriculum and emphasis on practical skills, Wharton prepares students for leadership roles in business. The diverse and collaborative community fosters a dynamic learning environment. Wharton's strong ties to industry and extensive alumni network enhance the overall student experience."),
                UniversityList(collegeName: "INSEAD", collegeImage: "insead_image", collegeInfo: "INSEAD is a leading international business school. With campuses in Europe, Asia, and the Middle East, INSEAD offers a truly global business education. The diverse student body and faculty contribute to a rich cross-cultural learning experience. INSEAD's focus on entrepreneurship and innovation prepares students for success in a rapidly changing business landscape."),
                UniversityList(collegeName: "London Business School", collegeImage: "lbis_image", collegeInfo: "LBS is known for its global business programs. With a focus on international business and a diverse student body, London Business School provides a unique learning experience. The institute's strong connections to industry and vibrant city location create opportunities for networking and internships. LBS's commitment to diversity and inclusion enriches the overall student experience."),
                UniversityList(collegeName: "MIT Sloan School of Management", collegeImage: "mitsloan_image", collegeInfo: "MIT Sloan is a prestigious business school. Known for its emphasis on innovation and technology in management, MIT Sloan prepares students for leadership roles in diverse industries. The institute's strong ties to the tech sector and collaborative learning environment foster a culture of creativity and problem-solving. MIT Sloan's global network and alumni community offer valuable resources for career development."),
            ]
        ),
]
