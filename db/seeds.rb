require_relative('../models/student.rb')
require_relative('../models/house.rb')


house1 = House.new(
  {
    'name' => 'Griffinwindow'
  }
)

house2 = House.new(
  {
    'name' => 'Crawlout'
  }
)

house3 = House.new(
  {
    'name' => 'Hufflewaft'
  }
)

house1.save()
house2.save()
house3.save()


student1 = Student.new(
  {
    'first_name' => 'Harry',
    'last_name' => 'Potterson',
    'house_id' => house1.id,
    'age' => 15

  }
)

student2 = Student.new(
  {
    'first_name' => 'Drako',
    'last_name' => 'Maloy',
    'house_id' => house2.id,
    'age' => 15

  }
)

student3 = Student.new(
  {
    'first_name' => 'Nevil',
    'last_name' => 'Shortbottom',
    'house_id' => house3.id,
    'age' => 15

  }
)

student1.save()
student2.save()
student3.save()
