# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.destroy_all
Agent.destroy_all
User.destroy_all
Company.destroy_all
Appointment.destroy_all
Property.destroy_all

u1 = User.create(username: 'est123', password: 'es12345', firstname:'Esther', lastname:'Kim', email: 'esther@gmail.com', role: 'client', avatar: 'https://i.pinimg.com/564x/30/24/f8/3024f8d283b734bd6b7e4fc5531fe2e9.jpg', zipcode: 77024)
u2 = User.create(username: 'jam123', password: 'ja12345', firstname:'James', lastname:'Kim', email: 'james@gmail.com', role: 'client', avatar: 'https://i.pinimg.com/564x/4a/1f/76/4a1f76ca52bcb90ab2cb3343be8bb2ba.jpg', zipcode: 77024)
u3 = User.create(username: 'yun123', password: 'yu12345', firstname:'Yunjung', lastname:'Kim', email: 'yun@gmail.com', role: 'Agent', avatar: 'https://i.pinimg.com/564x/1a/69/9a/1a699af5ba1c67fd07711a66bbe733eb.jpg', zipcode: 77079)
u4 = User.create(username: 'jh123', password: 'jh12345', firstname:'Jaehack', lastname:'Kim', email: 'jae@gmail.com', role: 'Agent', avatar: 'https://i.pinimg.com/564x/1a/69/9a/1a699af5ba1c67fd07711a66bbe733eb.jpg', zipcode: 77494)

co1 = Company.create(logo: 'LOGO', name: 'Home1800', address: '25931 Brad Hurst Ct , Katy, TX 77494', zipcode: '77494', latitude: 29.723549, longitude: -95.797884, phone: '123-456-7899', email: 'home_1800@home.io', description: 'Our company is focus on Family-like agent, Proper service, Customer interests')

cl1 = Client.create!(user: u1, company: co1)
cl2 = Client.create!(user: u2, company: co1)

ag1 = Agent.create!(user: u3, company: co1, license: '12345')
ag2 = Agent.create!(user: u4, company: co1, license: '54687')

ap1 = Appointment.create(client: cl1, agent: ag1, date_time: "2020-08-02 10:30:00")
ap1 = Appointment.create(client: cl1, agent: ag2, date_time: "2020-08-10 12:30:00")
ap1 = Appointment.create(client: cl2, agent: ag1, date_time: "2020-08-12 18:30:00")
ap1 = Appointment.create(client: cl2, agent: ag2, date_time: "2020-08-07 18:30:00")

p1 = Property.create(image: 'https://photos.harstatic.com/176898748/hr/img-2.jpeg?ts=2019-08-09T08:54:29.080', status: 'Sale', category: 'Single-Family', address: '4518 SUNLIT PASS LOOP HUMBLE, TX 77396', zipcode: 77396, latitude: 29.942990, longitude: -95.254356, prices: '250,000', beds: 3, baths: 2, sqft: '2,740', built: 2012, agent: ag1)
p2 = Property.create(image: 'https://photos.harstatic.com/150098453/hr/img-10.jpeg?ts=2018-07-24T08:04:26.877', status: 'Sale', category: 'Single-Family', address: '10608 SHADOW ELM COURT HOUSTON, TX 77043', zipcode: 77043, latitude: 29.823907, longitude: -95.557341,prices: '370,000', beds: 3, baths: 3, sqft: '2,090', built: 2015, agent: ag1)
p3 = Property.create(image: 'https://photos.harstatic.com/153724998/hr/img-5.jpeg?ts=2018-09-23T13:17:07.083', status: 'Sale', category: 'Single-Family', address: '19910 IVORY MILLS LANE HOUSTON, TX 77094', zipcode: 77094, latitude:29.762339, longitude: -95.714458, prices: '250,000', beds: 3, baths: 2, sqft: '2,375', built: 1998, agent: ag1)
p4 = Property.create(image: 'https://photos.harstatic.com/152961921/hr/img-15.jpeg?ts=2018-09-05T12:24:41.210', status: 'Sale', category: 'Single-Family', address: '25914 CELTIC TERRACE DRIVE KATY, TX 77494', zipcode: 77494, latitude:29.731197, longitude: -95.803879, prices: '350,000', beds: 4, baths: 2, sqft: '2,626', built: 2009, agent: ag1)
p5 = Property.create(image: 'https://photos.harstatic.com/185152579/hr/img-3.jpeg?ts=2020-05-08T00:28:43.600', status: 'For Sale', category: 'Single-Family', address: '12103 Via Toscano Court, Cypress, TX 77429', zipcode: 77429, latitude:29.979338, longitude: -95.609470, prices: '325,000', beds: 4, baths: 3, sqft: '2,977', built: 2006, agent: ag1)
p6 = Property.create(image: 'https://photos.harstatic.com/185201425/hr/img-1.jpeg?ts=2020-05-08T16:54:25.627', status: 'For Sale', category: 'Townhouse', address: '10158 Memorial Drive, Houston, TX 77024', zipcode: 77024, latitude:29.778009, longitude: -95.483834, prices: '598,000', beds: 3, baths: 3, sqft: '3,060', built: 1975, agent: ag2)
p7 = Property.create(image: 'https://photos.harstatic.com/185769486/hr/img-1.jpeg?ts=2020-07-16T10:21:08.440', status: 'For Sale', category: 'Townhouse', address: '269 CHIMNEY ROCK ROAD HOUSTON, TX 77024', zipcode: 77024, latitude:29.774214, longitude:-95.479912, prices: '595,000', beds: 3, baths: 2, sqft: '2,267', built: 1968, agent: ag2)
p8 = Property.create(image: 'https://photos.harstatic.com/185530390/hr/img-3.jpeg?ts=2020-06-26T08:24:21.840', status: 'Under Contract', category: 'Single-Family', address: '971 QUEEN ANNES ROAD HOUSTON, TX 77024', zipcode: 77024, latitude:29.781605, longitude:-95.487888, prices: '899,000', beds: 5, baths: 3, sqft: '3,926', built: 2012, agent: ag2)

