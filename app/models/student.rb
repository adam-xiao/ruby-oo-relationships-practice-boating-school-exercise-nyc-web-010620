class Student

    attr_reader :first_name

    @@all = []

    def self.all
        @@all
    end

    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(name)
        self.all.find { |student| student.first_name == name }
    end

    def student_tests
        BoatingTest.all.select { |test| test.student == self.first_name }
    end

    def grade_percentage
        tests_passed = self.student_tests.select { |test| test.status == "Passed" }
    
        grade_percentage = (tests_passed.count.to_f / self.student_tests.count) * 100
    end

end
