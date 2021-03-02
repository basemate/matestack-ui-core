class Demo::FirstPage < Matestack::Ui::Page

  def response
    # Demo::Components::Header.()
    header slots: { first: a_slot(1) }
    h1 'First page with new logic!'
    abbr title: 'test'

    rails_render partial: '/some_partial', locals: { foo: 1 }
    rails_render file: '/some_view', locals: { foo: 1 }
  end

  def a_slot(number)
    slot do
      div content
      paragraph number
    end
  end

  def content
    'Slot with method content'
  end

end