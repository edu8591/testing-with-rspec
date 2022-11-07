# frozen_string_literal: true

require_relative '../../app/models/school'

RSpec.describe School do
  before do
    @school = School.new('Beverly Hills High School')
  end

  it 'has a name' do
    expect(@school.name).to eq('Beverly Hills High School')
  end

  it 'should start off with no students' do
    expect(@school.students).to eq([])
  end
end
