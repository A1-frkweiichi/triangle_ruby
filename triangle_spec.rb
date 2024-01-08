require_relative 'triangle'

describe 'triangle_type' do
  it 'identifies an equilateral triangle' do
    expect(triangle_type(1, 1, 1)).to eq '正三角形ですね！'
  end

  it 'identifies an isosceles triangle' do
    expect(triangle_type(2, 2, 1)).to eq '二等辺三角形ですね！'
  end

  it 'identifies a scalene triangle' do
    expect(triangle_type(2, 3, 4)).to eq '不等辺三角形ですね！'
  end

  it 'identifies a non-triangle' do
    expect(triangle_type(1, 2, 3)).to eq '三角形じゃないです＞＜'
  end

  it 'handles negative numbers' do
    expect(triangle_type(-1, 2, 3)).to eq '三角形じゃないです＞＜'
  end

  it 'handles zero' do
    expect(triangle_type(0, 2, 3)).to eq '三角形じゃないです＞＜'
  end
end
