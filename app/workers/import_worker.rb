class ImportWorker
  include Sidekiq::Worker

  def perform(import_id, importer_class)
    importer_class.new(import_id).process
  end
end
