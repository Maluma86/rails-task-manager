Rails.application.routes.draw do
  # List all tasks
  get  '/tasks',          to: 'tasks#index',  as: 'tasks'

  # New must come *before* show
  get  '/tasks/new',      to: 'tasks#new',    as: 'new_task'
  post '/tasks',          to: 'tasks#create'

  # Show a single task
  get  '/tasks/:id',      to: 'tasks#show',   as: 'task'

  # Edit/update
  get    '/tasks/:id/edit', to: 'tasks#edit',   as: 'edit_task'
  patch  '/tasks/:id',      to: 'tasks#update'

  # Destroy
  delete '/tasks/:id',      to: 'tasks#destroy'
end
