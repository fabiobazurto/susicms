require 'test_helper'

class MailContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mail_contact = mail_contacts(:one)
  end

  test "should get index" do
    get mail_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_mail_contact_url
    assert_response :success
  end

  test "should create mail_contact" do
    assert_difference('MailContact.count') do
      post mail_contacts_url, params: { mail_contact: { already_answered: @mail_contact.already_answered, already_read: @mail_contact.already_read, email: @mail_contact.email, name: @mail_contact.name, question: @mail_contact.question } }
    end

    assert_redirected_to mail_contact_url(MailContact.last)
  end

  test "should show mail_contact" do
    get mail_contact_url(@mail_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_mail_contact_url(@mail_contact)
    assert_response :success
  end

  test "should update mail_contact" do
    patch mail_contact_url(@mail_contact), params: { mail_contact: { already_answered: @mail_contact.already_answered, already_read: @mail_contact.already_read, email: @mail_contact.email, name: @mail_contact.name, question: @mail_contact.question } }
    assert_redirected_to mail_contact_url(@mail_contact)
  end

  test "should destroy mail_contact" do
    assert_difference('MailContact.count', -1) do
      delete mail_contact_url(@mail_contact)
    end

    assert_redirected_to mail_contacts_url
  end
end
