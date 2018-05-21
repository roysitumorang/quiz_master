ActiveAdmin.register Quiz do
  permit_params :question, :anwer

  index do
    selectable_column
    id_column
    column :question
    column :answer
    column :created_at
    actions
  end

  filter :question
  filter :answer
  filter :created_at

  form do |f|
    f.inputs do
      f.input :question
      f.input :answer
    end
    f.actions
  end

end
