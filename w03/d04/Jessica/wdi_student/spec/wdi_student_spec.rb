require 'spec_helper'
require_relative '../lib/wdi_student'

describe Student do
  subject(:student){Student.new("Jessica")}

  describe '::new' do
    it "starts with a name" do
      expect(student.name).to eq("Jessica")
    end
    it "starts with no knowledge" do
      expect(student.knowledge).to eq(0)
    end
    it "starts with full energy" do
      expect(student.energy?).to be_true
    end
  end

  describe '#code' do

    context "student has coded once" do
      before do
        student.code
      end

      it "no energy after coding" do
        expect(student.energy?).to be_false
      end

      it "full knowledge after coding" do
        expect(student.knowledge).to eq(1)
      end
    end

    context "student has coded twice" do
      before do
        student.code
        student.code
      end

      it "too tired to code" do
        expect(student.knowledge).to eq(0) 
      end
    end
  end

  describe '#break' do
    before do
      student.code
      student.break
    end

    it "student will have energy after break" do
      expect(student.energy?).to be_true
    end
  end
end
