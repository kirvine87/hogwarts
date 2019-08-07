require_relative('../models/student.rb')

#SHOW

get '/students' do
  @students = Student.all()
  erb(:"students/index")
end

get '/students/create' do
  erb(:"students/new")
end

get '/students/:id' do
  id = params[:id].to_i()
  @student = Student.find(id)
  erb(:"students/show")
end

post '/students' do
  student = Student.new(params)
  student.save()
  redirect '/students'
end

post '/students/:id/delete' do
  id = params[:id].to_i()
  student = Student.find(id)
  student.delete
  redirect '/students'
end
