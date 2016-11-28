namespace :curation_concerns do
  namespace :workflow do
    desc "Load workflow configuration into the database"
    task load: :environment do
      Sufia::Workflow::WorkflowImporter.load_workflows
    end
  end
end
