require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      title: "MyString",
      body: "MyText",
      description: "MyText",
      slug: "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input[name=?]", "project[title]"

      assert_select "textarea[name=?]", "project[body]"

      assert_select "textarea[name=?]", "project[description]"

      assert_select "input[name=?]", "project[slug]"
    end
  end
end
