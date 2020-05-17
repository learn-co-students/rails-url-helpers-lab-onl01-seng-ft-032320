class ChangeColumnActiveStudents < ActiveRecord::Migration

    change_column_default :students, :active, false
end