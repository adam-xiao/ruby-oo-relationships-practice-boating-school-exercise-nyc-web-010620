class Instructor

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name

        @@all << self
    end

    def pass_student(student, test_name)
        x = BoatingTest.all.find { |test| test.test_name == test_name }
        
        if x
            x.status = "Passed"
            x
        else
            BoatingTest.new(student, test_name, self, "Passed")
        end
    end

    def fail_student(student, test_name)
        x = BoatingTest.all.find { |test| test.test_name == test_name }
        
        if x
            x.status = "Failed"
            x
        else
            BoatingTest.new(student, test_name, self, "Failed")
        end
    end

end
