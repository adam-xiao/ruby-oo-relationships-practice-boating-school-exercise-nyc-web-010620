class BoatingTest

    attr_accessor :student, :test_name, :instructor, :status

    @@all = []

    def self.all
        @@all
    end

    def initialize(student, test_name, instructor, status="Test not taken")
        @student = student
        @test_name = test_name
        @instructor = instructor
        @status = status

        @@all << self
    end

end
