class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  #create routes

  get "/" do
    "Welcome to ruby phase 3 project"
  end

  post "/projects" do
    projects = Project.create(
      name: params[:name],
      description: params[:description]
    )
    projects.to_json
  end

  post "/programmers" do
    programmer = Programmer.create(
      name: params[:name]
    )
    programmer.to_json
  end

  post "/tasks" do
    tasks = Task.create(
      title: params[:title],
      description: params[:description],
      programmer_id: params[:programmer_id],
      project_id: params[:project_id]
    )
    tasks.to_json
  end

  #Read routes

  get "/projects" do
    projects = Project.all
    projects.to_json
  end

  get '/projects/:id' do
    project = Project.find(params[:id])
    #we include the associated task and programmer
    # project.to_json(include: :tasks)
    project.to_json(include: {tasks: { include: :programmer} })
  end

  get "/tasks" do
    tasks = Task.all
    tasks.to_json
  end

  get '/tasks/:id' do
    tasks = Task.find(params[:id])
    #we include the associated task and programmer
    # project.to_json(include: :tasks)
    tasks.to_json(include: :project)
  end

  get "/programmers" do
    programmer = Programmer.all
    programmer.to_json
  end

  get '/programmers/:id' do
    programmer = Programmer.find(params[:id])
    #we include the associated task and programmer
    # project.to_json(include: :tasks)
    programmer.to_json(include: {tasks: { include: :project} })
  end

  #update routes
  patch '/programmers/:id' do
    programmer = Programmer.find(params[:id])
    programmer.update(
      name: params[:name]
    )
    programmer.to_json
  end

  patch '/tasks/:id' do
    task = Tasks.find(params[:id])
    task.update(
      title: params[:title],
      description: params[:description],
      programmer_id: params[:programmer_id],
      project_id: params[:project_id]
    )
    task.to_json
  end

  patch '/project/:id' do
    project = Project.find(params[:id])
    project.update(
      name: params[:name],
      description: params[:description]
    )
    project.to_json
  end

  #delete routes

  delete '/programmers/:id' do
    programmer = Programmer.find(params[:id])
    programmer.destroy
    programmer.to_json
  end

  delete '/tasks/:id' do
    tasks = Task.find(params[:id])
    tasks.destroy
    tasks.to_json
  end

  delete '/projects/:id' do
    project = Project.find(params[:id])
    project.destroy
    project.to_json
  end

end
