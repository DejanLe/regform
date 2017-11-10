require 'test_helper'

class PersonnelInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personnel_info = personnel_infos(:one)
  end

  test "should get index" do
    get personnel_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_personnel_info_url
    assert_response :success
  end

  test "should create personnel_info" do
    assert_difference('PersonnelInfo.count') do
      post personnel_infos_url, params: { personnel_info: { Basic_Research: @personnel_info.Basic_Research, Business: @personnel_info.Business, Clinical: @personnel_info.Clinical, Clinical_Research: @personnel_info.Clinical_Research, Clinical_Research: @personnel_info.Clinical_Research, D_O_B: @personnel_info.D_O_B, Dept_Name: @personnel_info.Dept_Name, Education: @personnel_info.Education, Empl_begin_date: @personnel_info.Empl_begin_date, Empl_end_date: @personnel_info.Empl_end_date, Full_Time: @personnel_info.Full_Time, HCW1: @personnel_info.HCW1, HCW2: @personnel_info.HCW2, HCW3: @personnel_info.HCW3, IHCW: @personnel_info.IHCW, Job_Code_: @personnel_info.Job_Code_, NHCW: @personnel_info.NHCW, Part_Time: @personnel_info.Part_Time, Per_Diem: @personnel_info.Per_Diem, Practice_Address_if_applicable_street_city: @personnel_info.Practice_Address_if_applicable_street_city, Research: @personnel_info.Research, Research_Collaborator_collab_type: @personnel_info.Research_Collaborator_collab_type, SSN_last_4_digit: @personnel_info.SSN_last_4_digit, Student: @personnel_info.Student, Temp_Student_Contract: @personnel_info.Temp_Student_Contract, Work_Location_Building_Floor_Room: @personnel_info.Work_Location_Building_Floor_Room, Work_Phone: @personnel_info.Work_Phone, client_id: @personnel_info.client_id, employee_id: @personnel_info.employee_id, first_name: @personnel_info.first_name, last_name: @personnel_info.last_name, manager_sponsor__home_dept_id: @personnel_info.manager_sponsor__home_dept_id, middle_initial: @personnel_info.middle_initial, sex_female: @personnel_info.sex_female, sex_male: @personnel_info.sex_male, title: @personnel_info.title } }
    end

    assert_redirected_to personnel_info_url(PersonnelInfo.last)
  end

  test "should show personnel_info" do
    get personnel_info_url(@personnel_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_personnel_info_url(@personnel_info)
    assert_response :success
  end

  test "should update personnel_info" do
    patch personnel_info_url(@personnel_info), params: { personnel_info: { Basic_Research: @personnel_info.Basic_Research, Business: @personnel_info.Business, Clinical: @personnel_info.Clinical, Clinical_Research: @personnel_info.Clinical_Research, Clinical_Research: @personnel_info.Clinical_Research, D_O_B: @personnel_info.D_O_B, Dept_Name: @personnel_info.Dept_Name, Education: @personnel_info.Education, Empl_begin_date: @personnel_info.Empl_begin_date, Empl_end_date: @personnel_info.Empl_end_date, Full_Time: @personnel_info.Full_Time, HCW1: @personnel_info.HCW1, HCW2: @personnel_info.HCW2, HCW3: @personnel_info.HCW3, IHCW: @personnel_info.IHCW, Job_Code_: @personnel_info.Job_Code_, NHCW: @personnel_info.NHCW, Part_Time: @personnel_info.Part_Time, Per_Diem: @personnel_info.Per_Diem, Practice_Address_if_applicable_street_city: @personnel_info.Practice_Address_if_applicable_street_city, Research: @personnel_info.Research, Research_Collaborator_collab_type: @personnel_info.Research_Collaborator_collab_type, SSN_last_4_digit: @personnel_info.SSN_last_4_digit, Student: @personnel_info.Student, Temp_Student_Contract: @personnel_info.Temp_Student_Contract, Work_Location_Building_Floor_Room: @personnel_info.Work_Location_Building_Floor_Room, Work_Phone: @personnel_info.Work_Phone, client_id: @personnel_info.client_id, employee_id: @personnel_info.employee_id, first_name: @personnel_info.first_name, last_name: @personnel_info.last_name, manager_sponsor__home_dept_id: @personnel_info.manager_sponsor__home_dept_id, middle_initial: @personnel_info.middle_initial, sex_female: @personnel_info.sex_female, sex_male: @personnel_info.sex_male, title: @personnel_info.title } }
    assert_redirected_to personnel_info_url(@personnel_info)
  end

  test "should destroy personnel_info" do
    assert_difference('PersonnelInfo.count', -1) do
      delete personnel_info_url(@personnel_info)
    end

    assert_redirected_to personnel_infos_url
  end
end
