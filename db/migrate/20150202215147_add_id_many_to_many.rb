class AddIdManyToMany < ActiveRecord::Migration
  def self.up
    execute %{
      ALTER TABLE "citations_sites" ADD "id" bigserial;
      ALTER TABLE "citations_treatments" ADD "id" bigserial;
      ALTER TABLE "inputs_runs" ADD "id" bigserial;
      ALTER TABLE "inputs_variables" ADD "id" bigserial;
      ALTER TABLE "managements_treatments" ADD "id" bigserial;
      ALTER TABLE "pfts_priors" ADD "id" bigserial;
      ALTER TABLE "pfts_species" ADD "id" bigserial;
      ALTER TABLE "posteriors_ensembles" ADD "id" bigserial;
    }
  end

  def self.down
    remove_column :citations_sites, :id
    remove_column :citations_treatments, :id
    remove_column :inputs_runs, :id
    remove_column :inputs_variables, :id
    remove_column :managements_treatments, :id
    remove_column :pfts_priors, :id
    remove_column :pfts_species, :id
    remove_column :posteriors_ensembles, :id
  end
end
