       #!/usr/bin/env ruby
require 'minitest/autorun'
load 'main.rb'
 
# Tests
describe Student do
  before do
    @student1 = Student.new('JOANNA', 'KOWALSKA')
    @student1.add_score(4.0)
    @student1.add_score(5)
    ######################
    @student2 = Student.new('Jerzy', 'Nowak')
    @student2.add_score(4)
    @student2.add_score(4.0)
  end
 
  describe '#possibilities' do
    it 'has capitalized name' do
      @student1.first_name.must_equal('Joanna', 'Niepoprawne imię')
      @student1.last_name.must_equal('Kowalska', 'Niepoprawne nazwisko')
    end
    it 'has unique id' do
      @student1.id.wont_equal(@student2.id, 'Id studenta nie jest unikalne')
    end
    it 'has unmodifiable id' do
      proc { @student1.id = 1 }.must_raise NoMethodError
    end
    it 'can displays full information' do
      proc { puts @student1 }.must_output("Joanna Kowalska [4.0, 5.0] ma_stypendium\n")
      proc { puts @student2 }.must_output("Jerzy Nowak [4.0, 4.0] nie_ma_stypendium\n")
    end
    it 'can modify personal data' do
      @student1.first_name = 'Joanna Urszula'
      @student1.last_name = 'Nowak'
      @student1.first_name.must_equal('Joanna Urszula', 'Niepoprawne imię')
      @student1.last_name.must_equal('Nowak', 'Niepoprawne nazwisko')
    end
    it 'properly stores scores' do
      @student1.scores.must_equal([4.0, 5.0])
      @student2.scores.must_equal([4.0, 4.0])
    end
    it 'correctly calculates the scholarship' do
      @student1.has_scholarship?.must_equal(true, "Metoda 'has_scholarship?()' zwróciła błędną wartość")
      @student2.has_scholarship?.must_equal(false, "Metoda 'has_scholarship?()' zwróciła błędną wartość")
    end
  end
end
######################
describe University do
  before do
    @university = University.new
    @student1 = Student.new('JOANNA', 'KOWALSKA')
    @student2 = Student.new('Jerzy', 'Nowak')
  end
 
  describe '#possibilities' do
    it 'is empty at the beginning' do
      @university.size.must_equal(0)
    end
    it 'properly ads students' do
      @university.append(@student1)
      @university.append(@student2)
      @university.size.must_equal(2)
    end
    it 'properly implements the "[]" method' do
      @university[@student1.id].first_name.must_equal(@student1.first_name, "Metoda '[]' zwraca nieprawidłowy wynik")
      @university[@student2.id].first_name.must_equal(@student2.first_name, "Metoda '[]' zwraca nieprawidłowy wynik")
    end
    it 'can display full information' do
      proc { puts @university }.must_output("Jan Kowalski\nJerzy Nowak\n")
    end
  end
end
