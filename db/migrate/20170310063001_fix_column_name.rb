class FixColumnName < ActiveRecord::Migration[5.0]
      def self.up
        rename_column :user_challenges, :completed, :completed_time
      end

      def self.down
        # rename back if you need or do something else or do nothing
        rename_column :UserChallenge, :completed_time, :completed
      end
end
