# SEED DATA
puts "✅ Deleting seed data..."

User.destroy_all
CongressionalMember.destroy_all
UserKeyIssue.destroy_all
KeyIssue.destroy_all
UserPostedIssue.destroy_all
PostedIssue.destroy_all

# users
puts '✅ Seeding user data...'

u1 = User.create(first_name: 'Eric', last_name: 'Xiao', email: 'es.xiao93@gmail.com', district: 16, username: 'es.xiao93', password_digest: 'password', isCongressional: false)
u2 = User.create(first_name: 'Alexandria', last_name: 'Ocasio-Cortez', email: 'ocasiocortez14@gmail.com', district: 14, username: 'AOC14', password_digest: 'password', isCongressional: true)



# congressional_members
puts '✅ Seeding congressional members data...'

c1 = CongressionalMember.create(
    name: 'Lee Zeldin',
    bio: 'Congressman Lee Zeldin grew up in Suffolk County, New York, where he graduated from William Floyd High School in Mastic Beach. Congressman Zeldin graduated from the S tate University of New York at Albany (SUNY) and then Albany Law School, becoming New York`s youngest attorney at the time at the age of 23.

    After completing the Army ROTC program, Congressman Zeldin served four years on Active Duty. During that time, he served in different capacities, including as a Military Intelligence Officer, Prosecutor and Military Magistrate. While assigned to the Army`s elite 82nd Airborne Division, in the summer of 2006, Congressman Zeldin was deployed to Tikrit, Iraq, with an infantry battalion of fellow paratroopers in support of Operation Iraqi Freedom. Following his service on active duty, in 2007, Congressman Zeldin transitioned from Active Duty to the Army Reserve, where he currently serves as a Lieutenant Colonel.

    In 2008, Congressman Zeldin opened a successful law practice in Smithtown, New York, which he operated full time until he was elected to the New York State Senate in 2010, representing New York`s 3rd Senate District. As a State Senator, Congressman Zeldin led the successful effort to repeal the MTA Payroll Tax for 80 percent of employers, a job killing tax that was hurting New York`s small businesses. He also created the PFC Joseph Dwyer Program, a peer to peer counseling program for veterans suffering from Post Traumatic Stress Disorder (PTSD) and Traumatic Brain Injury (TBI); the program started in Suffolk County and quickly expanded across the state. Congressman Zeldin also successfully fought to repeal the Saltwater Fishing License Fee; a victory for tens of thousands of fishermen on Long Island.

    In 2014, following four years in the State Senate, Congressman Zeldin was elected to the U.S. House of Representatives, representing New York`s First Congressional District.

    Throughout his tenure in Congress, Representative Zeldin has continued to secure important victories for his district. He has championed the successful effort to save Plum Island, steered a $2 billion Electron Ion Collider (EIC) to Brookhaven National Lab (BNL), and ushered into law his Adult Day Health Care Act to aid veterans who are 70% of more disabled and his bill to safeguard veterans` homeownership opportunities. Congressman Zeldin also secured a new veterans health care clinic on the East End of Long Island, saved a vital communications spectrum for local first responders, helped lead the effort to permanently reauthorize the Zadroga Act and Victim Compensation Fund for 9/11 first responders and their families, and advanced several vital Army Corps projects for his district, including the over $1 billion Fire Island to Montauk Point (FIMP) project. 

    His office has also successfully resolved over 15,000 cases in favor of NY-1 constituents.

    Congressman Zeldin serves on two Committees in the House of Representatives: Financial Services and Foreign Affairs, where he serves as Ranking Member of the Subcommittee on Oversight and Investigations. Additionally, Congressman Zeldin serves as co-chair of the Long Island Sound Caucus and founding member of the National Estuary Program Caucus and as one of two Jewish Republicans in Congress, also serves as co-chairman of the House Republican Israel Caucus, which has over 100 members, and has been a stalwart opponent of the Boycott, Divestment and Sanctions (BDS) movement, coleading a House passed resolution (H.Res.246) to combat it.

    Congressman Zeldin resides in his hometown of Shirley with his wife, Diana, and their twin daughters, Mikayla and Arianna.',
    political_party: 'Republican',
    years_in_office: 'since 2015',
    image_url: 'https://en.wikipedia.org/wiki/File:Lee_Zeldin_new_official_portrait.jpg',
    user: u1
)

c2 = CongressionalMember.create(
    name: 'Andrew Garbarino',
    bio: 'A lifelong Long Islander, Andrew has dedicated his life to family and community.

    The proud son of a lawyer and small business owner, Andrew went to Sayville High School where he participated in student government and worked at the local hardware store. As a man of faith, Andrew received his communion and confirmation at St. Lawrence Catholic Church, where he still attends Mass every Sunday. After high school graduation, Andrew went on to receive his BA in history and classical humanities from The George Washington University. Andrew then returned to Long Island where he received his Juris Doctorate from Hofstra University.
    
    Upon his graduation from law school, Andrew joined his father at their family law firm in downtown Sayville.
    
    Andrew`s love and appreciation for his family oriented community in Long Island inspired him to run for a seat in the New York Assembly, where he served the 7th district for four terms. During his tenure in the Assembly, Andrew fought to increase state funding for Long Island school districts, protect our island`s environment including the Great South Bay, oppose tax hikes, and support our local heroes in law enforcement.
    
    A proud member of the Sayville Rotary Club and Knights of Columbus, Andrew has been a leader in his Long Island community following the Rotary Club`s motto, `Service Above Self.`
    
    Andrew now represents New York`s Second Congressional Districts and fights every day for the hardworking people of Long Island.',
    political_party: 'Republican',
    years_in_office: 'since 2021',
    image_url: 'https://garbarino.house.gov/sites/evo-subsites/garbarino.house.gov/files/evo-media-image/Official-Photo-Rep-Andrew-Garbarino.jpg',
    user: u1
)

c3 = CongressionalMember.create(
    name: 'Thomas Suozzi',
    bio: 'Congressman Tom Suozzi is a common-sense Democrat who has the experience to get the job done as Governor of New York.

    He is currently a member of the powerful House Ways and Means Committee, the chief tax-writing committee of the House of Representatives.
    
    Tom was elected Glen Cove Mayor in 1993. At just 31, he was the youngest mayor in the City`s history. He restored Glen Cove`s ailing fiscal health, securing numerous record-breaking credit ratings. He revitalized the City`s downtown business district, spurred massive commercial development, and built a new courthouse, city hall, and police headquarters.
    
    He spearheaded a $100 million clean-up of some of America`s most toxic superfund sites. That waterfront area is now a showcase of residential, commercial, and recreational development. Glen Cove was designated as a national Brownfields Showcase Community and recognized twice by Vice-President Al Gore for its environmental cleanup efforts.',
    political_party: 'Democrat',
    years_in_office: 'since 2017',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Thomas_Suozzi_official_photo.jpg/1200px-Thomas_Suozzi_official_photo.jpg',
    user: u1
)

c4 = CongressionalMember.create(
    name: 'Kathleen Rice',
    bio: 'Congresswoman Kathleen Rice represents New York`s Fourth Congressional District, which encompasses the majority of Nassau County, NY, a diverse suburban community located on Long Island.  
    
    First elected to Congress in 2014, Kathleen has become a leading voice on national security issues as a member of the Homeland Security Committee, where she passed legislation to improve airport security screening in her first year and conducted rigorous oversight of the Trump Administration`s border policies during her tenure as Chair of the Subcommittee on Border Security, Facilitation, and Operations. As a member of the Veterans` Affairs Committee, Kathleen established herself as a fierce advocate for veterans and for accountability at the Department of Veterans Affairs, and she authored bipartisan legislation to expand employment opportunities for veterans, which was signed into law in January 2021. For the 117th Congress, Kathleen was named to the Committee on Energy and Commerce, which has the broadest jurisdiction of any authorizing committee in Congress, and she remains a member of the Homeland Security Committee.  
    
    Prior to Congress, Kathleen ran for District Attorney of Nassau County in 2005 and shocked the Long Island political establishment by defeating a 31-year incumbent, becoming the first woman elected District Attorney in Long Island history. Kathleen served as District Attorney from 2006 to 2014, and received national acclaim for her efforts to combat drunk driving, which led to a statewide overhaul of DWI laws and Long Island`s first DWI-related murder convictions. Rice also focused on combating public corruption, launching investigations that led to significant government reforms and the convictions of dozens of officials from both parties who violated the public`s trust. 
     
    Rice began her career in public service as an Assistant District Attorney in Brooklyn, NY, where she prosecuted cases of domestic violence and gang activity before joining the office`s elite Homicide Bureau. In 1999, Kathleen was appointed an Assistant U.S. Attorney, where she went on to an award-winning career as a federal prosecutor in the U.S. Department of Justice`s Philadelphia office. 
     
    Kathleen resides in Garden City, NY, where she was raised with her nine brothers and sisters, and she is the proud owner of a Maltese-Yorkie rescue named Pearl. Kathleen is a graduate of the Catholic University of America (1987) and earned her law degree from Touro Law Center (1991).',
    political_party: 'Democrat',
    years_in_office: 'since 2015',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Kathleen_Rice_official_photo.jpg',
    user: u1
)

c5 = CongressionalMember.create(
    name: 'Gregory Meeks',
    bio: 'Serving the people of New York`s Fifth Congressional District has been Congressman Gregory Meeks` greatest professional honor. In his eleventh term in Congress, he remains focused on making government work for his constituents and the American people. Congressman Meeks is a solutions oriented lawmaker who is respected in Congress, New York State, and worldwide for his bipartisan efforts as an effective common sense leader who gets things done. He is a member of the New Democrat Coalition, the largest caucus in the House, consisting of pro-economic growth Democratic members and  co-chairs the NDCC Trade Task Force, the European Union Caucus, the Malaria and Neglected Tropical Diseases Caucus, the Global Investment in America Caucus, the Congressional Services Caucus, and several country caucuses, including Bangladesh, Brazil, Colombia, Kazakhstan, and Peru.

    Congressman Meeks views boosting the economy, creating new jobs for the residents of the 5th Congressional District, and greater business access for small, minority, and women owned enterprises as core to his mission.  One of his recent achievements has been the Crossing at Jamaica Station which spurred economic opportunity and created new affordable residential units. Congressman Meeks secured over $20 million in federal tax incentives for investments and assisted the establishment of new commercial air service which linked areas in upstate New York to JFK Airport.
    
    In addition to his work for New York`s 5th Congressional District, Congressman Meeks was recently elected by local leaders to Chair the Queens County Democratic Party.
    
    As a strong defender of the Democratic party and its values, he vigorously supports access to affordable health care, pushes for affordable housing, fights for gun control, and believes that there should be comprehensive global action to address climate change.
    As a member of the House Foreign Affairs Committee and Vice Chairman of the NATO Parliamentary Assembly Economics and Security Committee, Congressman Meeks seeks to promote policies that strengthen America`s brand abroad while also enhancing our national security.  Widely known for his support of our diplomatic corps, he believes that diplomacy and American diplomats are crucial to our nation`s global standing and the strength of multilateral engagement.  
    
    As a Member of the House Financial Services Committee, Congressman Meeks has promoted policies for economic empowerment and to enhance New York City`s status as the financial capital of the world. Whether it is access to capital, homeownership, wealth accumulation or economic development, the Congressman has been a steady and consistent champion on this important committee that has jurisdiction over all banking, securities and insurance issues.
    
    His work in the financial services sector has been recognized by some of New York`s largest employers in the financial services industry, including for his work as a Dodd-Frank conferee.
    
    Congressman Meeks earned his bachelor`s degree at Adelphi University and received his law degree from Howard University. He is a member of the Allen AME Church in St. Albans, New York and is married to Simone-Marie Meeks. He has three daughters, Ebony, Aja, and Nia.',
    political_party: 'Democrat',
    years_in_office: 'since 1998',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Gregory_Meeks%2C_official_portrait%2C_115th_congress.jpg',
    user: u1
)

c6 = CongressionalMember.create(
    name: 'Grace Meng',
    bio: 'Grace Meng represents New York`s 6th Congressional District located in Queens, New York.  She was born and raised in Queens as the daughter of immigrants and has never forgotten where she came from or who she fights for.

    As a child growing up in the most diverse county in America, Grace quickly came to believe that every person deserves a seat at the table.  Whether young or old, rich or poor, she believes every voice deserves to be heard.  That conviction prompted Grace to begin her professional career as a public interest lawyer before serving two terms in the New York State Assembly.
    
    Now, in her third term in Congress, Grace continues to advocate for inclusive policies that benefit the vulnerable and the often overlooked.  From her seat on the House Appropriations Committee, and as the mother of two young boys, she regularly fights for federal programs that benefit women and children.  She even co-founded the Bipartisan Congressional Kids` Safety Caucus which she still co-chairs.
    
    While Grace remains one of the 15 youngest Democrats in Congress, she has been ranked the 8th most-effective legislator in the Democratic Party according to the Center for Effective Lawmaking. She serves as Chair of ASPIRE PAC through which she supports Asian American candidates across the country, and works to ensure that Asian American voices and concerns are heard in the political process.  
    
    Grace is the national leader on issues pertaining to menstrual hygiene product safety and availability.  She successfully fought for the provision of menstrual hygiene products to homeless women, fights for their availability to incarcerated women, denounced the discriminatory tampon tax in New York, and has introduced federal legislation that would require menstrual hygiene product labels to include a list of ingredients.
    
    In February of 2017, Grace was elected Vice Chair of the Democratic National Committee where she focused on winning back the House in 2018 and winning back the White House in 2020.  
    
    Grace represents the only congressional district located entirely in Queens, New York, where she continues to live with her husband, Dr. Wayne Kye, a professor at New York University`s College of Dentistry, and her two boys. She attended New York City public schools, including Stuyvesant High School, received her undergraduate degree from the University of Michigan, and earned her law degree from Yeshiva University`s Benjamin N. Cardozo School of Law.',
    political_party: 'Democrat',
    years_in_office: 'since 2013',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/1/16/Grace_Meng_Official_Congressional_Photo.jpg',
    user: u1
)

c7 = CongressionalMember.create(
    name: 'Nydia Velazquez',
    bio: 'Congresswoman Nydia M. Velázquez is currently serving as Representative for New York`s 7th Congressional District. In the 117th Congress, she is the Chairwoman of the House Small Business Committee, a senior member of the Financial Services Committee and a member of the House Committee on Natural Resources. 

    She has made history several times during her tenure in Congress. In 1992, she was the first Puerto Rican woman elected to the U.S. House of Representatives. In February 1998, she was named Ranking Democratic Member of the House Small Business Committee, making her the first Hispanic woman to serve as Ranking Member of a full House committee. Most recently, in 2006, she was named Chairwoman of the House Small Business Committee, making her the first Latina to chair a full Congressional committee.
    
    Given these achievements, her roots are humble. She was born in Yabucoa, Puerto Rico - a small town of sugar-cane fields - in 1953, and was one of nine children. Velázquez started school early, skipped several grades, and became the first person in her family to receive a college diploma. At the age of 16, she entered the University of Puerto Rico in Rio Piedras. She graduated magna cum laude in 1974 with a degree in political science. After earning a master`s degree on scholarship from N.Y.U., Velázquez taught Puerto Rican studies at CUNY`s Hunter College in 1981.
    
    But her passion for politics soon took hold. In 1983, Velázquez was appointed Special Assistant to Congressman Edolphus Towns (D-Brooklyn). One year later, she became the first Latina appointed to serve on the New York City Council.
    
    By 1986, Velázquez served as the Director of the Department of Puerto Rican Community Affairs in the United States. During that time, she initiated one of the most successful Latino empowerment programs in the nation`s history - "Atrevete" (Dare to Go for It!).
    
    In 1992, after months of running a grassroots political campaign, Velázquez was elected to the House of Representatives to represent New York`s 7th District. Her district includes parts of Brooklyn, Queens and the Lower East Side of Manhattan. Encompassing many diverse neighborhoods, it is home to a large Latino population, Jewish communities, and parts of Chinatown.
    
    As a fighter for equal rights of the underrepresented and a proponent of economic opportunity for the working class and poor, Congresswoman Velázquez combines sensibility and compassion, as she works to encourage economic development, protect community health and the environment, combat crime and worker abuses, and secure access to affordable housing, quality education and health care for all New York City families.
    
    As the top Democrat on the House Small Business Committee, which oversees federal programs and contracts totaling $200 billion annually, Congresswoman Velázquez has been a vocal advocate of American small business and entrepreneurship. She has established numerous small business legislative priorities, encompassing the areas of tax, regulations, access to capital, federal contracting opportunities, trade, technology, health care and pension reform, among others. Congresswoman Velázquez was named as the inaugural "Woman of the Year" by Hispanic Business Magazine in recognition of her national influence in both the political and business sectors and for her longtime support of minority enterprise.
    
    Congresswoman Velázquez can often be found close to home, working for the residents of her district.',
    political_party: 'Democrat',
    years_in_office: 'since 1993',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f4/Nydia_Vel%C3%A1zquez_official_portrait.jpg',
    user: u1
)
# c8
# c9
# c10
# c11
# c12
# c13
c14 = CongressionalMember.create(
    name: 'Alexandria Ocasio-Cortez',
    bio: 'Alexandria was born in The Bronx to working class parents: her father was a small business owner and architect from the South Bronx, and her mother cleaned homes after moving to New York from Arecibo, Puerto Rico. As school violence and dropout rates in The Bronx rose in the early 90`s, her parents put their savings together and purchased a modest home 30 miles north of the city in search of better schools for the family. As a result, much of Alexandria`s adolescence was spent in transit between her tight-knit extended family in The Bronx and school in Yorktown Heights. It struck Alexandria as unfair, even then, how the opportunities available to children and their families were often based on their ZIP code.

    Alexandria went on to study Economics and International Relations at Boston University. At the start of her sophomore year, Alexandria`s father passed away suddenly from cancer at just 48 years old. Facing huge medical bills, the family risked foreclosure and her mother took another job driving a school bus. The unjust medical debt left a lasting impression on Alexandria, and she sought out an internship in the late Sen. Ted Kennedy`s office. Upon graduating college, Alexandria came back to The Bronx and pursued work in education and community organizing: as an Educational Director for the National Hispanic Institute, she worked with promising high school youth to expand their skill-sets in community leadership and social enterprise; she also piloted projects to help improve literacy skills in young children and middle-schoolers. But as the economy floundered, Alexandria found herself working two jobs and 18-hour shifts in restaurants to help keep her family afloat, while balancing student loan and insurance payments.',
    political_party: 'Democrat',
    years_in_office: 'since 2019',
    image_url: 'https://en.wikipedia.org/wiki/Alexandria_Ocasio-Cortez',
    user: u1
)
# c15
c16 = CongressionalMember.create(
    name: 'Jamaal Bowman',
    bio: 'Congressman Jamaal Bowman, Ed.D., represents New York`s 16th District, which includes the Northern Bronx and parts of Westchester County, including Yonkers, New Rochelle, and Mount Vernon. Bowman was born and raised in New York City, spending his early years in public housing and rent-controlled apartments. He was raised by his mother, who supported them with her post office worker`s salary. After graduating from the University of New Haven, Rep. Bowman began his career as a crisis intervention teacher in a Bronx public school and went on to earn a master`s degree in guidance counseling from Mercy College and a doctorate in education from Manhattanville College. 

    In 2009, Bowman founded Cornerstone Academy for Social Action, a Bronx middle school focused on unlocking the natural brilliance of all children through a holistic curriculum, where he served as principal for a decade. At CASA, Bowman worked to center students` voices, cultural awareness, and love. He worked to ensure advanced student involvement in science, technology, engineering, art, and math. Bowman has also been an outspoken advocate for rethinking education, including ending state-sanctioned yearly standardized testing.
    
    Bowman was elected to Congress in 2020, running on a platform of transformative progressive policies that will improve the lives of those who have been legislated out of the American dream. Congressman Bowman is dedicated to passing visionary policy that infuses climate justice with economic and racial justice, and to highlighting the importance of research and investing communities of color.
    
    Bowman lives in Yonkers, New York, with his wife and children.',
    political_party: 'Democrat',
    years_in_office: 'since 2021',
    image_url: 'https://bowman.house.gov/index.cfm?a=Files.Serve&File_id=A91E77C2-5E8E-4C72-907F-5DF60C52AE0F',
    user: u1
)
# c17
# c18
# c19
# c20
# c21
# c22
# c23
# c24
# c25
# c26
# c27

# key_issues
puts '✅ Seeding key issues data...'

k1 = KeyIssue.create(title: 'immigration', description: 'DESCRIPTION_TEST1', upvote: 100, downvote: 100)
k2 = KeyIssue.create(title: 'GUN LAWS', description: 'DESCRIPTION_TEST1', upvote: 100, downvote: 100)
k3 = KeyIssue.create(title: 'CLIMATE CHANGE', description: 'DESCRIPTION_TEST1', upvote: 100, downvote: 100)
k4 = KeyIssue.create(title: 'ABORTION', description: 'DESCRIPTION_TEST1', upvote: 100, downvote: 100)
k5 = KeyIssue.create(title: 'EDUCATION', description: 'DESCRIPTION_TEST1', upvote: 100, downvote: 100)
k6 = KeyIssue.create(title: 'NATIONAL SECURITY', description: 'DESCRIPTION_TEST1', upvote: 100, downvote: 100)
k7 = KeyIssue.create(title: 'HEALTH CARE', description: 'DESCRIPTION_TEST1', upvote: 100, downvote: 100)
k8 = KeyIssue.create(title: 'ECONOMY', description: 'DESCRIPTION_TEST1', upvote: 100, downvote: 100)
k9 = KeyIssue.create(title: 'MEDICARE', description: 'DESCRIPTION_TEST1', upvote: 100, downvote: 100)
k10 = KeyIssue.create(title: 'CIVIL RIGHTS', description: 'DESCRIPTION_TEST1', upvote: 100, downvote: 100)

# user_key_issues
puts '✅ Seeding user key issues data...'

UserKeyIssue.create(isUpvote: false, isDownvote: true, user: u1, key_issue: k1)
UserKeyIssue.create(isUpvote: false, isDownvote: true, user: u2, key_issue: k1)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u1, key_issue: k2)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u2, key_issue: k2)
UserKeyIssue.create(isUpvote: false, isDownvote: true, user: u1, key_issue: k3)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u2, key_issue: k3)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u1, key_issue: k4)
UserKeyIssue.create(isUpvote: false, isDownvote: true, user: u2, key_issue: k4)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u1, key_issue: k5)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u2, key_issue: k5)
UserKeyIssue.create(isUpvote: false, isDownvote: true, user: u1, key_issue: k6)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u2, key_issue: k6)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u1, key_issue: k7)
UserKeyIssue.create(isUpvote: false, isDownvote: true, user: u2, key_issue: k7)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u1, key_issue: k8)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u2, key_issue: k8)
UserKeyIssue.create(isUpvote: false, isDownvote: true, user: u1, key_issue: k9)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u2, key_issue: k9)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u1, key_issue: k10)
UserKeyIssue.create(isUpvote: true, isDownvote: false, user: u2, key_issue: k10)

# # posted_issues
puts '✅ Seeding posted issues data...'

p1 = PostedIssue.create(title:'POSTED1', description:'DESCRIPTION1', upvote: 100, downvote: 100)
p2 = PostedIssue.create(title:'POSTED2', description:'DESCRIPTION2', upvote: 100, downvote: 100)
p3 = PostedIssue.create(title:'POSTED3', description:'DESCRIPTION3', upvote: 100, downvote: 100)
p4 = PostedIssue.create(title:'POSTED4', description:'DESCRIPTION4', upvote: 100, downvote: 100)
p5 = PostedIssue.create(title:'POSTED5', description:'DESCRIPTION5', upvote: 100, downvote: 100)

# # user_posted_issues
puts '✅ Seeding user posted issues data...'

UserPostedIssue.create(isUpvote: false, isDownvote: true, user: u1, posted_issue: p1)
UserPostedIssue.create(isUpvote: false, isDownvote: true, user: u2, posted_issue: p1)
UserPostedIssue.create(isUpvote: true, isDownvote: false, user: u1, posted_issue: p2)
UserPostedIssue.create(isUpvote: true, isDownvote: false, user: u2, posted_issue: p2)
UserPostedIssue.create(isUpvote: false, isDownvote: true, user: u1, posted_issue: p3)
UserPostedIssue.create(isUpvote: true, isDownvote: false, user: u2, posted_issue: p3)
UserPostedIssue.create(isUpvote: true, isDownvote: false, user: u1, posted_issue: p4)
UserPostedIssue.create(isUpvote: false, isDownvote: true, user: u2, posted_issue: p4)
UserPostedIssue.create(isUpvote: true, isDownvote: false, user: u1, posted_issue: p5)
UserPostedIssue.create(isUpvote: true, isDownvote: false, user: u2, posted_issue: p5)

# confirm seed data completed
puts '🌱 Seeding Data Completed!'