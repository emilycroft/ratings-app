require_relative '../rails_helper'

describe Book do

  let(:book) { Book.new(title: 'Best Book Ever', author: 'Best Author')}
  let(:invalid_book) { Book.new }

  it 'has a name attribute' do
    expect(book).to have_attributes(title: 'Best Book Ever', author: 'Best Author')
  end

  it 'is invalid without a title' do
    invalid_book.author = 'Worst Author'
    invalid_book.valid?
    expect(invalid_book.errors.full_messages).to include("Title can't be blank")
  end

  it 'is invalid without an author' do
    invalid_book.title = 'Worst Book Ever'
    invalid_book.valid?
    expect(invalid_book.errors.full_messages).to include("Author can't be blank")
  end

  it 'is valid with a name' do
    expect(book.errors).to be_empty
  end

end
