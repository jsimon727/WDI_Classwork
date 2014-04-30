require 'spec_helper'

describe Games do
  it { should ensure_inclusion_of(:won).in_array([true, false])}
end
