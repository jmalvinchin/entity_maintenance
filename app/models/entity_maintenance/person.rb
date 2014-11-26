module EntityMaintenance
  class Person < Entity
    validates :first_name, :last_name, :prefix, :presence => true

    def full_name
      "#{prefix} #{first_name} #{middle_name ? middle_name : ''} #{last_name}".strip
    end
  end
end
