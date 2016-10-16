set define off
set verify off
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end;
/
 
 
--application/set_environment
prompt  APPLICATION 115 - Help Desk
--
-- Application Export:
--   Application:     115
--   Name:            Help Desk
--   Date and Time:   19:42 Thursday January 10, 2013
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         4.2.1.00.08
--   Instance ID:     63122780454626
--
-- Import:
--   Using Application Builder
--   or
--   Using SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application
 
-- Application Statistics:
--   Pages:                     16
--     Items:                   42
--     Computations:             3
--     Validations:             12
--     Processes:               28
--     Regions:                 22
--     Buttons:                 37
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--     Navigation:
--       Parent Tabs:            2
--       Tab Sets:               2
--         Tabs:                 7
--       Lists:                  1
--       Breadcrumbs:            1
--         Entries:             12
--       NavBar Entries:         2
--     Security:
--       Authentication:         2
--       Authorization:          3
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                15
--         Region:              30
--         Label:                5
--         List:                20
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:               7
--         Report:              10
--       LOVs:                   9
--       Shortcuts:              2
--     Globalization:
--     Reports:
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,2642313158820002));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2012.01.01');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,115);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(nvl(wwv_flow_application_install.get_application_id,115));
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(nvl(wwv_flow_application_install.get_application_id,115));
null;
 
end;
/

prompt  ...ui types
--
 
begin
 
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => nvl(wwv_flow_application_install.get_application_id,115),
  p_display_id=> nvl(wwv_flow_application_install.get_application_id,115),
  p_owner => nvl(wwv_flow_application_install.get_schema,'APRESS'),
  p_name  => nvl(wwv_flow_application_install.get_application_name,'Help Desk'),
  p_alias => nvl(wwv_flow_application_install.get_application_alias,'F_123115'),
  p_page_view_logging => 'YES',
  p_page_protection_enabled_y_n=> 'Y',
  p_checksum_salt_last_reset => '20130110194231',
  p_max_session_length_sec=> null,
  p_compatibility_mode=> '4.2',
  p_html_escaping_mode=> 'E',
  p_flow_language=> 'en',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_allow_feedback_yn=> 'N',
  p_date_format=> 'DD-MON-YYYY',
  p_date_time_format=> 'DD-MON-YYYY HH:MI:SS',
  p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'/i/'),
  p_publish_yn=> 'N',
  p_documentation_banner=> '',
  p_authentication=> 'PLUGIN',
  p_authentication_id=> 19098745250044446 + wwv_flow_api.g_id_offset,
  p_logout_url=> '',
  p_application_tab_set=> 0,
  p_logo_image => 'TEXT:Help Desk',
  p_public_url_prefix => '',
  p_public_user=> '',
  p_dbauth_url_prefix => '',
  p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,''),
  p_cust_authentication_process=> '',
  p_cust_authentication_page=> '',
  p_flow_version=> 'release 1.0',
  p_flow_status=> 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> '',
  p_build_status=> 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_browser_cache=>'N',
  p_browser_frame=>'D',
  p_deep_linking=>'Y',
  p_vpd=> '',
  p_vpd_teardown_code=> '',
  p_authorize_public_pages_yn=>'N',
  p_csv_encoding=> 'Y',
  p_include_legacy_javascript=> 'Y',
  p_default_error_display_loc=> 'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_last_updated_by => 'ADMIN',
  p_last_upd_yyyymmddhh24miss=> '20130110194231',
  p_ui_type_name => null,
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

prompt  ...user interfaces
--
 
begin
 
--application/user interface/desktop
wwv_flow_api.create_user_interface (
  p_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_ui_type_name => 'DESKTOP'
 ,p_display_name => 'Desktop'
 ,p_display_seq => 10
 ,p_use_auto_detect => false
 ,p_is_default => true
 ,p_theme_id => 21
 ,p_home_url => 'f?p=&APP_ID.:1:&SESSION.'
 ,p_login_url => 'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
 ,p_global_page_id => 0
  );
null;
 
end;
/

prompt  ...plug-in settings
--
 
begin
 
--application/plug-in setting/item_type_native_yes_no
wwv_flow_api.create_plugin_setting (
  p_id => 14307939969758124 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'ITEM TYPE'
 ,p_plugin => 'NATIVE_YES_NO'
 ,p_attribute_01 => 'Y'
 ,p_attribute_03 => 'N'
  );
null;
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
--application/shared_components/security/authorization/access_control_administrator
wwv_flow_api.create_security_scheme (
  p_id => 19109649860175164 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'access control - administrator'
 ,p_scheme_type => 'NATIVE_FUNCTION_BODY'
 ,p_attribute_01 => 'declare'||unistr('\000a')||
'  l_setup_id number := null;'||unistr('\000a')||
'  l_mode     varchar2(50) := null;'||unistr('\000a')||
'  l_priv     varchar2(50) := null;'||unistr('\000a')||
'begin'||unistr('\000a')||
'  if apex_application.is_custom_auth_page then'||unistr('\000a')||
'    return true;'||unistr('\000a')||
'  end if;'||unistr('\000a')||
'  '||unistr('\000a')||
'  for c1 in (select id, application_mode'||unistr('\000a')||
'             from apex_access_setup '||unistr('\000a')||
'             where application_id = :app_id)'||unistr('\000a')||
'  loop'||unistr('\000a')||
'    l_setup_id := c1.id;'||unistr('\000a')||
'    l_mode := c1.application_mode;'||unistr('\000a')||
'  end loop;'||unistr('\000a')||
'  '||unistr('\000a')||
'  if (l_mode = ''ALL'') or (l_mode is null) then'||unistr('\000a')||
'    return true;'||unistr('\000a')||
'  end if;'||unistr('\000a')||
'   '||unistr('\000a')||
'  for c1 in (select admin_privileges '||unistr('\000a')||
'             from apex_access_control'||unistr('\000a')||
'             where upper(admin_username) = upper(:app_user)'||unistr('\000a')||
'             and setup_id = l_setup_id)'||unistr('\000a')||
'  loop'||unistr('\000a')||
'    l_priv := c1.admin_privileges;'||unistr('\000a')||
'  end loop;'||unistr('\000a')||
'  '||unistr('\000a')||
'  if nvl(l_priv,''x'') = ''ADMIN'' then return true; end if;'||unistr('\000a')||
'  return false;'||unistr('\000a')||
'end;'
 ,p_error_message => 'No privilege for attempted action.'
 ,p_caching => 'BY_USER_BY_PAGE_VIEW'
  );
--application/shared_components/security/authorization/access_control_edit
wwv_flow_api.create_security_scheme (
  p_id => 19109940925175165 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'access control - edit'
 ,p_scheme_type => 'NATIVE_FUNCTION_BODY'
 ,p_attribute_01 => 'declare'||unistr('\000a')||
'  l_setup_id number := null;'||unistr('\000a')||
'  l_mode     varchar2(50) := null;'||unistr('\000a')||
'  l_priv     varchar2(50) := null;'||unistr('\000a')||
'begin'||unistr('\000a')||
'  if apex_application.is_custom_auth_page then'||unistr('\000a')||
'    return true;'||unistr('\000a')||
'  end if;'||unistr('\000a')||
'  '||unistr('\000a')||
'  for c1 in (select id, application_mode'||unistr('\000a')||
'             from apex_access_setup'||unistr('\000a')||
'             where application_id = :app_id)'||unistr('\000a')||
'  loop'||unistr('\000a')||
'     l_setup_id := c1.id;'||unistr('\000a')||
'     l_mode := c1.application_mode;'||unistr('\000a')||
'  end loop;'||unistr('\000a')||
'  '||unistr('\000a')||
'  if (l_mode = ''ALL'') or (l_mode is null) then'||unistr('\000a')||
'    return true;'||unistr('\000a')||
'  end if;'||unistr('\000a')||
'  '||unistr('\000a')||
'  for c1 in (select admin_privileges'||unistr('\000a')||
'             from apex_access_control'||unistr('\000a')||
'             where upper(admin_username) = upper(:app_user)'||unistr('\000a')||
'             and setup_id = l_setup_id)'||unistr('\000a')||
'  loop'||unistr('\000a')||
'     l_priv := c1.admin_privileges;'||unistr('\000a')||
'  end loop;'||unistr('\000a')||
'  '||unistr('\000a')||
'  if l_mode in (''RESTRICTED'',''PUBLIC_RESTRICTED'') then'||unistr('\000a')||
'    if l_priv in (''EDIT'',''ADMIN'') then'||unistr('\000a')||
'      return true;'||unistr('\000a')||
'    else'||unistr('\000a')||
'      return false;'||unistr('\000a')||
'    end if; '||unistr('\000a')||
'  elsif l_mode =''ADMIN_ONLY'' then'||unistr('\000a')||
'    if l_priv = ''ADMIN'' then'||unistr('\000a')||
'      return true;'||unistr('\000a')||
'    else'||unistr('\000a')||
'      return false;'||unistr('\000a')||
'    end if; '||unistr('\000a')||
'  else'||unistr('\000a')||
'    return false;'||unistr('\000a')||
'  end if;'||unistr('\000a')||
'  return false;'||unistr('\000a')||
'end;'
 ,p_error_message => 'No privilege for attempted action.'
 ,p_caching => 'BY_USER_BY_PAGE_VIEW'
  );
--application/shared_components/security/authorization/access_control_view
wwv_flow_api.create_security_scheme (
  p_id => 19110225712175165 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'access control - view'
 ,p_scheme_type => 'NATIVE_FUNCTION_BODY'
 ,p_attribute_01 => 'declare'||unistr('\000a')||
'  l_setup_id number := null;'||unistr('\000a')||
'  l_mode     varchar2(50) := null;'||unistr('\000a')||
'  l_priv     varchar2(50) := null;'||unistr('\000a')||
'begin '||unistr('\000a')||
'  if apex_application.is_custom_auth_page then'||unistr('\000a')||
'    return true;'||unistr('\000a')||
'  end if;'||unistr('\000a')||
'  '||unistr('\000a')||
'  for c1 in (select id, application_mode'||unistr('\000a')||
'             from apex_access_setup'||unistr('\000a')||
'             where application_id = :app_id)'||unistr('\000a')||
'  loop'||unistr('\000a')||
'   l_setup_id := c1.id;'||unistr('\000a')||
'   l_mode := c1.application_mode;'||unistr('\000a')||
'  end loop;'||unistr('\000a')||
'  '||unistr('\000a')||
'  if (l_mode = ''ALL'') or (l_mode is null) then '||unistr('\000a')||
'    return true;'||unistr('\000a')||
'  end if; '||unistr('\000a')||
'  '||unistr('\000a')||
'  for c1 in (select admin_privileges'||unistr('\000a')||
'             from apex_access_control'||unistr('\000a')||
'             where upper(admin_username) = upper(:app_user)'||unistr('\000a')||
'             and setup_id = l_setup_id)'||unistr('\000a')||
'  loop'||unistr('\000a')||
'    l_priv := c1.admin_privileges;'||unistr('\000a')||
'  end loop;'||unistr('\000a')||
'  '||unistr('\000a')||
'  if l_mode = ''RESTRICTED'' then '||unistr('\000a')||
'    if l_priv in (''VIEW'',''ADMIN'',''EDIT'') then '||unistr('\000a')||
'      return true;'||unistr('\000a')||
'    else '||unistr('\000a')||
'      return false;'||unistr('\000a')||
'    end if;'||unistr('\000a')||
'  elsif l_mode = ''ADMIN_ONLY'' then '||unistr('\000a')||
'    if l_priv = ''ADMIN'' then '||unistr('\000a')||
'      return true;'||unistr('\000a')||
'    else '||unistr('\000a')||
'      return false;'||unistr('\000a')||
'    end if;'||unistr('\000a')||
'  elsif l_mode = ''PUBLIC_RESTRICTED'' then '||unistr('\000a')||
'    return true;'||unistr('\000a')||
'  else'||unistr('\000a')||
'    return false;'||unistr('\000a')||
'  end if;'||unistr('\000a')||
'  return false;'||unistr('\000a')||
'end;'
 ,p_error_message => 'No privilege for attempted action.'
 ,p_caching => 'BY_USER_BY_PAGE_VIEW'
  );
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id => 14319849660794592 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 10,
  p_icon_image => '',
  p_icon_subtext=> 'Login',
  p_icon_target=> 'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::',
  p_icon_image_alt=> 'Login',
  p_icon_height=> null,
  p_icon_width=> null,
  p_icon_height2=> null,
  p_icon_width2=> null,
  p_nav_entry_is_feedback_yn => 'N',
  p_icon_bar_disp_cond=> '',
  p_icon_bar_disp_cond_type=> 'USER_IS_PUBLIC_USER',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
wwv_flow_api.create_icon_bar_item(
  p_id => 14317543043758129 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 200,
  p_icon_image => '',
  p_icon_subtext=> 'Logout',
  p_icon_target=> '&LOGOUT_URL.',
  p_icon_image_alt=> 'Logout',
  p_icon_height=> 32,
  p_icon_width=> 32,
  p_icon_height2=> 24,
  p_icon_width2=> 24,
  p_nav_entry_is_feedback_yn => 'N',
  p_icon_bar_disp_cond=> '',
  p_icon_bar_disp_cond_type=> 'USER_IS_NOT_PUBLIC_USER',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

prompt  ...application processes
--
prompt  ...application items
--
prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/standard/t_home
wwv_flow_api.create_tab (
  p_id=> 14319048241758132 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_HOME',
  p_tab_text => 'Home',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '2,3',
  p_tab_parent_tabset=>'TS1',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/tickets
wwv_flow_api.create_tab (
  p_id=> 18939845520576970 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 20,
  p_tab_name=> 'Tickets',
  p_tab_text => 'Tickets',
  p_tab_step => 200,
  p_tab_also_current_for_pages => '210,220',
  p_tab_parent_tabset=>'TS1',
  p_display_condition_type=> 'USER_IS_NOT_PUBLIC_USER',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/analysis
wwv_flow_api.create_tab (
  p_id=> 18981854027588599 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 30,
  p_tab_name=> 'Analysis',
  p_tab_text => 'Analysis',
  p_tab_step => 300,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_display_condition_type=> 'USER_IS_NOT_PUBLIC_USER',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/calendar
wwv_flow_api.create_tab (
  p_id=> 18992527027812113 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 40,
  p_tab_name=> 'Calendar',
  p_tab_text => 'Calendar',
  p_tab_step => 400,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_display_condition_type=> 'USER_IS_NOT_PUBLIC_USER',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/chart
wwv_flow_api.create_tab (
  p_id=> 18997336839193518 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 50,
  p_tab_name=> 'Chart',
  p_tab_text => 'Chart',
  p_tab_step => 500,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_display_condition_type=> 'USER_IS_NOT_PUBLIC_USER',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/t_users
wwv_flow_api.create_tab (
  p_id=> 19069551055266912 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'T_ADMIN',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_USERS',
  p_tab_text => 'Users',
  p_tab_step => 600,
  p_tab_also_current_for_pages => '610',
  p_tab_parent_tabset=>'TS1',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/access_control
wwv_flow_api.create_tab (
  p_id=> 19101029418175147 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'T_ADMIN',
  p_tab_sequence=> 60,
  p_tab_name=> 'Access Control',
  p_tab_text => 'Access Control',
  p_tab_step => 620,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_comment  => '');
 
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/parent/t_issuetracker
wwv_flow_api.create_toplevel_tab (
  p_id=> 19068626722232577 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name  => 'T_ISSUETRACKER',
  p_tab_text  => 'Issue Tracker',
  p_tab_target=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_current_on_tabset=> 'TS1',
  p_tab_comment=> '');
 
--application/shared_components/navigation/tabs/parent/t_admin
wwv_flow_api.create_toplevel_tab (
  p_id=> 19069330592246023 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 20,
  p_tab_name  => 'T_ADMIN',
  p_tab_text  => 'Admin',
  p_tab_target=> 'f?p=&APP_ID.:600:&SESSION.::&DEBUG.:::',
  p_current_on_tabset=> 'T_ADMIN',
  p_display_condition_type=> 'USER_IS_NOT_PUBLIC_USER',
  p_security_scheme => 19109649860175164+ wwv_flow_api.g_id_offset,
  p_tab_comment=> '');
 
 
end;
/

prompt  ...Shared Lists of values
--
--application/shared_components/user_interface/lov/apex_application_mode
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 19101348865175147 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'APEX_APPLICATION_MODE',
  p_lov_query=> '.'||to_char(19101348865175147 + wwv_flow_api.g_id_offset)||'.');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>19101644906175149 + wwv_flow_api.g_id_offset,
  p_lov_id=>19101348865175147 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>10,
  p_lov_disp_value=>'Full access to all, access control list not used.',
  p_lov_return_value=>'ALL',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>19101954917175150 + wwv_flow_api.g_id_offset,
  p_lov_id=>19101348865175147 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>20,
  p_lov_disp_value=>'Restricted access. Only users defined in the access control list are allowed.',
  p_lov_return_value=>'RESTRICTED',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>19102248115175151 + wwv_flow_api.g_id_offset,
  p_lov_id=>19101348865175147 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>30,
  p_lov_disp_value=>'Public read only. Edit and administrative privileges controlled by access control list.',
  p_lov_return_value=>'PUBLIC_RESTRICTED',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>19102549917175151 + wwv_flow_api.g_id_offset,
  p_lov_id=>19101348865175147 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>40,
  p_lov_disp_value=>'Administrative access only.',
  p_lov_return_value=>'ADMIN_ONLY',
  p_lov_data_comment=> '');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/apex_application_priv
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 19104136432175156 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'APEX_APPLICATION_PRIV',
  p_lov_query=> '.'||to_char(19104136432175156 + wwv_flow_api.g_id_offset)||'.');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>19104450702175156 + wwv_flow_api.g_id_offset,
  p_lov_id=>19104136432175156 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>10,
  p_lov_disp_value=>'Administrator',
  p_lov_return_value=>'ADMIN',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>19104731573175157 + wwv_flow_api.g_id_offset,
  p_lov_id=>19104136432175156 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>20,
  p_lov_disp_value=>'Edit',
  p_lov_return_value=>'EDIT',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>19105054470175157 + wwv_flow_api.g_id_offset,
  p_lov_id=>19104136432175156 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>30,
  p_lov_disp_value=>'View',
  p_lov_return_value=>'VIEW',
  p_lov_data_comment=> '');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/p210_tickets_status_id
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 18946647037577016 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'P210_TICKETS_STATUS_ID',
  p_lov_query=> 'select STATUS d, STATUS_ID v from STATUS_LOOKUP order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/p230_tickets_status_id
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 18977445747246911 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'P230_TICKETS_STATUS_ID',
  p_lov_query=> 'select STATUS d, STATUS_ID v from STATUS_LOOKUP order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/p2_tickets_status_id
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 18927442657271656 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'P2_TICKETS_STATUS_ID',
  p_lov_query=> 'select STATUS d, STATUS_ID v from STATUS_LOOKUP order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/p2_tickets_status_id_1
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 18932325625366248 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'P2_TICKETS_STATUS_ID_1',
  p_lov_query=> 'select STATUS d, STATUS_ID v from STATUS_LOOKUP order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/p9998_tickets_status_id
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 19035022563732904 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'P9998_TICKETS_STATUS_ID',
  p_lov_query=> 'select STATUS d, STATUS_ID v from STATUS_LOOKUP order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/techs
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 14322337224087299 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'TECHS',
  p_lov_query=> '.'||to_char(14322337224087299 + wwv_flow_api.g_id_offset)||'.');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>14322652492087300 + wwv_flow_api.g_id_offset,
  p_lov_id=>14322337224087299 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>1,
  p_lov_disp_value=>'Scott',
  p_lov_return_value=>'SCOTT',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>14322954726087301 + wwv_flow_api.g_id_offset,
  p_lov_id=>14322337224087299 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>2,
  p_lov_disp_value=>'Doug',
  p_lov_return_value=>'DOUG',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>14323238369087301 + wwv_flow_api.g_id_offset,
  p_lov_id=>14322337224087299 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>3,
  p_lov_disp_value=>'Karen',
  p_lov_return_value=>'KAREN',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>14323528024087301 + wwv_flow_api.g_id_offset,
  p_lov_id=>14322337224087299 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>4,
  p_lov_disp_value=>'Martin',
  p_lov_return_value=>'MARTIN',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>14323849751087301 + wwv_flow_api.g_id_offset,
  p_lov_id=>14322337224087299 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>5,
  p_lov_disp_value=>'Patrick',
  p_lov_return_value=>'PATRICK',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>14324150917087301 + wwv_flow_api.g_id_offset,
  p_lov_id=>14322337224087299 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>6,
  p_lov_disp_value=>'Tim',
  p_lov_return_value=>'TIM',
  p_lov_data_comment=> '');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/users
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 14324437857097925 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'USERS',
  p_lov_query=> 'SELECT DISTINCT'||unistr('\000a')||
'  INITCAP(created_by) d,'||unistr('\000a')||
'  created_by r'||unistr('\000a')||
'FROM'||unistr('\000a')||
'  tickets'||unistr('\000a')||
'ORDER BY'||unistr('\000a')||
'  created_by');
 
null;
 
end;
/

prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

--application/comments
prompt  ...comments: requires application express 2.2 or higher
--
 
--application/pages/page_00000
prompt  ...PAGE 0: Global Page - Desktop
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 0
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_name => 'Global Page - Desktop'
 ,p_step_title => 'Global Page - Desktop'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'D'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121210234152'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 14320548857802210 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Breadcrumbs',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14309936088758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(14318725502758131 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 14316723828758128+ wwv_flow_api.g_id_offset,
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 14321423764908509 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Actions',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 14312042262758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'REGION_POSITION_03',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 14320840808818752 + wwv_flow_api.g_id_offset,
  p_list_template_id=> 14315051470758128+ wwv_flow_api.g_id_offset,
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'FUNCTION_BODY',
  p_plug_display_when_condition => 'IF :APP_PAGE_ID <100 THEN'||unistr('\000a')||
' RETURN TRUE;'||unistr('\000a')||
'ELSE'||unistr('\000a')||
' RETURN FALSE;'||unistr('\000a')||
'END IF;',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 0
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00001
prompt  ...PAGE 1: Home
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 1
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Home'
 ,p_step_title => 'Home'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Home'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121227105710'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'DECLARE'||unistr('\000a')||
'  l_count NUMBER;'||unistr('\000a')||
'  l_status_id NUMBER := get_status(''OPEN'');'||unistr('\000a')||
'BEGIN'||unistr('\000a')||
'IF :APP_USER != ''nobody'' THEN'||unistr('\000a')||
'  SELECT count(*) '||unistr('\000a')||
'    INTO l_count '||unistr('\000a')||
'    FROM tickets'||unistr('\000a')||
'    WHERE assigned_to = :APP_USER'||unistr('\000a')||
'    AND status_id = l_status_id;'||unistr('\000a')||
''||unistr('\000a')||
'  htp.p(''<h1>Welcome to the APEX Issue Tracking System, '' '||unistr('\000a')||
'    || :APP_USER || ''</h1>'''||unistr('\000a')||
'    || ''You have '' || l_count || '' Open tickets.<br />'''||unistr('\000a')||
'    || ''Select an option from';

s:=s||' the list'');'||unistr('\000a')||
'ELSE'||unistr('\000a')||
'  htp.p(''<h1>Welcome to the APEX Issue Tracking System</h1>'''||unistr('\000a')||
'    || ''Select an option from the list'');'||unistr('\000a')||
'END IF;'||unistr('\000a')||
''||unistr('\000a')||
'END;'||unistr('\000a')||
'';

wwv_flow_api.create_page_plug (
  p_id=> 14319435435779398 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'APEX Issue Tracker',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 14311448951758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_list_template_id=> 14235026373651188+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'DECLARE '||unistr('\000a')||
'  l_sql VARCHAR2(255);'||unistr('\000a')||
'BEGIN'||unistr('\000a')||
'l_sql := l_sql || q''!'||unistr('\000a')||
'SELECT subject,'||unistr('\000a')||
'       created_on,'||unistr('\000a')||
'       assigned_to'||unistr('\000a')||
'  FROM tickets t,'||unistr('\000a')||
'       status_lookup sl'||unistr('\000a')||
' WHERE t.status_id = sl.status_id'||unistr('\000a')||
'   AND sl.status = ''OPEN'''||unistr('\000a')||
'!'';'||unistr('\000a')||
''||unistr('\000a')||
'IF :APP_USER = ''nobody'' THEN'||unistr('\000a')||
'  l_sql := l_sql || q''! AND public_flag = ''Y'' !'';'||unistr('\000a')||
'END IF;'||unistr('\000a')||
''||unistr('\000a')||
'RETURN l_sql;'||unistr('\000a')||
'END;';

wwv_flow_api.create_report_region (
  p_id=> 19057624981018309 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_name=> 'Current Open Issues',
  p_region_name=>'',
  p_template=> 14311448951758126+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 30,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'FUNCTION_RETURNING_SQL_QUERY',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 14313045889758127+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '15',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'NEXT_PREVIOUS_LINKS',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_prn_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19064028122040998 + wwv_flow_api.g_id_offset,
  p_region_id=> 19057624981018309 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'SUBJECT',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Subject',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19064129188040998 + wwv_flow_api.g_id_offset,
  p_region_id=> 19057624981018309 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_ON',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Created On',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19064253467040998 + wwv_flow_api.g_id_offset,
  p_region_id=> 19057624981018309 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'ASSIGNED_TO',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Assigned To',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00002
prompt  ...PAGE 2: Create a Ticket
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 2
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Create a Ticket'
 ,p_step_title => 'Create a Ticket'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20130110192657'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 18930051213366246 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Create a Ticket',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14310554254758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 0,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 18930440692366246 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 10,
  p_button_plug_id => 18930051213366246+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18930237606366246 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 40,
  p_button_plug_id => 18930051213366246+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Create a Ticket',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P2_TICKET_ID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>18930641401366246 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18930825735366247 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_TICKET_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 18930051213366246+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Ticket Id',
  p_source=>'TICKET_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'A brief title for the case.';

wwv_flow_api.create_page_item(
  p_id=>18931052825366247 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_SUBJECT',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 18930051213366246+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Subject',
  p_source=>'SUBJECT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315930195758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Describes the ticket in detail. Please be as complete as you can.';

wwv_flow_api.create_page_item(
  p_id=>18931532796366247 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_DESCR',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 18930051213366246+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Description',
  p_source=>'DESCR',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 50,
  p_cMaxlength=> 4000,
  p_cHeight=> 5,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text=> h,
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18932030523366248 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_CREATED_BY',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 18930051213366246+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Created By',
  p_source=>'CREATED_BY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 20,
  p_cMaxlength=> 50,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315930195758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18932223106366248 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_STATUS_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 18930051213366246+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> 'RETURN get_status(''OPEN'');',
  p_item_default_type=> 'PLSQL_FUNCTION_BODY',
  p_prompt=>'Status',
  p_source=>'STATUS_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 22,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 18934938270637728 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P2_SUBJECT Is NOT NULL',
  p_validation_sequence=> 10,
  p_validation => 'P2_SUBJECT',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '#LABEL# must have some value.',
  p_always_execute=>'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_item=> 18931052825366247 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:TICKETS:P2_TICKET_ID:TICKET_ID';

wwv_flow_api.create_page_process(
  p_id     => 18933229666366249 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from TICKETS',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TICKETS:P2_TICKET_ID:TICKET_ID|I';

wwv_flow_api.create_page_process(
  p_id     => 18933454651366249 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of TICKETS',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'2';

wwv_flow_api.create_page_process(
  p_id     => 18933641087366249 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 2
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00003
prompt  ...PAGE 3: Contact Us
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 3
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Contact Us'
 ,p_step_title => 'Contact Us'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121227105710'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 18935833859835636 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Contact Us',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14310554254758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 18936143853835636 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 20,
  p_button_plug_id => 18935833859835636+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18936032729835636 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 10,
  p_button_plug_id => 18935833859835636+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>18937145635835638 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>18936143853835636+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18936552481835638 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_FROM',
  p_data_type=> '',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 18935833859835636+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'From',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315930195758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18936736590835638 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_BODY',
  p_data_type=> '',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 18935833859835636+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Body',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 80,
  p_cMaxlength=> null,
  p_cHeight=> 5,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315930195758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 19065652534215660 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_name => 'Disable E-Mail body'
 ,p_event_sequence => 10
 ,p_triggering_element_type => 'ITEM'
 ,p_triggering_element => 'P3_FROM'
 ,p_triggering_condition_type => 'NULL'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'keyup'
  );
wwv_flow_api.create_page_da_action (
  p_id => 19065928318215660 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 19065652534215660 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'Y'
 ,p_action => 'NATIVE_DISABLE'
 ,p_affected_elements_type => 'ITEM'
 ,p_affected_elements => 'P3_BODY'
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 19066122621215660 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 19065652534215660 + wwv_flow_api.g_id_offset
 ,p_event_result => 'FALSE'
 ,p_action_sequence => 20
 ,p_execute_on_page_init => 'Y'
 ,p_action => 'NATIVE_ENABLE'
 ,p_affected_elements_type => 'ITEM'
 ,p_affected_elements => 'P3_BODY'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#.CONTACT_US('||unistr('\000a')||
'P_FROM => :P3_FROM,'||unistr('\000a')||
'P_BODY => :P3_BODY);';

wwv_flow_api.create_page_process(
  p_id     => 18936953722835638 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Run Stored Procedure',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>18936143853835636 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Your message has been sent.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 3
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00101
prompt  ...PAGE 101: Login
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 101
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_name => 'Login'
 ,p_alias => 'LOGIN_DESKTOP'
 ,p_step_title => 'Login'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'OFF'
 ,p_step_template => 14308052233758124 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_last_upd_yyyymmddhh24miss => '20121210231648'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 14317945539758130 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14310554254758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>14318041284758131 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 14317945539758130+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Username',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>14318134907758131 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 14317945539758130+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Password',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text=> h,
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>14318248178758131 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 14317945539758130+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default=> 'Login',
  p_prompt=>'Login',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(14316044993758128 + wwv_flow_api.g_id_offset),
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_button_action => 'SUBMIT',
  p_button_is_hot=>'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'apex_authentication.send_login_username_cookie ('||unistr('\000a')||
'    p_username => lower(:P101_USERNAME) );';

wwv_flow_api.create_page_process(
  p_id     => 14318454378758131 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'apex_authentication.login('||unistr('\000a')||
'    p_username => :P101_USERNAME,'||unistr('\000a')||
'    p_password => :P101_PASSWORD );';

wwv_flow_api.create_page_process(
  p_id     => 14318345294758131 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 14318633805758131 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear Page(s) Cache',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||':P101_USERNAME := apex_authentication.get_login_username_cookie;';

wwv_flow_api.create_page_process(
  p_id     => 14318536078758131 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00200
prompt  ...PAGE 200: Tickets
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 200
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Tickets'
 ,p_step_title => 'Tickets'
 ,p_step_sub_title => 'Tickets'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121227151037'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'SELECT '||unistr('\000a')||
'  "TICKETS"."TICKET_ID" "TICKET_ID", '||unistr('\000a')||
'  "TICKETS"."SUBJECT" "SUBJECT", '||unistr('\000a')||
'  "TICKETS"."DESCR" "DESCR", '||unistr('\000a')||
'  "TICKETS"."ASSIGNED_TO" "ASSIGNED_TO", '||unistr('\000a')||
'  "TICKETS"."CREATED_ON"   "CREATED_ON", '||unistr('\000a')||
'  "TICKETS"."CLOSED_ON" "CLOSED_ON", '||unistr('\000a')||
'  "TICKETS"."CREATED_BY" "CREATED_BY", '||unistr('\000a')||
'  "STATUS_LOOKUP"."STATUS" "STATUS",'||unistr('\000a')||
'  LAST_UPDATED,'||unistr('\000a')||
'  PUBLIC_FLAG'||unistr('\000a')||
'FROM '||unistr('\000a')||
'  "STATUS_LOOKUP", '||unistr('\000a')||
'  tickets_secure_v tickets'||unistr('\000a')||
'WHERE "S';

s:=s||'TATUS_LOOKUP"."STATUS_ID" = "TICKETS"."STATUS_ID" '||unistr('\000a')||
'  AND upper(subject) like  ''%'' || upper(:P200_SEARCH) || ''%'''||unistr('\000a')||
'  AND tickets.status_id like :P200_STATUS_ID   ';

wwv_flow_api.create_report_region (
  p_id=> 18939240600576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 200,
  p_name=> 'Tickets',
  p_region_name=>'',
  p_template=> 14311448951758126+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 14313045889758127+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '15',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'Y',
  p_csv_output_link_text=> 'Export to Excel',
  p_query_asc_image=> 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr=> 'width="13" height="12"',
  p_query_desc_image=> 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr=> 'width="13" height="12"',
  p_plug_query_exp_filename=> 'tickets.csv',
  p_plug_query_exp_separator=> ',',
  p_plug_query_exp_enclosed_by=> '"',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18940336922577001 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939240600576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'TICKET_ID',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Edit',
  p_use_as_row_header=> 'N',
  p_column_link=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.::P210_TICKET_ID:#TICKET_ID#',
  p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'N',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'TICKET_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18940538951577001 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939240600576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'SUBJECT',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Subject',
  p_use_as_row_header=> 'N',
  p_column_hit_highlight=>'&P200_SEARCH.',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'SUBJECT',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18940733413577001 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939240600576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'DESCR',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Description',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'DESCR',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18940931473577001 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939240600576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'ASSIGNED_TO',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Assigned To',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'ASSIGNED_TO',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18941147374577001 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939240600576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_ON',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Created On',
  p_use_as_row_header=> 'N',
  p_column_format=> 'fmDay, fmDD fmMonth, YYYY',
  p_column_css_style=>'font-weight:bold ',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'CREATED_ON',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18941347210577001 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939240600576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'CLOSED_ON',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Closed On',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'CLOSED_ON',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18941529806577001 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939240600576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_BY',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Created By',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'CREATED_BY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18960136395709037 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939240600576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'STATUS',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Status',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19056430661568882 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939240600576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'LAST_UPDATED',
  p_column_display_sequence=> 9,
  p_column_heading=> 'Last Updated',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19126348346741815 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939240600576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 10,
  p_form_element_id=> null,
  p_column_alias=> 'PUBLIC_FLAG',
  p_column_display_sequence=> 10,
  p_column_heading=> 'Public Flag',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 18942027035577005 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 200,
  p_button_sequence=> 10,
  p_button_plug_id => 18939240600576861+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:210::',
  p_security_scheme => 19109940925175165+ wwv_flow_api.g_id_offset,
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18981152456501129 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 200,
  p_button_sequence=> 20,
  p_button_plug_id => 18939240600576861+wwv_flow_api.g_id_offset,
  p_button_name    => 'MANAGE_MULTIPLE_TICKETS',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Manage Multiple Tickets',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:230:&SESSION.::&DEBUG.:RP::',
  p_security_scheme => 19109940925175165+ wwv_flow_api.g_id_offset,
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18960830461023815 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 200,
  p_name=>'P200_SEARCH',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 18939240600576861+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Search',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text=> h,
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18960941527069149 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 200,
  p_name=>'P200_GO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 18939240600576861+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Go',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'N',
  p_button_execute_validations=>'Y',
  p_button_action => 'SUBMIT',
  p_button_is_hot=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18998129907273185 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 200,
  p_name=>'P200_STATUS_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 15,
  p_item_plug_id => 18939240600576861+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default=> '%',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Status',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_named_lov=> 'P210_TICKETS_STATUS_ID',
  p_lov=> 'select STATUS d, STATUS_ID v from STATUS_LOOKUP order by 1',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'- All Statuses -',
  p_lov_null_value=> '%',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 18942245661577006 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 200,
  p_computation_sequence => 1,
  p_computation_item=> 'P210_TICKET_ID',
  p_computation_point=> 'AFTER_SUBMIT',
  p_computation_type=> 'STATIC_ASSIGNMENT',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> '',
  p_compute_when => 'CREATE',
  p_compute_when_type=>'REQUEST_EQUALS_CONDITION');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'reset_pagination';

wwv_flow_api.create_page_process(
  p_id     => 18961333048104518 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 200,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'RESET_PAGINATION',
  p_process_name=> 'Reset Pagination',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 200
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00210
prompt  ...PAGE 210: Manage Tickets
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 210
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Manage Tickets'
 ,p_step_title => 'Manage Tickets'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||unistr('\000a')||
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'C'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121227153548'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'SELECT '||unistr('\000a')||
'   "TICKET_DETAILS"."TICKET_DETAILS_ID" "TICKET_DETAILS_ID", '||unistr('\000a')||
'   "TICKET_DETAILS"."TICKET_ID" "TICKET_ID", '||unistr('\000a')||
'   "TICKET_DETAILS"."DETAILS" "DETAILS", '||unistr('\000a')||
'   "TICKET_DETAILS"."CREATED_ON" "CREATED_ON", '||unistr('\000a')||
'   "TICKET_DETAILS"."CREATED_BY" "CREATED_BY",'||unistr('\000a')||
'   dbms_lob.getlength("ATTACHMENT") "ATTACHMENT"'||unistr('\000a')||
'FROM '||unistr('\000a')||
'   "TICKET_DETAILS"'||unistr('\000a')||
'WHERE (("TICKET_DETAILS"."TICKET_ID" = :P210_TICKET_ID))';

wwv_flow_api.create_report_region (
  p_id=> 18939344189576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 210,
  p_name=> 'Ticket Details',
  p_region_name=>'',
  p_template=> 14311448951758126+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_when_condition=> 'P210_TICKET_ID',
  p_display_condition_type=> 'ITEM_IS_NOT_NULL',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 14313045889758127+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '15',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_query_asc_image=> 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr=> 'width="13" height="12"',
  p_query_desc_image=> 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr=> 'width="13" height="12"',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18951840520577024 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939344189576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'TICKET_DETAILS_ID',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Edit',
  p_column_link=>'f?p=#APP_ID#:220:#APP_SESSION#::::P220_TICKET_DETAILS_ID:#TICKET_DETAILS_ID#',
  p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKET_DETAILS',
  p_ref_column_name=> 'TICKET_DETAILS_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18952045462577025 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939344189576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'TICKET_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Ticket Id',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKET_DETAILS',
  p_ref_column_name=> 'TICKET_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18952241668577025 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939344189576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'DETAILS',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Details',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKET_DETAILS',
  p_ref_column_name=> 'DETAILS',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18952637648577025 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939344189576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_ON',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Created On',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKET_DETAILS',
  p_ref_column_name=> 'CREATED_ON',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18952423220577025 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939344189576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_BY',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Created By',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKET_DETAILS',
  p_ref_column_name=> 'CREATED_BY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18952835464577025 + wwv_flow_api.g_id_offset,
  p_region_id=> 18939344189576861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'ATTACHMENT',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Attachment',
  p_use_as_row_header=> 'N',
  p_column_format=> 'DOWNLOAD:TICKET_DETAILS:ATTACHMENT:TICKET_DETAILS_ID::MIME_TYPE:FILE_NAME:::Attachment:Download',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKET_DETAILS',
  p_ref_column_name=> 'ATTACHMENT',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 18942835532577008 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 210,
  p_plug_name=> 'Manage Tickets',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14311448951758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 0,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'Help Text';

wwv_flow_api.create_page_plug (
  p_id=> 18969523246586793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 210,
  p_plug_name=> 'Help',
  p_region_name=>'',
  p_parent_plug_id=>18942835532577008 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 14310640042758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'HELP_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 18943145016577008 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 210,
  p_button_sequence=> 30,
  p_button_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P210_TICKET_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_security_scheme => 19109940925175165+ wwv_flow_api.g_id_offset,
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18948436053577019 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 210,
  p_button_sequence=> 50,
  p_button_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_button_name    => 'GET_PREVIOUS_TICKET_ID',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> '&lt;',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:htmldb_goSubmit(''GET_PREVIOUS_TICKET_ID'')',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P210_TICKET_ID_PREV',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18948325082577019 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 210,
  p_button_sequence=> 60,
  p_button_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_button_name    => 'GET_NEXT_TICKET_ID',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> '&gt;',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:htmldb_goSubmit(''GET_NEXT_TICKET_ID'')',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P210_TICKET_ID_NEXT',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18943425701577008 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 210,
  p_button_sequence=> 10,
  p_button_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18953429743577028 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 210,
  p_button_sequence=> 10,
  p_button_plug_id => 18939344189576861+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:220:&SESSION.::&DEBUG.:220:P220_TICKET_ID:&P210_TICKET_ID.',
  p_security_scheme => 19109940925175165+ wwv_flow_api.g_id_offset,
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18943036727577008 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 210,
  p_button_sequence=> 40,
  p_button_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P210_TICKET_ID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_security_scheme => 19109940925175165+ wwv_flow_api.g_id_offset,
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18943222445577008 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 210,
  p_button_sequence=> 20,
  p_button_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''DELETE'');',
  p_button_execute_validations=>'N',
  p_button_condition=> 'P210_TICKET_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_security_scheme => 19109940925175165+ wwv_flow_api.g_id_offset,
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>18944329998577009 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:200:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 30,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>18950936430577023 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:210:&SESSION.::&DEBUG.::P210_TICKET_ID:&P210_TICKET_ID_NEXT.',
  p_branch_point=> 'BEFORE_COMPUTATION',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>18948325082577019+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'This button is needed for Get Next or Previous Primary Key Value process.');
 
wwv_flow_api.create_page_branch(
  p_id=>18951150452577023 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:210:&SESSION.::&DEBUG.::P210_TICKET_ID:&P210_TICKET_ID_PREV.',
  p_branch_point=> 'BEFORE_COMPUTATION',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>18948436053577019+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 20,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'This button is needed for Get Next or Previous Primary Key Value process.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18944530906577010 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_TICKET_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Ticket Id',
  p_source=>'TICKET_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_protection_level => 'S',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'A brief title for the case.';

wwv_flow_api.create_page_item(
  p_id=>18944749519577015 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_SUBJECT',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Subject',
  p_source=>'SUBJECT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 4,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when=>'RETURN NOT APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(''access control - edit'');',
  p_read_only_when_type=>'FUNCTION_BODY',
  p_field_template=> 14315930195758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Describes the ticket in detail. Please be as complete as you can.';

wwv_flow_api.create_page_item(
  p_id=>18945241926577015 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_DESCR',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Description',
  p_source=>'DESCR',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 50,
  p_cMaxlength=> 4000,
  p_cHeight=> 5,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 4,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when=>'RETURN NOT APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(''access control - edit'');',
  p_read_only_when_type=>'FUNCTION_BODY',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18945752198577016 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_ASSIGNED_TO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Assigned To',
  p_source=>'ASSIGNED_TO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_named_lov=> 'TECHS',
  p_lov=> '.'||to_char(14322337224087299 + wwv_flow_api.g_id_offset)||'.',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'- Select a Tech -',
  p_lov_null_value=> '',
  p_cSize=> 60,
  p_cMaxlength=> 50,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_new_grid=> true,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when=>'RETURN NOT APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(''access control - edit'');',
  p_read_only_when_type=>'FUNCTION_BODY',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18945928799577016 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_CREATED_ON',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> 'SYSDATE',
  p_item_default_type=> 'PLSQL_EXPRESSION',
  p_prompt=>'Created On',
  p_source=>'CREATED_ON',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_DATE_PICKER',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template=> 14315930195758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_04 => 'button',
  p_attribute_05 => 'N',
  p_attribute_07 => 'NONE',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18946137104577016 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_CLOSED_ON',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 140,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Closed On',
  p_source=>'CLOSED_ON',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_DATE_PICKER',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 12,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)" readonly="readonly"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when=>'RETURN NOT APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(''access control - edit'');',
  p_read_only_when_type=>'FUNCTION_BODY',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_04 => 'button',
  p_attribute_05 => 'N',
  p_attribute_07 => 'NONE',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18946354168577016 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_CREATED_BY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Created By',
  p_source=>'CREATED_BY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_named_lov=> 'USERS',
  p_lov=> 'SELECT DISTINCT'||unistr('\000a')||
'  INITCAP(created_by) d,'||unistr('\000a')||
'  created_by r'||unistr('\000a')||
'FROM'||unistr('\000a')||
'  tickets'||unistr('\000a')||
'ORDER BY'||unistr('\000a')||
'  created_by',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 50,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when=>'RETURN NOT APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(''access control - edit'');',
  p_read_only_when_type=>'FUNCTION_BODY',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18946554168577016 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_STATUS_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 200,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Status',
  p_source=>'STATUS_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_named_lov=> 'P210_TICKETS_STATUS_ID',
  p_lov=> 'select STATUS d, STATUS_ID v from STATUS_LOOKUP order by 1',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 22,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when=>'RETURN NOT APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(''access control - edit'');',
  p_read_only_when_type=>'FUNCTION_BODY',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18949932072577020 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_TICKET_ID_NEXT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 230,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_prompt=>'P210_TICKET_ID_NEXT',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_item_comment => 'This item is needed for Get Next or Previous Primary Key Value process.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18950126910577020 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_TICKET_ID_PREV',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 240,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_prompt=>'P210_TICKET_ID_PREV',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_item_comment => 'This item is needed for Get Next or Previous Primary Key Value process.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18950329514577021 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_TICKET_ID_COUNT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 250,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'class="fielddata"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'VALUE',
  p_item_comment => 'This item is needed for Get Next or Previous Primary Key Value process.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>19054434562278411 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_DAYS_OPEN',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Days Open',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_display_when=>'P210_TICKET_ID',
  p_display_when_type=>'ITEM_IS_NOT_NULL',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>19057040703944188 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_name=>'P210_PUBLIC_FLAG',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 210,
  p_item_plug_id => 18942835532577008+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> 'N',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Public Flag',
  p_source=>'PUBLIC_FLAG',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_RADIOGROUP',
  p_lov=> 'STATIC:Y,N',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_read_only_when=>'RETURN NOT APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(''access control - edit'');',
  p_read_only_when_type=>'FUNCTION_BODY',
  p_field_template=> 14315930195758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => '2',
  p_attribute_02 => 'NONE',
  p_attribute_04 => 'VERTICAL',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 18953633057577028 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_computation_sequence => 1,
  p_computation_item=> 'P220_TICKET_DETAILS_ID',
  p_computation_point=> 'AFTER_SUBMIT',
  p_computation_type=> 'STATIC_ASSIGNMENT',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> '',
  p_compute_when => 'CREATE',
  p_compute_when_type=>'REQUEST_EQUALS_CONDITION');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 19054737963337615 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 210,
  p_computation_sequence => 11,
  p_computation_item=> 'P210_DAYS_OPEN',
  p_computation_point=> 'BEFORE_HEADER',
  p_computation_type=> 'QUERY',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> 'SELECT'||unistr('\000a')||
'  DECODE(status, ''CLOSED'', closed, open_or_pending) days_open'||unistr('\000a')||
'FROM'||unistr('\000a')||
'  ('||unistr('\000a')||
'  SELECT'||unistr('\000a')||
'    ROUND(sysdate - t.created_on) open_or_pending,'||unistr('\000a')||
'    NVL(ROUND(t.closed_on - t.created_on),0) closed,'||unistr('\000a')||
'    sl.status status'||unistr('\000a')||
'  FROM'||unistr('\000a')||
'    tickets t,'||unistr('\000a')||
'    status_lookup sl'||unistr('\000a')||
'  WHERE'||unistr('\000a')||
'    t.status_id = sl.status_id'||unistr('\000a')||
'    and t.ticket_id = :P210_TICKET_ID)',
  p_compute_when => '',
  p_compute_when_type=>'');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 19050635858214341 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 210,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P210_CLOSED_ON',
  p_validation_sequence=> 10,
  p_validation => 'P210_CLOSED_ON',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Please enter a value for #LABEL#.',
  p_always_execute=>'N',
  p_validation_condition=> 'IF :P210_STATUS_ID = get_status(''CLOSED'') THEN'||unistr('\000a')||
'  RETURN TRUE;'||unistr('\000a')||
'ELSE'||unistr('\000a')||
'  RETURN FALSE;'||unistr('\000a')||
'END IF;',
  p_validation_condition_type=> 'FUNCTION_BODY',
  p_only_for_changed_rows=> 'Y',
  p_associated_item=> 18946137104577016 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 19050834921305916 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 210,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'Closed Date must be After Creation Date ',
  p_validation_sequence=> 20,
  p_validation => 'IF TO_DATE(:P210_CREATED_ON,''DD-MON-YYYY'') > '||unistr('\000a')||
'  TO_DATE(:P210_CLOSED_ON,''DD-MON-YYYY'') '||unistr('\000a')||
'THEN'||unistr('\000a')||
'  RETURN FALSE;'||unistr('\000a')||
'ELSE'||unistr('\000a')||
'  RETURN TRUE;'||unistr('\000a')||
'END IF;',
  p_validation_type => 'FUNC_BODY_RETURNING_BOOLEAN',
  p_error_message => 'Closed On Date must be Later than the Created Date.',
  p_always_execute=>'N',
  p_only_for_changed_rows=> 'Y',
  p_error_display_location=>'INLINE_IN_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:TICKETS:P210_TICKET_ID:TICKET_ID';

wwv_flow_api.create_page_process(
  p_id     => 18947826800577018 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 210,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from TICKETS',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TICKETS_SECURE_V:TICKET_ID::CREATED_ON::P210_TICKET_ID:P210_TICKET_ID_NEXT:P210_TICKET_ID_PREV::::P210_TICKET_ID_COUNT:';

wwv_flow_api.create_page_process(
  p_id     => 18950740222577022 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 210,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'GET_NEXT_OR_PREV_PK',
  p_process_name=> 'Get Next or Previous Primary Key Value',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TICKETS:P210_TICKET_ID:TICKET_ID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 18948046187577018 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 210,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of TICKETS',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'210';

wwv_flow_api.create_page_process(
  p_id     => 18948243470577019 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 210,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>18943222445577008 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'UPDATE tickets SET last_updated = sysdate '||unistr('\000a')||
'  WHERE ticket_id = :P210_TICKET_ID;';

wwv_flow_api.create_page_process(
  p_id     => 19056143016550506 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 210,
  p_process_sequence=> 50,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Last Processed ',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>18943145016577008 + wwv_flow_api.g_id_offset,
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 210
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00220
prompt  ...PAGE 220: Ticket Details
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 220
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Ticket Details'
 ,p_step_title => 'Ticket Details'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_page_is_public_y_n => 'N'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121227150252'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 18954226561577028 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 220,
  p_plug_name=> 'Ticket Details',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14311448951758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 0,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 18954550826577028 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 220,
  p_button_sequence=> 30,
  p_button_plug_id => 18954226561577028+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P220_TICKET_DETAILS_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_security_scheme => 19109940925175165+ wwv_flow_api.g_id_offset,
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18954834174577029 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 220,
  p_button_sequence=> 10,
  p_button_plug_id => 18954226561577028+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18954423223577028 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 220,
  p_button_sequence=> 40,
  p_button_plug_id => 18954226561577028+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P220_TICKET_DETAILS_ID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_security_scheme => 19109940925175165+ wwv_flow_api.g_id_offset,
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18954626437577028 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 220,
  p_button_sequence=> 20,
  p_button_plug_id => 18954226561577028+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''DELETE'');',
  p_button_execute_validations=>'N',
  p_button_condition=> 'P220_TICKET_DETAILS_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_security_scheme => 19109940925175165+ wwv_flow_api.g_id_offset,
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>18955427257577029 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 220,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:210:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18955624922577030 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 220,
  p_name=>'P220_TICKET_DETAILS_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 18954226561577028+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Ticket Details Id',
  p_source=>'TICKET_DETAILS_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18955834357577030 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 220,
  p_name=>'P220_TICKET_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 18954226561577028+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Ticket Id',
  p_source=>'TICKET_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 22,
  p_cHeight=> 1,
  p_cattributes_element=>'class="fielddatabold"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315930195758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18956054167577030 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 220,
  p_name=>'P220_DETAILS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 18954226561577028+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Details',
  p_source=>'DETAILS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 4000,
  p_cHeight=> 5,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when=>'RETURN NOT APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(''access control - edit'');',
  p_read_only_when_type=>'FUNCTION_BODY',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18956237555577030 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 220,
  p_name=>'P220_CREATED_BY',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 18954226561577028+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Created By',
  p_source=>'CREATED_BY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_named_lov=> 'TECHS',
  p_lov=> '.'||to_char(14322337224087299 + wwv_flow_api.g_id_offset)||'.',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'- Select a Tech -',
  p_lov_null_value=> '',
  p_cSize=> 60,
  p_cMaxlength=> 50,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when=>'RETURN NOT APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(''access control - edit'');',
  p_read_only_when_type=>'FUNCTION_BODY',
  p_field_template=> 14315930195758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18956452986577031 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 220,
  p_name=>'P220_CREATED_ON',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 18954226561577028+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> 'SYSDATE',
  p_item_default_type=> 'PLSQL_EXPRESSION',
  p_prompt=>'Created On',
  p_source=>'CREATED_ON',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_DATE_PICKER',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_04 => 'button',
  p_attribute_05 => 'N',
  p_attribute_07 => 'NONE',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'NEED HELP TEXT';

wwv_flow_api.create_page_item(
  p_id=>18956623381577031 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 220,
  p_name=>'P220_ATTACHMENT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 18954226561577028+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Attachment',
  p_source=>'ATTACHMENT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_FILE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when=>'RETURN NOT APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(''access control - edit'');',
  p_read_only_when_type=>'FUNCTION_BODY',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'DB_COLUMN',
  p_attribute_02 => 'MIME_TYPE',
  p_attribute_03 => 'FILE_NAME',
  p_attribute_06 => 'Y',
  p_attribute_07 => 'Download',
  p_attribute_08 => 'attachment',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:TICKET_DETAILS:P220_TICKET_DETAILS_ID:TICKET_DETAILS_ID';

wwv_flow_api.create_page_process(
  p_id     => 18957542888577032 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 220,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from TICKET_DETAILS',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TICKET_DETAILS:P220_TICKET_DETAILS_ID:TICKET_DETAILS_ID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 18957747880577032 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 220,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of TICKET_DETAILS',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'220';

wwv_flow_api.create_page_process(
  p_id     => 18957954279577032 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 220,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>18954626437577028 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 220
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00230
prompt  ...PAGE 230: Manage Multiple Tickets
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 230
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Manage Multiple Tickets'
 ,p_step_title => 'Manage Multiple Tickets'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_required_role => 19109940925175165 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121227151154'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||unistr('\000a')||
'"TICKET_ID",'||unistr('\000a')||
'"TICKET_ID" TICKET_ID_DISPLAY,'||unistr('\000a')||
'"SUBJECT",'||unistr('\000a')||
'"DESCR",'||unistr('\000a')||
'"ASSIGNED_TO",'||unistr('\000a')||
'"CREATED_ON",'||unistr('\000a')||
'"CLOSED_ON",'||unistr('\000a')||
'"CREATED_BY",'||unistr('\000a')||
'"STATUS_ID"'||unistr('\000a')||
'from "#OWNER#".tickets_secure_v'||unistr('\000a')||
'';

wwv_flow_api.create_report_region (
  p_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 230,
  p_name=> 'Manage Multiple Tickets',
  p_region_name=>'',
  p_template=> 14311448951758126+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 14313045889758127+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18980038567246920 + wwv_flow_api.g_id_offset,
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Select Row',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18976542296246905 + wwv_flow_api.g_id_offset,
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'TICKET_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Ticket Id',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'TICKET_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18976626537246906 + wwv_flow_api.g_id_offset,
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'TICKET_ID_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Ticket Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'TICKET_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18976723443246906 + wwv_flow_api.g_id_offset,
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'SUBJECT',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Subject',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXTAREA',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_column_height=> '3',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'SUBJECT',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18976844577246906 + wwv_flow_api.g_id_offset,
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'DESCR',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Description',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXTAREA',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '20',
  p_column_height=> '3',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'DESCR',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18976926150246906 + wwv_flow_api.g_id_offset,
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'ASSIGNED_TO',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Assigned To',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_LOV',
  p_named_lov=>14322337224087299 + wwv_flow_api.g_id_offset,
  p_lov_show_nulls=> 'YES',
  p_lov_null_text=> '- Select a Tech -',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'NO',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'ASSIGNED_TO',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18977037815246906 + wwv_flow_api.g_id_offset,
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_ON',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Created On',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'DATE_PICKER',
  p_column_width=> '12',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'CREATED_ON',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18977153478246906 + wwv_flow_api.g_id_offset,
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'CLOSED_ON',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Closed On',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'DATE_PICKER',
  p_column_width=> '12',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'CLOSED_ON',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18977231401246906 + wwv_flow_api.g_id_offset,
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_BY',
  p_column_display_sequence=> 9,
  p_column_heading=> 'Created By',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_LOV',
  p_named_lov=>14324437857097925 + wwv_flow_api.g_id_offset,
  p_lov_show_nulls=> 'YES',
  p_lov_null_text=> '- Select a User -',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'NO',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'CREATED_BY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 18977343547246906 + wwv_flow_api.g_id_offset,
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 10,
  p_form_element_id=> null,
  p_column_alias=> 'STATUS_ID',
  p_column_display_sequence=> 10,
  p_column_heading=> 'Status',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_LOV',
  p_named_lov=>18977445747246911 + wwv_flow_api.g_id_offset,
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_default=> 'get_status (''OPEN'') ',
  p_column_default_type=> 'FUNCTION',
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'TICKETS',
  p_ref_column_name=> 'STATUS_ID',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 18977737027246913 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 230,
  p_button_sequence=> 30,
  p_button_plug_id => 18976248205246902+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Save Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18977938595246913 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 230,
  p_button_sequence=> 40,
  p_button_plug_id => 18976248205246902+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Add Tickets',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.widget.tabular.addRow();',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18977631502246913 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 230,
  p_button_sequence=> 10,
  p_button_plug_id => 18976248205246902+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18977847394246913 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 230,
  p_button_sequence=> 20,
  p_button_plug_id => 18976248205246902+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>18980150367246920 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 230,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:230:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 18978735848246917 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 230,
  p_tabular_form_region_id => 18976248205246902 + wwv_flow_api.g_id_offset,
  p_validation_name => 'SUBJECT not null',
  p_validation_sequence=> 30,
  p_validation => 'SUBJECT',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 18977737027246913 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'SUBJECT',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 18978953353246918 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 230,
  p_tabular_form_region_id => 18976248205246902 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CREATED_ON not null',
  p_validation_sequence=> 60,
  p_validation => 'CREATED_ON',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 18977737027246913 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'CREATED_ON',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 18979127482246918 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 230,
  p_tabular_form_region_id => 18976248205246902 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CREATED_ON must be a valid date',
  p_validation_sequence=> 60,
  p_validation => 'CREATED_ON',
  p_validation_type => 'ITEM_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 18977737027246913 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'CREATED_ON',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 18979345498246918 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 230,
  p_tabular_form_region_id => 18976248205246902 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CLOSED_ON must be a valid date',
  p_validation_sequence=> 70,
  p_validation => 'CLOSED_ON',
  p_validation_type => 'ITEM_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 18977737027246913 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'CLOSED_ON',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 18979543104246918 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 230,
  p_tabular_form_region_id => 18976248205246902 + wwv_flow_api.g_id_offset,
  p_validation_name => 'STATUS_ID must be numeric',
  p_validation_sequence=> 90,
  p_validation => 'STATUS_ID',
  p_validation_type => 'ITEM_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 18977737027246913 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'STATUS_ID',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 19051637181973323 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 230,
  p_tabular_form_region_id => 18976248205246902 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CLOSED_ON is Not Null if Ticket is CLOSED',
  p_validation_sequence=> 100,
  p_validation => 'CLOSED_ON',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must be enter if Status is CLOSED. ',
  p_always_execute=>'N',
  p_validation_condition=> 'IF :STATUS_ID = get_status(''CLOSED'') THEN'||unistr('\000a')||
'  RETURN TRUE;'||unistr('\000a')||
'ELSE'||unistr('\000a')||
'  RETURN FALSE;'||unistr('\000a')||
'END IF;',
  p_validation_condition_type=> 'FUNCTION_BODY',
  p_exec_cond_for_each_row=> 'Y',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'CLOSED_ON',
  p_error_display_location=>'INLINE_IN_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TICKETS:TICKET_ID';

wwv_flow_api.create_page_process(
  p_id     => 18979630274246918 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 230,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>18977737027246913 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TICKETS:TICKET_ID';

wwv_flow_api.create_page_process(
  p_id     => 18979824496246919 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 230,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_region_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 230
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19126631741749516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'TICKET_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19126731247749516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'TICKET_ID_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19126829879749516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'SUBJECT',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19126933067749516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 4,
  p_query_column_name=> 'DESCR',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19127050657749516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 5,
  p_query_column_name=> 'ASSIGNED_TO',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19127128305749516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 6,
  p_query_column_name=> 'CREATED_ON',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19127254909749516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 7,
  p_query_column_name=> 'CLOSED_ON',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19127346518749516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 8,
  p_query_column_name=> 'CREATED_BY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19127438588749516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 18976248205246902 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 9,
  p_query_column_name=> 'STATUS_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00300
prompt  ...PAGE 300: Analysis
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 300
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Analysis'
 ,p_step_title => 'Analysis'
 ,p_step_sub_title => 'Analysis'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121221103605'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select * from tickets_v';

wwv_flow_api.create_page_plug (
  p_id=> 18982131182588599 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_plug_name=> 'Analysis',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14311052253758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select * from tickets_v';

wwv_flow_api.create_worksheet(
  p_id=> 18982226102588599+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_region_id=> 18982131182588599+wwv_flow_api.g_id_offset,
  p_name=> 'Analysis',
  p_folder_id=> null, 
  p_alias=> '',
  p_report_id_item=> '',
  p_max_row_count=> '1000000',
  p_max_row_count_message=> 'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.',
  p_no_data_found_message=> 'No data found.',
  p_max_rows_per_page=>'',
  p_search_button_label=>'',
  p_sort_asc_image=>'',
  p_sort_asc_image_attr=>'',
  p_sort_desc_image=>'',
  p_sort_desc_image_attr=>'',
  p_sql_query => a1,
  p_status=>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving=>'N',
  p_allow_save_rpt_public=>'Y',
  p_allow_report_categories=>'N',
  p_show_nulls_as=>'-',
  p_pagination_type=>'ROWS_X_TO_Y',
  p_pagination_display_pos=>'BOTTOM_RIGHT',
  p_show_finder_drop_down=>'Y',
  p_show_display_row_count=>'N',
  p_show_search_bar=>'Y',
  p_show_search_textbox=>'Y',
  p_show_actions_menu=>'Y',
  p_report_list_mode=>'TABS',
  p_show_detail_link=>'C',
  p_show_select_columns=>'Y',
  p_show_rows_per_page=>'Y',
  p_show_filter=>'Y',
  p_show_sort=>'Y',
  p_show_control_break=>'Y',
  p_show_highlight=>'Y',
  p_show_computation=>'Y',
  p_show_aggregate=>'Y',
  p_show_chart=>'Y',
  p_show_group_by=>'Y',
  p_show_notify=>'Y',
  p_show_calendar=>'N',
  p_show_flashback=>'N',
  p_show_reset=>'Y',
  p_show_download=>'Y',
  p_show_help=>'Y',
  p_download_formats=>'CSV:HTML:EMAIL:PDF',
  p_download_filename=>'tickets.csv',
  p_csv_output_separator=>',',
  p_csv_output_enclosed_by=>'"',
  p_detail_link=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.::P210_TICKET_ID:#TICKET_ID#',
  p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />',
  p_allow_exclude_null_values=>'N',
  p_allow_hide_extra_columns=>'N',
  p_icon_view_enabled_yn=>'N',
  p_icon_view_use_custom=>'N',
  p_icon_view_columns_per_row=>1,
  p_detail_view_enabled_yn=>'N',
  p_owner=>'ADMIN',
  p_internal_uid=> 9417303703392873);
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 18982431766588615+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_worksheet_id => 18982226102588599+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'TICKET_ID',
  p_display_order          =>1,
  p_column_identifier      =>'A',
  p_column_label           =>'Ticket Id',
  p_report_label           =>'Ticket Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 18982544089588616+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_worksheet_id => 18982226102588599+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'SUBJECT',
  p_display_order          =>2,
  p_column_identifier      =>'B',
  p_column_label           =>'Subject',
  p_report_label           =>'Subject',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 18982628831588617+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_worksheet_id => 18982226102588599+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'DESCRIPTION',
  p_display_order          =>3,
  p_column_identifier      =>'C',
  p_column_label           =>'Description',
  p_report_label           =>'Description',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'N',
  p_allow_filtering        =>'N',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 18982746135588617+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_worksheet_id => 18982226102588599+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ASSIGNED_TO',
  p_display_order          =>4,
  p_column_identifier      =>'D',
  p_column_label           =>'Assigned To',
  p_report_label           =>'Assigned To',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 18982826861588617+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_worksheet_id => 18982226102588599+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CREATED_ON',
  p_display_order          =>5,
  p_column_identifier      =>'E',
  p_column_label           =>'Created On',
  p_report_label           =>'Created On',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'DATE',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 18982930830588617+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_worksheet_id => 18982226102588599+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CREATED_BY',
  p_display_order          =>6,
  p_column_identifier      =>'F',
  p_column_label           =>'Created By',
  p_report_label           =>'Created By',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 18983038050588617+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_worksheet_id => 18982226102588599+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CLOSED_ON',
  p_display_order          =>7,
  p_column_identifier      =>'G',
  p_column_label           =>'Closed On',
  p_report_label           =>'Closed On',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'DATE',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 18983132360588617+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_worksheet_id => 18982226102588599+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'STATUS',
  p_display_order          =>8,
  p_column_identifier      =>'H',
  p_column_label           =>'Status',
  p_report_label           =>'Status',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 18983236851588617+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_worksheet_id => 18982226102588599+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'NUMBER_OF_DETAILS',
  p_display_order          =>9,
  p_column_identifier      =>'I',
  p_column_label           =>'Number Of Details',
  p_report_label           =>'Number Of Details',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
declare
    rc1 varchar2(32767) := null;
begin
rc1:=rc1||'SUBJECT:STATUS:DESCRIPTION:ASSIGNED_TO:CREATED_ON:CREATED_BY:CLOSED_ON:NUMBER_OF_DETAILS:';

wwv_flow_api.create_worksheet_rpt(
  p_id => 18983345801593892+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_worksheet_id => 18982226102588599+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_report_alias            =>'94185',
  p_status                  =>'PUBLIC',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>15,
  p_report_columns          =>rc1,
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
declare
    rc1 varchar2(32767) := null;
begin
rc1:=rc1||'TICKET_ID:SUBJECT:DESCRIPTION:ASSIGNED_TO:CREATED_ON:CREATED_BY:CLOSED_ON:STATUS:NUMBER_OF_DETAILS';

wwv_flow_api.create_worksheet_rpt(
  p_id => 18986345415758593+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 300,
  p_worksheet_id => 18982226102588599+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_ALTERNATIVE',
  p_name                    =>'Tickets by Status',
  p_report_seq              =>10,
  p_report_alias            =>'94215',
  p_status                  =>'PUBLIC',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>15,
  p_report_columns          =>rc1,
  p_break_on                =>'STATUS:0:0:0:0:0',
  p_break_enabled_on        =>'STATUS:0:0:0:0:0',
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 300
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00400
prompt  ...PAGE 400: Ticket Activity Calendar
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 400
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Ticket Activity Calendar'
 ,p_step_title => 'Ticket Activity Calendar'
 ,p_step_sub_title => 'Ticket Activity Calendar'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121227151614'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select * from tickets_secure_v';

wwv_flow_api.create_calendar (
  p_id=> 18992029512812112 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 400,
  p_plug_name=> 'Ticket Activity Calendar',
  p_region_name=>'',
  p_plug_source=> s,
  p_plug_source_type  => 'CALENDAR',
  p_plug_template=> 14311448951758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column  => null,
  p_plug_display_point   => 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_display_condition_type => '',
  p_plug_display_when_condition => '',
  p_plug_display_when_cond2=>'',
  p_plug_read_only_when_type => '',
  p_plug_read_only_when => '',
  p_plug_read_only_when2 =>'',
  p_plug_caching => 'NOT_CACHED',
  p_plug_header=> '',
  p_plug_footer=> '',
  p_plug_override_reg_pos=>'',
  p_plug_customized=>'0',
  p_plug_customized_name=>'',
  p_translate_title=>'Y',
  p_rest_enabled=>'',
  p_plug_comment=> '',
  p_cal_id=>18992745445812113 + wwv_flow_api.g_id_offset,
  p_start_date=>'',
  p_end_date=>'',
  p_begin_at_start_of_interval=>'Y',
  p_date_item=>'P400_CALENDAR_DATE',
  p_display_as=>'M',
  p_display_item=>'P400_CALENDAR_DISPLAY',
  p_display_type=>'CUS',
  p_item_format=>'<ul><li>#SUBJECT#</li></ul>',
  p_easy_sql_owner=>'',
  p_easy_sql_table=>'TICKETS',
  p_date_column=>'CREATED_ON',
  p_end_date_column=>'',
  p_display_column=>'',
  p_start_of_week=>'19721105',
  p_day_link=>'',
  p_item_link=>'f?p=&FLOW_ID.:210:&SESSION.::&DEBUG.:210:P210_TICKET_ID,P210_CREATED_ON:#PRIMARY_KEY_VALUE#,#DATE_VALUE#',
  p_start_time=>'7',
  p_end_time=>'19',
  p_time_format=>'12HOUR',
  p_week_start_day=>'19721105',
  p_week_end_day=>'19721111',
  p_date_type_column=>'P400_CALENDAR_TYPE',
  p_end_date_item=>'P400_CALENDAR_END_DATE',
  p_include_custom_cal=>'N',
  p_custom_cal_days=>3,
  p_primary_key_column=>'TICKET_ID',
  p_data_background_color=>'',
  p_item_link_primary_key_item=>'P210_TICKET_ID',
  p_item_link_date_item=>'P210_CREATED_ON',
  p_item_link_open_in=>'W',
  p_include_time_with_date=>'N',
  p_data_text_color=>'',
  p_agenda_cal_days_type=>'MONTH',
  p_agenda_cal_days=>30,
  p_calendar_type=>'A',
  p_template_id=>14317040584758128 + wwv_flow_api.g_id_offset,
  p_calendar_comments=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 18993545826812113 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 400,
  p_button_sequence=> 10,
  p_button_plug_id => 18992029512812112+wwv_flow_api.g_id_offset,
  p_button_name    => 'MONTHLY',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Monthly',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.widget.calendar.ajax_calendar(''M'',''same''); void(0);',
  p_button_condition=> 'NVL(:P400_CALENDAR_TYPE, ''M'') <> ''M''',
  p_button_comment=>'Generated 12/21/2012',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18993735870812113 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 400,
  p_button_sequence=> 20,
  p_button_plug_id => 18992029512812112+wwv_flow_api.g_id_offset,
  p_button_name    => 'WEEKLY',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Weekly',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.widget.calendar.ajax_calendar(''W'',''same''); void(0);',
  p_button_execute_validations=>'Y',
  p_button_comment=>'Generated 12/21/2012',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18993946811812114 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 400,
  p_button_sequence=> 30,
  p_button_plug_id => 18992029512812112+wwv_flow_api.g_id_offset,
  p_button_name    => 'DAILY',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Daily',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.widget.calendar.ajax_calendar(''D'',''same''); void(0);',
  p_button_execute_validations=>'Y',
  p_button_comment=>'Generated 12/21/2012',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18994132718812114 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 400,
  p_button_sequence=> 40,
  p_button_plug_id => 18992029512812112+wwv_flow_api.g_id_offset,
  p_button_name    => 'LISTVIEW',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'List',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.widget.calendar.ajax_calendar(''A'',''same''); void(0);',
  p_button_condition=> 'P400_CALENDAR_TYPE',
  p_button_condition2=> 'A',
  p_button_comment=>'Generated 12/21/2012',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18994322410812114 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 400,
  p_button_sequence=> 50,
  p_button_plug_id => 18992029512812112+wwv_flow_api.g_id_offset,
  p_button_name    => 'PREVIOUS',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> '< Previous',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.widget.calendar.ajax_calendar(''S'',''previous''); void(0);',
  p_button_comment=>'Generated 12/21/2012',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18994545293812114 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 400,
  p_button_sequence=> 60,
  p_button_plug_id => 18992029512812112+wwv_flow_api.g_id_offset,
  p_button_name    => 'TODAY',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Today',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.widget.calendar.ajax_calendar(''S'',''today''); void(0);',
  p_button_comment=>'Generated 12/21/2012',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 18994724367812114 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 400,
  p_button_sequence=> 70,
  p_button_plug_id => 18992029512812112+wwv_flow_api.g_id_offset,
  p_button_name    => 'NEXT',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Next >',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.widget.calendar.ajax_calendar(''S'',''next''); void(0);',
  p_button_comment=>'Generated 12/21/2012',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18993028621812113 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 400,
  p_name=>'P400_CALENDAR_TYPE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 18992029512812112+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'P400_CALENDAR_DISPLAY',
  p_source=>'P400_CALENDAR_TYPE',
  p_source_type=> 'ITEM',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_item_comment => 'Generated by Calendar wizard on 12/21/2012');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18993238001812113 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 400,
  p_name=>'P400_CALENDAR_DATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 18992029512812112+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> 'return sysdate;',
  p_item_default_type=> 'PLSQL_FUNCTION_BODY',
  p_prompt=>'Start Date',
  p_source=>'P400_CALENDAR_DATE',
  p_source_type=> 'ITEM',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_item_comment => 'Generated by Calendar wizard on 12/21/2012');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>18993427656812113 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 400,
  p_name=>'P400_CALENDAR_END_DATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 18992029512812112+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> 'return sysdate+3;',
  p_item_default_type=> 'PLSQL_FUNCTION_BODY',
  p_prompt=>'End Date',
  p_source=>'P400_CALENDAR_END_DATE',
  p_source_type=> 'ITEM',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_item_comment => 'Generated by Calendar wizard on 12/21/2012');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 400
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00500
prompt  ...PAGE 500: Tickets by Status
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 500
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Tickets by Status'
 ,p_step_title => 'Tickets by Status'
 ,p_step_sub_title => 'Tickets by Status'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121227152012'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 18997624041193518 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 500,
  p_plug_name=> 'Tickets by Status',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14310443227758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id                     => 18997849066193519+wwv_flow_api.g_id_offset,
  p_flow_id                => wwv_flow.g_flow_id,
  p_page_id                => 500,
  p_region_id              => 18997624041193518+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'2DPie',
  p_chart_title            =>'Ticket Statuses',
  p_chart_rendering        =>'SVG_ONLY',
  p_chart_name             =>'chart_9432926666997793',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'Appear',
  p_display_attr           =>':H:N:V:::N::V:Y:None:::N:::Default:::S',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::',
  p_pie_attr               =>'Outside:::',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'N',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'Tahoma:10:#000000',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'Tahoma:10:#000000',
  p_grid_labels_font       =>'Tahoma:10:#000000',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:#000000',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT'||unistr('\000a')||
'  ''f?p=&APP_ID.:200:'' || :APP_SESSION || ''::::P200_STATUS_ID:'' || sl.status_id link,'||unistr('\000a')||
'  sl.status label,'||unistr('\000a')||
'  count(*) value'||unistr('\000a')||
'FROM '||unistr('\000a')||
'  tickets_secure_v t, '||unistr('\000a')||
'  status_lookup sl'||unistr('\000a')||
'WHERE '||unistr('\000a')||
'  t.status_id = sl.status_id'||unistr('\000a')||
'GROUP BY '||unistr('\000a')||
'  sl.status_id, sl.status'||unistr('\000a')||
'ORDER BY'||unistr('\000a')||
'  3 DESC'||unistr('\000a')||
'';

wwv_flow_api.create_flash_chart5_series(
  p_id                        => 18997944356193520+wwv_flow_api.g_id_offset,
  p_chart_id                  => 18997849066193519+wwv_flow_api.g_id_offset,
  p_flow_id                   => wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'',
  p_series_query_type         =>'SQL_QUERY',
  p_series_ajax_items_to_submit=>'',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'',
  p_display_when_cond_type    =>'',
  p_display_when_condition    =>'',
  p_display_when_condition2   =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 500
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00600
prompt  ...PAGE 600: Users
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 600
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'T_ADMIN'
 ,p_name => 'Users'
 ,p_step_title => 'Users'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_required_role => 19109649860175164 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121227135833'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select "USER_ID", '||unistr('\000a')||
'"USER_NAME"'||unistr('\000a')||
'from "#OWNER#"."USERS" '||unistr('\000a')||
'  '||unistr('\000a')||
'';

wwv_flow_api.create_report_region (
  p_id=> 19096528425627895 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 600,
  p_name=> 'Users',
  p_region_name=>'',
  p_template=> 14311448951758126+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_plug_caching=> 'NOT_CACHED',
  p_query_row_template=> 14313045889758127+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '15',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19096846594627897 + wwv_flow_api.g_id_offset,
  p_region_id=> 19096528425627895 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'USER_ID',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Edit',
  p_column_link=>'f?p=#APP_ID#:610:#APP_SESSION#::::P610_USER_ID:#USER_ID#',
  p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'USERS',
  p_ref_column_name=> 'USER_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19096952876627897 + wwv_flow_api.g_id_offset,
  p_region_id=> 19096528425627895 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'USER_NAME',
  p_column_display_sequence=> 2,
  p_column_heading=> 'User Name',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'USERS',
  p_ref_column_name=> 'USER_NAME',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 19097139734627897 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 600,
  p_button_sequence=> 30,
  p_button_plug_id => 19096528425627895+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:610:&SESSION.::&DEBUG.:610',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 600
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00610
prompt  ...PAGE 610: Manage Users
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 610
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'T_ADMIN'
 ,p_name => 'Manage Users'
 ,p_step_title => 'Manage Users'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_required_role => 19109649860175164 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121227135821'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 19093843162627843 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 610,
  p_plug_name=> 'Manage Users',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14310554254758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 19094125619627844 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 610,
  p_button_sequence=> 30,
  p_button_plug_id => 19093843162627843+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P610_USER_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 19094453033627845 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 610,
  p_button_sequence=> 10,
  p_button_plug_id => 19093843162627843+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:600:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 19094048228627844 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 610,
  p_button_sequence=> 40,
  p_button_plug_id => 19093843162627843+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P610_USER_ID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 19094238814627844 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 610,
  p_button_sequence=> 20,
  p_button_plug_id => 19093843162627843+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''DELETE'');',
  p_button_execute_validations=>'N',
  p_button_condition=> 'P610_USER_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>19095050475627847 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 610,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:600:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>19095223071627879 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 610,
  p_name=>'P610_USER_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 19093843162627843+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'User Id',
  p_source=>'USER_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>19095428430627885 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 610,
  p_name=>'P610_USER_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 19093843162627843+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'User Name',
  p_source=>'USER_NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315930195758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>19095646625627887 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 610,
  p_name=>'P610_PASSWORD',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 19093843162627843+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Password',
  p_source=>'PASSWORD',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315930195758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 19098123486765878 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 610,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P610_PASSWORD is not null',
  p_validation_sequence=> 10,
  p_validation => 'P610_PASSWORD',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'A password must be specified.',
  p_always_execute=>'N',
  p_when_button_pressed=> 19094048228627844 + wwv_flow_api.g_id_offset,
  p_only_for_changed_rows=> 'Y',
  p_associated_item=> 19095646625627887 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:USERS:P610_USER_ID:USER_ID';

wwv_flow_api.create_page_process(
  p_id     => 19096047595627888 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 610,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from USERS',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:USERS:P610_USER_ID:USER_ID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 19096249588627888 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 610,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of USERS',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'610';

wwv_flow_api.create_page_process(
  p_id     => 19096437502627889 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 610,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>19094238814627844 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 610
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00620
prompt  ...PAGE 620: Access Control Administration Page
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 620
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'T_ADMIN'
 ,p_name => 'Access Control Administration Page'
 ,p_step_title => 'Access Control Administration Page'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Access Control Administration Page'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_required_role => 19109649860175164 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121227135811'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 19101139623175147 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 620,
  p_plug_name=> 'Application Administration',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14311448951758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select id,'||unistr('\000a')||
'admin_username,'||unistr('\000a')||
'admin_privileges,'||unistr('\000a')||
'setup_id,'||unistr('\000a')||
'lower(nvl(updated_by,created_by)) last_changed_by,'||unistr('\000a')||
'nvl(updated_on,created_on) last_changed_on'||unistr('\000a')||
'from apex_access_control'||unistr('\000a')||
'where setup_id = :P620_SETUP_ID'||unistr('\000a')||
'and (:P620_FIND is null or'||unistr('\000a')||
'      instr(upper(admin_username),upper(:P620_FIND)) > 0)'||unistr('\000a')||
'';

wwv_flow_api.create_report_region (
  p_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 620,
  p_name=> 'Access Control List',
  p_region_name=>'',
  p_template=> 14311448951758126+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 20,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_plug_caching=> 'NOT_CACHED',
  p_header=> 'Identify usernames which correspond to this application''s authentication scheme.',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 14313045889758127+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_query_asc_image=> 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr=> 'width="13" height="12"',
  p_query_desc_image=> 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr=> 'width="13" height="12"',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19103849584175155 + wwv_flow_api.g_id_offset,
  p_region_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19103951122175155 + wwv_flow_api.g_id_offset,
  p_region_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'ID',
  p_column_display_sequence=> 2,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_pk_col_source=> s,
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'APEX_ACCESS_CONTROL',
  p_ref_column_name=> 'ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19104034436175156 + wwv_flow_api.g_id_offset,
  p_region_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'ADMIN_USERNAME',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Username',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>1,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_QUERY',
  p_inline_lov=> 'SELECT user_name d, user_name r'||unistr('\000a')||
'FROM users'||unistr('\000a')||
'',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'APEX_ACCESS_CONTROL',
  p_ref_column_name=> 'ADMIN_USERNAME',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19105236410175157 + wwv_flow_api.g_id_offset,
  p_region_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'ADMIN_PRIVILEGES',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Privilege',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_LOV',
  p_named_lov=>19104136432175156 + wwv_flow_api.g_id_offset,
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'APEX_ACCESS_CONTROL',
  p_ref_column_name=> 'ADMIN_PRIVILEGES',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19105352055175157 + wwv_flow_api.g_id_offset,
  p_region_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'SETUP_ID',
  p_column_display_sequence=> 5,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_default=> 'P620_SETUP_ID',
  p_column_default_type=> 'ITEM',
  p_ref_schema=> 'APRESS',
  p_ref_table_name=> 'APEX_ACCESS_CONTROL',
  p_ref_column_name=> 'SETUP_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19105448917175157 + wwv_flow_api.g_id_offset,
  p_region_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'LAST_CHANGED_BY',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Last Changed By',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 19105525079175157 + wwv_flow_api.g_id_offset,
  p_region_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'LAST_CHANGED_ON',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Date',
  p_column_format=> 'SINCE',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 19107750932175160 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 620,
  p_button_sequence=> 50,
  p_button_plug_id => 19103649231175154+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Add User',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.widget.tabular.addRow();',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 19103243697175153 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 620,
  p_button_sequence=> 10,
  p_button_plug_id => 19101139623175147+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Set Application Mode',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P620_SETUP_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 19107549491175160 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 620,
  p_button_sequence=> 40,
  p_button_plug_id => 19103649231175154+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 19107141081175159 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 620,
  p_button_sequence=> 30,
  p_button_plug_id => 19103649231175154+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(14316044993758128+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>19109435851175163 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 620,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:620:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 99,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Identify how access to this application will be controlled.';

wwv_flow_api.create_page_item(
  p_id=>19102847358175152 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 620,
  p_name=>'P620_APPLICATION_MODE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 19101139623175147+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> 'ALL',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Application Mode',
  p_source=>'APPLICATION_MODE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_RADIOGROUP',
  p_named_lov=> 'APEX_APPLICATION_MODE',
  p_lov=> '.'||to_char(19101348865175147 + wwv_flow_api.g_id_offset)||'.',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT-TOP',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_input => 'Y',
  p_escape_on_http_output => 'N',
  p_help_text=> h,
  p_attribute_02 => 'NONE',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>19106336403175158 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 620,
  p_name=>'P620_SETUP_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 19103649231175154+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> '1',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source=>'ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_protection_level => 'N',
  p_escape_on_http_input => 'Y',
  p_attribute_01 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Enter case insensitive query criteria, then press the <b>Go</b> button.';

wwv_flow_api.create_page_item(
  p_id=>19106548464175159 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 620,
  p_name=>'P620_FIND',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 19103649231175154+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Find',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 14315743155758128+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>19106936596175159 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 620,
  p_name=>'P620_GO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 19103649231175154+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> 'Go',
  p_prompt=>'Go',
  p_source=>'Go',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => '4751122594562402',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'N',
  p_button_action => 'SUBMIT',
  p_button_is_hot=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 19108045271175160 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 620,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'cannot delete current user',
  p_validation_sequence=> 10,
  p_validation => 'for i in 1..apex_application.g_f01.count'||unistr('\000a')||
'loop'||unistr('\000a')||
'  if upper(apex_application.g_f03(apex_application.g_f01(i))) = upper(:APP_USER) then'||unistr('\000a')||
'    return false;'||unistr('\000a')||
'  end if;'||unistr('\000a')||
'end loop;'||unistr('\000a')||
'return true;',
  p_validation_type => 'FUNC_BODY_RETURNING_BOOLEAN',
  p_error_message => 'You may not delete yourself.',
  p_when_button_pressed=> 19107141081175159 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 19108230454175161 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 620,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'cannot remove admin priv',
  p_validation_sequence=> 20,
  p_validation => 'for i in 1..apex_application.g_f03.count'||unistr('\000a')||
'loop'||unistr('\000a')||
'  if upper(apex_application.g_f03(i)) = upper(:APP_USER) then'||unistr('\000a')||
'    if apex_application.g_f04(i) != ''ADMIN'' then'||unistr('\000a')||
'      return false;'||unistr('\000a')||
'    end if;'||unistr('\000a')||
'  end if;'||unistr('\000a')||
'end loop;'||unistr('\000a')||
'return true;',
  p_validation_type => 'FUNC_BODY_RETURNING_BOOLEAN',
  p_error_message => 'You may not remove administrator privilege from yourself.',
  p_when_button_pressed=> 19107549491175160 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||unistr('\000a')||
'  l_setup_id number;'||unistr('\000a')||
'begin'||unistr('\000a')||
'  for c1 in (select id '||unistr('\000a')||
'             from APEX_ACCESS_SETUP '||unistr('\000a')||
'             where application_id = :APP_ID)'||unistr('\000a')||
'  loop'||unistr('\000a')||
'    l_setup_id:= c1.id;'||unistr('\000a')||
'  end loop;'||unistr('\000a')||
'  if l_setup_id is null then   '||unistr('\000a')||
'   insert into apex_access_setup (application_mode, application_id)'||unistr('\000a')||
'    values (''ALL'',:APP_ID) returning id into l_setup_id;     '||unistr('\000a')||
'  end if;'||unistr('\000a')||
'  :P620_SETUP_ID := l_setup_id;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 19108422793175161 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 620,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'get application mode',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:APEX_ACCESS_SETUP:P620_SETUP_ID:ID';

wwv_flow_api.create_page_process(
  p_id     => 19108635298175161 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 620,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from APEX_ACCESS_SETUP',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:APEX_ACCESS_SETUP:P620_SETUP_ID:ID|U';

wwv_flow_api.create_page_process(
  p_id     => 19103548150175153 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 620,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of APEX_ACCESS_SETUP',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>19103243697175153 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Application Mode Set.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:APEX_ACCESS_CONTROL:ID';

wwv_flow_api.create_page_process(
  p_id     => 19108850643175162 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 620,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_region_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>19107549491175160 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:APEX_ACCESS_CONTROL:ID';

wwv_flow_api.create_page_process(
  p_id     => 19109022906175162 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 620,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_region_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'reset_pagination';

wwv_flow_api.create_page_process(
  p_id     => 19109249207175163 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 620,
  p_process_sequence=> 60,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'RESET_PAGINATION',
  p_process_name=> 'Reset Pagination',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>19106936596175159 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 620
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19105635903175157 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19105746293175158 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'ADMIN_USERNAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19105841334175158 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'ADMIN_PRIVILEGES',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19105934276175158 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 4,
  p_query_column_name=> 'SETUP_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19106033142175158 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 5,
  p_query_column_name=> 'LAST_CHANGED_BY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 19106150238175158 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 19103649231175154 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 6,
  p_query_column_name=> 'LAST_CHANGED_ON',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_05000
prompt  ...PAGE 5000: Chart Comparison
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 5000
 ,p_user_interface_id => 14317453103758129 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Chart Comparison'
 ,p_step_title => 'Chart Comparison'
 ,p_step_sub_title => 'Chart Comparison'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20121221143404'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 18995929710084493 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5000,
  p_plug_name=> 'Flash Chart',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14310443227758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id                     => 18996148965084493+wwv_flow_api.g_id_offset,
  p_flow_id                => wwv_flow.g_flow_id,
  p_page_id                => 5000,
  p_region_id              => 18995929710084493+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'2DColumn',
  p_chart_title            =>'Flash Chart',
  p_chart_rendering        =>'FLASH_PREFERRED',
  p_chart_name             =>'chart_9431226565888767',
  p_chart_width            =>500,
  p_chart_height           =>300,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:N::V:Y:None:::N:::Default:::S',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::',
  p_pie_attr               =>'Outside:::',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'N',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'Tahoma:10:#000000',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'Tahoma:10:#000000',
  p_grid_labels_font       =>'Tahoma:10:#000000',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:#000000',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT'||unistr('\000a')||
'  ''f?p=&APP_ID.:200:'' || :APP_SESSION || ''::::P200_STATUS_ID:'' || sl.status_id link,'||unistr('\000a')||
'  sl.status label,'||unistr('\000a')||
'  count(*) value'||unistr('\000a')||
'FROM '||unistr('\000a')||
'  tickets t, '||unistr('\000a')||
'  status_lookup sl'||unistr('\000a')||
'WHERE '||unistr('\000a')||
'  t.status_id = sl.status_id'||unistr('\000a')||
'GROUP BY '||unistr('\000a')||
'  sl.status_id, sl.status'||unistr('\000a')||
'ORDER BY'||unistr('\000a')||
'  3 DESC'||unistr('\000a')||
'';

wwv_flow_api.create_flash_chart5_series(
  p_id                        => 18996246583084495+wwv_flow_api.g_id_offset,
  p_chart_id                  => 18996148965084493+wwv_flow_api.g_id_offset,
  p_flow_id                   => wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'Bar',
  p_series_query_type         =>'SQL_QUERY',
  p_series_ajax_items_to_submit=>'',
  p_series_query_parse_opt    =>'',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'',
  p_action_link_checksum_type =>'',
  p_display_when_cond_type    =>'',
  p_display_when_condition    =>'',
  p_display_when_condition2   =>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 18996438160088948 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5000,
  p_plug_name=> 'HTML Chart',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 14310443227758126+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => false,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id                     => 18996650730088949+wwv_flow_api.g_id_offset,
  p_flow_id                => wwv_flow.g_flow_id,
  p_page_id                => 5000,
  p_region_id              => 18996438160088948+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'2DColumn',
  p_chart_title            =>'HTML Chart',
  p_chart_rendering        =>'SVG_ONLY',
  p_chart_name             =>'chart_9431226565888767',
  p_chart_width            =>500,
  p_chart_height           =>300,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:N::V:Y:None:::N:::Default:::S',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::',
  p_pie_attr               =>'Outside:::',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'N',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'Tahoma:10:#000000',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'Tahoma:10:#000000',
  p_grid_labels_font       =>'Tahoma:10:#000000',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:#000000',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT'||unistr('\000a')||
'  ''f?p=&APP_ID.:200:'' || :APP_SESSION || ''::::P200_STATUS_ID:'' || sl.status_id link,'||unistr('\000a')||
'  sl.status label,'||unistr('\000a')||
'  count(*) value'||unistr('\000a')||
'FROM '||unistr('\000a')||
'  tickets t, '||unistr('\000a')||
'  status_lookup sl'||unistr('\000a')||
'WHERE '||unistr('\000a')||
'  t.status_id = sl.status_id'||unistr('\000a')||
'GROUP BY '||unistr('\000a')||
'  sl.status_id, sl.status'||unistr('\000a')||
'ORDER BY'||unistr('\000a')||
'  3 DESC'||unistr('\000a')||
'';

wwv_flow_api.create_flash_chart5_series(
  p_id                        => 18996743333088950+wwv_flow_api.g_id_offset,
  p_chart_id                  => 18996650730088949+wwv_flow_api.g_id_offset,
  p_flow_id                   => wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'Bar',
  p_series_query_type         =>'SQL_QUERY',
  p_series_ajax_items_to_submit=>'',
  p_series_query_parse_opt    =>'',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'',
  p_action_link_checksum_type =>'',
  p_display_when_cond_type    =>'',
  p_display_when_condition    =>'',
  p_display_when_condition2   =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 5000
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/lists/home_page_list
 
begin
 
wwv_flow_api.create_list (
  p_id=> 14320840808818752 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Home Page List',
  p_list_type=> 'STATIC',
  p_list_query=>'',
  p_list_status=> 'PUBLIC',
  p_list_displayed=> 'BY_DEFAULT' );
 
wwv_flow_api.create_list_item (
  p_id=> 14321125278821093 + wwv_flow_api.g_id_offset,
  p_list_id=> 14320840808818752 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>10,
  p_list_item_link_text=> 'Submit a Ticket',
  p_list_item_link_target=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 14321322690822256 + wwv_flow_api.g_id_offset,
  p_list_id=> 14320840808818752 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>20,
  p_list_item_link_text=> 'Contact Us',
  p_list_item_link_target=> 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
null;
 
end;
/

--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 14318725502758131 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=>14319150806758132 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>0,
  p_option_sequence=>10,
  p_short_name=>'Home',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.',
  p_page_id=>1,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>18933844066366249 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>14319150806758132 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Create a Ticket',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:2:&SESSION.',
  p_page_id=>2,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>18937453621835639 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>14319150806758132 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Contact Us',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:3:&SESSION.',
  p_page_id=>3,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>18958452406577033 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>null,
  p_option_sequence=>10,
  p_short_name=>'Tickets',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:200:&SESSION.',
  p_page_id=>200,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>18958653674577034 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>18958452406577033 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Manage Tickets',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:210:&SESSION.',
  p_page_id=>210,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>18958948347577034 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>18958653674577034 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Ticket Details',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:220:&SESSION.',
  p_page_id=>220,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>18980422780246922 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>18958452406577033 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Manage Multiple Tickets',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:230:&SESSION.',
  p_page_id=>230,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>18982029984588599 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>null,
  p_option_sequence=>10,
  p_short_name=>'Analysis',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:300:&SESSION.',
  p_page_id=>300,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>18995040487812115 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>null,
  p_option_sequence=>10,
  p_short_name=>'Calendar',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:400:&SESSION.',
  p_page_id=>400,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>18997541981193518 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>null,
  p_option_sequence=>10,
  p_short_name=>'Chart',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:500:&SESSION.',
  p_page_id=>500,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>19067144033103067 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>null,
  p_option_sequence=>10,
  p_short_name=>'Users',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:600:&SESSION.',
  p_page_id=>600,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_menu_option (
  p_id=>19097640357697272 + wwv_flow_api.g_id_offset,
  p_menu_id=>14318725502758131 + wwv_flow_api.g_id_offset,
  p_parent_id=>19067144033103067 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Manage Users',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:610:&SESSION.::&DEBUG.:::',
  p_page_id=>610,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

prompt  ...page templates for application: 115
--
--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 14308052233758124
 
begin
 
wwv_flow_api.create_template (
  p_id => 14308052233758124 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'Login'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="login">'||unistr('\000a')||
'  <div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'  <div id="login-main">#REGION_POSITION_02##BOX_BODY##REGION_POSITION_03#</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_footer_template => 
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0"'
 ,p_theme_class_id => 6
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
 ,p_template_comment => '18'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 14308152807758124
 
begin
 
wwv_flow_api.create_template (
  p_id => 14308152807758124 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'No Tabs - Left Sidebar (fixed-width / DIV based)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="tabs">'||unistr('\000a')||
'  <div class="frame">'||unistr('\000a')||
'    <div class="bg">'||unistr('\000a')||
'      <div class="tab-holder">'||unistr('\000a')||
'        &nbsp;'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="'||
'topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <div id="two-col-sb-left">'||unistr('\000a')||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||unistr('\000a')||
'    <div id="main-sb-left">'||unistr('\000a')||
'      #BOX_BODY##REGION_POSITION_03#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_region_table_cattributes => 'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 17
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 14308247795758124
 
begin
 
wwv_flow_api.create_template (
  p_id => 14308247795758124 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'No Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="tabs">'||unistr('\000a')||
'  <div class="frame">'||unistr('\000a')||
'    <div class="bg">'||unistr('\000a')||
'      <div class="tab-holder">'||unistr('\000a')||
'        &nbsp;'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="'||
'topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <div id="three-col">'||unistr('\000a')||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||unistr('\000a')||
'    <div id="two-col-tbl">'||unistr('\000a')||
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||unistr('\000a')||
'        <tbody>'||unistr('\000a')||
'          <tr>'||unistr('\000a')||
'            <td class="'||
'tbl-main" width="100%">#BOX_BODY#</td>'||unistr('\000a')||
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||unistr('\000a')||
'          </tr>'||unistr('\000a')||
'        </tbody>'||unistr('\000a')||
'      </table>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_region_table_cattributes => 'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 17
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 14308345581758124
 
begin
 
wwv_flow_api.create_template (
  p_id => 14308345581758124 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'No Tabs - Right Sidebar (fixed-width / DIV based)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="tabs">'||unistr('\000a')||
'  <div class="frame">'||unistr('\000a')||
'    <div class="bg">'||unistr('\000a')||
'      <div class="tab-holder">'||unistr('\000a')||
'        &nbsp;'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="'||
'topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <div id="two-col">'||unistr('\000a')||
'    <div id="sidebar">#REGION_POSITION_03#</div>     '||unistr('\000a')||
'    <div id="main">#REGION_POSITION_02##BOX_BODY#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 3
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_right_sidebar_optional_table_based
prompt  ......Page template 14308438725758124
 
begin
 
wwv_flow_api.create_template (
  p_id => 14308438725758124 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'No Tabs - Right Sidebar (optional / table-based)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="tabs">'||unistr('\000a')||
'  <div class="frame">'||unistr('\000a')||
'    <div class="bg">'||unistr('\000a')||
'      <div class="tab-holder">'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="topbar">#REGION'||
'_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||unistr('\000a')||
'    <tbody>'||unistr('\000a')||
'      <tr>'||unistr('\000a')||
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BOX_BODY#</td>'||unistr('\000a')||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||unistr('\000a')||
'      </tr>'||unistr('\000a')||
' '||
'   </tbody>'||unistr('\000a')||
'  </table>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 3
 ,p_error_page_template => '<div class="error_container">'||unistr('\000a')||
'	<div class="rounded-corner-region-blank-alt">'||unistr('\000a')||
'		<div class="rc-gray-top">'||unistr('\000a')||
'			<div class="rc-gray-top-r"></div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'		<div class="rc-body">'||unistr('\000a')||
'			<div class="rc-body-r">'||unistr('\000a')||
'				<div class="rc-content-main">'||unistr('\000a')||
'					<div class="sErrorText">'||unistr('\000a')||
'					<strong>#MESSAGE#</strong>'||unistr('\000a')||
'					<strong>#ADDITIONAL_INFO#</strong>'||unistr('\000a')||
'					<div>#TECHNICAL_INFO#</div>'||unistr('\000a')||
'					<p>'||unistr('\000a')||
'						<button onclick="#BACK_LINK#" class="button-default" type="button">'||unistr('\000a')||
'						  <span>#OK#</span>'||unistr('\000a')||
'						</button>'||unistr('\000a')||
'					</p>'||unistr('\000a')||
'					</div>'||unistr('\000a')||
'					<div class="clear"></div>'||unistr('\000a')||
'				</div>'||unistr('\000a')||
'				<div class="clear"></div>'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'		<div class="rc-bottom">'||unistr('\000a')||
'			<div class="rc-bottom-r"></div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'</div>'
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 14308537587758124
 
begin
 
wwv_flow_api.create_template (
  p_id => 14308537587758124 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'One Level Tabs - Left Sidebar (fixed-width / DIV based)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<ul id="tabs">'||unistr('\000a')||
'#TAB_CELLS#'||unistr('\000a')||
'<li class="last"><span></span></li>'||unistr('\000a')||
'</ul>'||unistr('\000a')||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#S'||
'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <div id="two-col-sb-left">'||unistr('\000a')||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||unistr('\000a')||
'    <div id="main-sb-left">'||unistr('\000a')||
'      #BOX_BODY##REGION_POSITION_03#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_non_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 16
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 14308625172758125
 
begin
 
wwv_flow_api.create_template (
  p_id => 14308625172758125 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'One Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<ul id="tabs">'||unistr('\000a')||
'#TAB_CELLS#'||unistr('\000a')||
'<li class="last"><span></span></li>'||unistr('\000a')||
'</ul>'||unistr('\000a')||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#S'||
'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <div id="three-col">'||unistr('\000a')||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||unistr('\000a')||
'    <div id="two-col-tbl">'||unistr('\000a')||
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||unistr('\000a')||
'        <tbody>'||unistr('\000a')||
'          <tr>'||unistr('\000a')||
'            <td class="tbl-main" width="100%">#BOX_BODY#</td>'||unistr('\000a')||
'            <td class="tbl-sidebar">#'||
'REGION_POSITION_03#</td>     '||unistr('\000a')||
'          </tr>'||unistr('\000a')||
'        </tbody>'||unistr('\000a')||
'      </table>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_non_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 16
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 14308753442758125
 
begin
 
wwv_flow_api.create_template (
  p_id => 14308753442758125 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'One Level Tabs - Right Sidebar (fixed-width / DIV based)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<ul id="tabs">'||unistr('\000a')||
'#TAB_CELLS#'||unistr('\000a')||
'<li class="last"><span></span></li>'||unistr('\000a')||
'</ul>'||unistr('\000a')||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#S'||
'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <div id="two-col">'||unistr('\000a')||
'    <div id="sidebar">#REGION_POSITION_03#</div>     '||unistr('\000a')||
'    <div id="main">#REGION_POSITION_02##BOX_BODY#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_non_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 8
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_optional_table_based
prompt  ......Page template 14308832286758125
 
begin
 
wwv_flow_api.create_template (
  p_id => 14308832286758125 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'One Level Tabs - Right Sidebar (optional / table-based)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<ul id="tabs">'||unistr('\000a')||
'#TAB_CELLS#'||unistr('\000a')||
'<li class="last"><span></span></li>'||unistr('\000a')||
'</ul>'||unistr('\000a')||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#S'||
'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||unistr('\000a')||
'    <tbody>'||unistr('\000a')||
'      <tr>'||unistr('\000a')||
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BOX_BODY#</td>'||unistr('\000a')||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||unistr('\000a')||
'      </tr>'||unistr('\000a')||
'    </tbody>'||unistr('\000a')||
'  </table>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_non_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="navbar-link">#TEXT#</a></div>'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 1
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 14308954749758125
 
begin
 
wwv_flow_api.create_template (
  p_id => 14308954749758125 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'Popup'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD# class="pop-up-body">#FORM_OPEN#'
 ,p_box => 
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td width="100%" valign="top"><div class="t1messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||unistr('\000a')||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_footer_template => 
'#FORM_CLOSE##DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
 ,p_notification_message => '<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_theme_class_id => 4
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 14309046729758125
 
begin
 
wwv_flow_api.create_template (
  p_id => 14309046729758125 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'Printer Friendly'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||unistr('\000a')||
'    <tbody>'||unistr('\000a')||
'      <tr>'||unistr('\000a')||
'        <td class="tbl-sidebar" style="padding-right: 1'||
'0px;">#REGION_POSITION_02#</td>     '||unistr('\000a')||
'        <td class="tbl-main" width="100%">#BOX_BODY#</td>'||unistr('\000a')||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||unistr('\000a')||
'      </tr>'||unistr('\000a')||
'    </tbody>'||unistr('\000a')||
'  </table>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_footer_template => 
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_theme_class_id => 5
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
 ,p_template_comment => '3'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 14309147963758125
 
begin
 
wwv_flow_api.create_template (
  p_id => 14309147963758125 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'Two Level Tabs - Left Sidebar (fixed-width / DIV based)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
' #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div id="parent-tabs">'||unistr('\000a')||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<ul id="tabs">'||unistr('\000a')||
'#TAB_CELLS#'||unistr('\000a')||
'<li class="last"><span></span></li>'||unistr('\000a')||
'</ul'||
'>'||unistr('\000a')||
''||unistr('\000a')||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <div id="two-col-sb-left">'||unistr('\000a')||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||unistr('\000a')||
'    <div id="main-sb-left">'||unistr('\000a')||
'      #BOX_BODY##REGION_POSITION_03#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_non_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_top_current_tab => '<div class="current"><div>'||unistr('\000a')||
'#TAB_LABEL##TAB_INLINE_EDIT#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_top_non_curr_tab => '<div class="noncurrent"><div>'||unistr('\000a')||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 18
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 14309241570758125
 
begin
 
wwv_flow_api.create_template (
  p_id => 14309241570758125 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'Two Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
' #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div id="parent-tabs">'||unistr('\000a')||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<ul id="tabs">'||unistr('\000a')||
'#TAB_CELLS#'||unistr('\000a')||
'<li class="last"><span></span></li>'||unistr('\000a')||
'</ul'||
'>'||unistr('\000a')||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <div id="three-col">'||unistr('\000a')||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||unistr('\000a')||
'    <div id="two-col-tbl">'||unistr('\000a')||
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||unistr('\000a')||
'        <tbody>'||unistr('\000a')||
'          <tr>'||unistr('\000a')||
'            '||
'<td class="tbl-main" width="100%">#BOX_BODY#</td>'||unistr('\000a')||
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||unistr('\000a')||
'          </tr>'||unistr('\000a')||
'        </tbody>'||unistr('\000a')||
'      </table>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_non_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_top_current_tab => '<div class="current"><div>'||unistr('\000a')||
'#TAB_LABEL##TAB_INLINE_EDIT#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_top_non_curr_tab => '<div class="noncurrent"><div>'||unistr('\000a')||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 18
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 14309346990758125
 
begin
 
wwv_flow_api.create_template (
  p_id => 14309346990758125 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'Two Level Tabs - Right Sidebar (fixed-width / DIV based)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
' #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div id="parent-tabs">'||unistr('\000a')||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<ul id="tabs">'||unistr('\000a')||
'#TAB_CELLS#'||unistr('\000a')||
'<li class="last"><span></span></li>'||unistr('\000a')||
'</ul'||
'>'||unistr('\000a')||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <div id="two-col">'||unistr('\000a')||
'    <div id="sidebar">#REGION_POSITION_03#</div>     '||unistr('\000a')||
'    <div id="main">#REGION_POSITION_02##BOX_BODY#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_non_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_top_current_tab => '<div class="current"><div>'||unistr('\000a')||
'#TAB_LABEL##TAB_INLINE_EDIT#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_top_non_curr_tab => '<div class="noncurrent"><div>'||unistr('\000a')||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 2
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar_optional_table_based
prompt  ......Page template 14309443727758125
 
begin
 
wwv_flow_api.create_template (
  p_id => 14309443727758125 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 21
 ,p_name => 'Two Level Tabs - Right Sidebar (optional / table-based)'
 ,p_is_popup => false
 ,p_header_template => '<!DOCTYPE html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
' #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
''
 ,p_box => 
'<div id="header">'||unistr('\000a')||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <div id="navbar">'||unistr('\000a')||
'    <div class="app-user">#WELCOME_USER#</div>'||unistr('\000a')||
'    #NAVIGATION_BAR#'||unistr('\000a')||
'    #REGION_POSITION_08#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div id="parent-tabs">'||unistr('\000a')||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<ul id="tabs">'||unistr('\000a')||
'#TAB_CELLS#'||unistr('\000a')||
'<li class="last"><span></span></li>'||unistr('\000a')||
'</ul'||
'>'||unistr('\000a')||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||unistr('\000a')||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||unistr('\000a')||
'<div id="body">'||unistr('\000a')||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||unistr('\000a')||
'    <tbody>'||unistr('\000a')||
'      <tr>'||unistr('\000a')||
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BOX_BODY#</td>'||unistr('\000a')||
'        <td class="tbl-sidebar">#REGION_POSITION_0'||
'3#</td>     '||unistr('\000a')||
'      </tr>'||unistr('\000a')||
'    </tbody>'||unistr('\000a')||
'  </table>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<div id="footer"><div class="content">'||unistr('\000a')||
'<div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<div class="app-version">#APP_VERSION#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'  #REGION_POSITION_05#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="success" id="success-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||unistr('\000a')||
'  #SUCCESS_MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_non_current_tab => '<li class="#TAB_STATUS#">'||unistr('\000a')||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</li>'
 ,p_top_current_tab => '<div class="current"><div>'||unistr('\000a')||
'#TAB_LABEL##TAB_INLINE_EDIT#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_top_non_curr_tab => '<div class="noncurrent"><div>'||unistr('\000a')||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_notification_message => '<div class="notification" id="notification-message">'||unistr('\000a')||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 2
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 14316044993758128
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 14316044993758128 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button'
 ,p_template => 
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-default" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">'||unistr('\000a')||
'  <span>#LABEL#</span>'||unistr('\000a')||
'</button>'
 ,p_hot_template => 
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">'||unistr('\000a')||
'  <span>#LABEL#</span>'||unistr('\000a')||
'</button>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 21
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/hot_button_black
prompt  ......Button Template 14316136450758128
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 14316136450758128 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Hot Button (Black)'
 ,p_template => 
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt5" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">'||unistr('\000a')||
'  <span>#LABEL#</span>'||unistr('\000a')||
'</button>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 4
 ,p_theme_id => 21
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/hot_button_red_outline
prompt  ......Button Template 14316243000758128
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 14316243000758128 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Hot Button (Red Outline)'
 ,p_template => 
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt4" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">'||unistr('\000a')||
'  <span>#LABEL#</span>'||unistr('\000a')||
'</button>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 4
 ,p_theme_id => 21
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/hot_button_red
prompt  ......Button Template 14316324815758128
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 14316324815758128 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Hot Button (Red)'
 ,p_template => 
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">'||unistr('\000a')||
'  <span>#LABEL#</span>'||unistr('\000a')||
'</button>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 4
 ,p_theme_id => 21
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/small_button
prompt  ......Button Template 14316424762758128
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 14316424762758128 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Small Button'
 ,p_template => 
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt2" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">'||unistr('\000a')||
'  <span>#LABEL#</span>'||unistr('\000a')||
'</button>'
 ,p_hot_template => 
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt3" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">'||unistr('\000a')||
'  <span>#LABEL#</span>'||unistr('\000a')||
'</button>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 5
 ,p_template_comment => 'XP Square FFFFFF'
 ,p_theme_id => 21
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/small_hot_button_red_outline
prompt  ......Button Template 14316524953758128
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 14316524953758128 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Small Hot Button (Red Outline)'
 ,p_template => 
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt6" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">'||unistr('\000a')||
'  <span>#LABEL#</span>'||unistr('\000a')||
'</button>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 2
 ,p_template_comment => 'Standard Button'
 ,p_theme_id => 21
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/small_hot_button_red
prompt  ......Button Template 14316637265758128
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 14316637265758128 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Small Hot Button (Red)'
 ,p_template => 
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt3" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">'||unistr('\000a')||
'  <span>#LABEL#</span>'||unistr('\000a')||
'</button>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 2
 ,p_template_comment => 'Standard Button'
 ,p_theme_id => 21
  );
null;
 
end;
/

---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/blank_region
prompt  ......region template 14309554142758125
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14309554142758125 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="blank-region">'||unistr('\000a')||
'#BODY#'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Blank Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 14309626168758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14309626168758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="bl-top">'||unistr('\000a')||
'    <div class="bl-title">#TITLE#</div>'||unistr('\000a')||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="bl-body">#BODY#</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div class="clear"></div>'
 ,p_page_plug_template_name => 'Borderless Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||unistr('\000a')||
''||unistr('\000a')||
'TITLE=YES'||unistr('\000a')||
'BUTTONS=YES'||unistr('\000a')||
'100% WIDTH=NO'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/borderless_region_no_title
prompt  ......region template 14309754528758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14309754528758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="bl-top">'||unistr('\000a')||
'    '||unistr('\000a')||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="bl-body">#BODY#</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div class="clear"></div>'
 ,p_page_plug_template_name => 'Borderless Region - No Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||unistr('\000a')||
''||unistr('\000a')||
'TITLE=YES'||unistr('\000a')||
'BUTTONS=YES'||unistr('\000a')||
'100% WIDTH=NO'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/bracketed_region
prompt  ......region template 14309837398758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14309837398758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="bracketed-region brackets" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="bk-top">'||unistr('\000a')||
'    <div class="bk-top-r">'||unistr('\000a')||
'      <div class="bk-title">#TITLE#</div>'||unistr('\000a')||
'      <div class="bk-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="bk-body">#BODY#</div>'||unistr('\000a')||
'  <div class="bk-bottom">'||unistr('\000a')||
'    <div class="bk-bott'||
'om-r">&nbsp;</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Bracketed Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 18
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content with a bracket UI.'||unistr('\000a')||
''||unistr('\000a')||
'TITLE=YES'||unistr('\000a')||
'BUTTONS=YES'||unistr('\000a')||
'100% WIDTH=NO'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 14309936088758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14309936088758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Breadcrumb Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 6
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 14310025445758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14310025445758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top">'||unistr('\000a')||
'    <div class="rc-gray-top-r"></div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="rc-body">'||unistr('\000a')||
'    <div class="rc-body-r">'||unistr('\000a')||
'      <div class="rc-content-main">'||unistr('\000a')||
'        <div class="rc-left">'||unistr('\000a')||
'          <h3>#TITLE#</h3>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <div class="rc-right">'||unistr('\000a')||
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CR'||
'EATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <div class="clear"></div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="rc-bottom">'||unistr('\000a')||
'    <div class="rc-bottom-r"></div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Button Region with Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 4
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 14310141723758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14310141723758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top">'||unistr('\000a')||
'    <div class="rc-gray-top-r"></div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="rc-body">'||unistr('\000a')||
'    <div class="rc-body-r">'||unistr('\000a')||
'      <div class="rc-content-main">'||unistr('\000a')||
'        <div class="rc-left">'||unistr('\000a')||
'          #BODY#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <div class="rc-right">'||unistr('\000a')||
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREA'||
'TE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <div class="clear"></div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="rc-bottom">'||unistr('\000a')||
'    <div class="rc-bottom-r"></div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Button Region without Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 17
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/centered_tab_set_region
prompt  ......region template 14310244973758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14310244973758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="tSC">'||unistr('\000a')||
'  #BODY#'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div class="tSF">'||unistr('\000a')||
'  <div class="tSFO">'||unistr('\000a')||
'    <div class="tSFI">'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Centered Tab Set Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 21
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_list
prompt  ......region template 14310354937758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14310354937758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||unistr('\000a')||
'    <div class="rc-title">#TITLE#</div>'||unistr('\000a')||
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">'||unistr('\000a')||
'     <div class="'||
'rc-image"><img src="#IMAGE_PREFIX#themes/theme_21/images/report_icon.png" alt="" /></div>'||unistr('\000a')||
'      <div class="rc-content">#BODY#</div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Chart List'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_region
prompt  ......region template 14310443227758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14310443227758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||unistr('\000a')||
'    <div class="rc-title">#TITLE#</div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-body"><div class="rc-body-r">'||unistr('\000a')||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'<div class="rc-content-main">#BODY#<div cl'||
'ass="clear"></div></div></div></div>'||unistr('\000a')||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Chart Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 30
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 14310554254758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14310554254758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||unistr('\000a')||
'    <div class="rc-title">#TITLE#</div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-body"><div class="rc-body-r">'||unistr('\000a')||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'<div class="rc-content-main">'||unistr('\000a')||
'#BODY#<div c'||
'lass="clear"></div></div></div></div>'||unistr('\000a')||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Form Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 21
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region
prompt  ......region template 14310640042758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14310640042758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="hide-show-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="hide-show-top">'||unistr('\000a')||
'    <div class="hide-show-title"><a href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_21/images/right_arrow.png'',''#IMAGE_PREFIX#themes/theme_21/images/down_arrow.png'');" class="t1HideandShowRegionLink"><img src="#IMAGE_PREFIX#themes/t'||
'heme_21/images/right_arrow.png" '||unistr('\000a')||
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a> #TITLE#</div>'||unistr('\000a')||
'    <div class="hide-show-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'<div class="hide" id="region#REGION_SEQUENCE_ID#" style="float:left;">#BODY#</div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Hide and Show Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 1
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Gray Head, white body'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region
prompt  ......region template 14310729777758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14310729777758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'    <h3>#TITLE#</h3>'||unistr('\000a')||
'  <div>'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Navigation Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 5
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region_alternative_1
prompt  ......region template 14310827267758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14310827267758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Navigation Region, Alternative 1'
 ,p_theme_id => 21
 ,p_theme_class_id => 16
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/nested_region
prompt  ......region template 14310925905758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14310925905758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-nested" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'	<div class="nr-top">'||unistr('\000a')||
'		<div class="nr-top-r">'||unistr('\000a')||
'    <div class="nr-title">#TITLE#</div>'||unistr('\000a')||
'    <div class="nr-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div class="nr-body">'||unistr('\000a')||
'		<div class="nr-content-main">'||unistr('\000a')||
'			#BODY#'||unistr('\000a')||
'			<div class="clear"></div'||
'>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Nested Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||unistr('\000a')||
''||unistr('\000a')||
'TITLE=YES'||unistr('\000a')||
'BUTTONS=YES'||unistr('\000a')||
'100% WIDTH=NO'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_titles
prompt  ......region template 14311052253758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14311052253758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="bl-body">#BODY#</div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Region without Buttons and Titles'
 ,p_theme_id => 21
 ,p_theme_class_id => 19
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_title
prompt  ......region template 14311134443758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14311134443758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="bl-top">'||unistr('\000a')||
'    <div class="bl-title">&nbsp;</div>'||unistr('\000a')||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="bl-body">#BODY#</div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Region without Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 11
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_filter_single_row
prompt  ......region template 14311236684758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14311236684758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tbody>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>'||unistr('\000a')||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_f'||
'ind.png" /></td>'||unistr('\000a')||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>'||unistr('\000a')||
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>'||unistr('\000a')||
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="'||
'apex_finderbar_left_middle"><br /></td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Report Filter - Single Row'
 ,p_theme_id => 21
 ,p_theme_class_id => 31
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_list
prompt  ......region template 14311344922758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14311344922758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||unistr('\000a')||
'    <div class="rc-title">#TITLE#</div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-body"><div class="rc-body-r">'||unistr('\000a')||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'    <div class="rc-content-main">'||unistr('\000a')||
'    '||
'#BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Report List'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 14311448951758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14311448951758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||unistr('\000a')||
'    <div class="rc-title">#TITLE#</div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-body"><div class="rc-body-r">'||unistr('\000a')||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'<div class="rc-content-main">#BODY#<div cl'||
'ass="clear"></div></div></div></div>'||unistr('\000a')||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||unistr('\000a')||
'</div> '
 ,p_page_plug_template_name => 'Reports Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_100_width
prompt  ......region template 14311547817758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14311547817758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region float-left-100pct" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||unistr('\000a')||
'    <div class="rc-title">#TITLE#</div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-body"><div class="rc-body-r">'||unistr('\000a')||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'<div class="rc-content-m'||
'ain">#BODY#<div class="clear"></div></div></div></div>'||unistr('\000a')||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Reports Region 100% Width'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 13
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_no_title
prompt  ......region template 14311651572758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14311651572758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-blank-white" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||unistr('\000a')||
'	<div class="rc-gray-top">'||unistr('\000a')||
'		<div class="rc-gray-top-r"></div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div class="rc-body">'||unistr('\000a')||
'		<div class="rc-body-r">'||unistr('\000a')||
'			<div class="rc-content-main">'||unistr('\000a')||
'				#BODY#'||unistr('\000a')||
'				<div class="clear"></div>'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'			<div class="rc-content-buttons">'||unistr('\000a')||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##'||
'EXPAND##COPY##HELP#'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'			<div class="clear"></div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div class="rc-bottom">'||unistr('\000a')||
'		<div class="rc-bottom-r"></div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Reports Region No Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 9
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_no_title_alternative_1
prompt  ......region template 14311738557758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14311738557758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-blank-alt" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||unistr('\000a')||
'	<div class="rc-gray-top">'||unistr('\000a')||
'		<div class="rc-gray-top-r"></div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div class="rc-body">'||unistr('\000a')||
'		<div class="rc-body-r">'||unistr('\000a')||
'			<div class="rc-content-main">'||unistr('\000a')||
'				#BODY#'||unistr('\000a')||
'				<div class="clear"></div>'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'			<div class="rc-content-buttons">'||unistr('\000a')||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EX'||
'PAND##COPY##HELP#'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'			<div class="clear"></div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div class="rc-bottom">'||unistr('\000a')||
'		<div class="rc-bottom-r"></div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Reports Region No Title, Alternative 1'
 ,p_theme_id => 21
 ,p_theme_class_id => 10
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_alternative_1
prompt  ......region template 14311844215758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14311844215758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||unistr('\000a')||
'    <div class="rc-title">#TITLE#</div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-body"><div class="rc-body-r">'||unistr('\000a')||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'<div class="rc-content-main">#BODY#<di'||
'v class="clear"></div>'||unistr('\000a')||
'<div class="clear"></div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div></div>'||unistr('\000a')||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Reports Region, Alternative 1'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 10
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 14311924962758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14311924962758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="sidebar-region">'||unistr('\000a')||
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||unistr('\000a')||
'    <div class="rc-title">#TITLE#</div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-body"><div class="rc-body-r">'||unistr('\000a')||
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>'||unistr('\000a')||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div'||
'></div>'||unistr('\000a')||
'</div> '||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 21
 ,p_theme_class_id => 2
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => '<table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#FF0000" height="16">'||unistr('\000a')||
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">'||unistr('\000a')||
'              <tr>'||unistr('\000a')||
'                <td align=middle valign="top">'||unistr('\000a')||
'                  <div align="center">'||unistr('\000a')||
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">'||unistr('\000a')||
'                      <b>#TITLE# </b></font></div>'||unistr('\000a')||
'                </td>'||unistr('\000a')||
'              </tr>'||unistr('\000a')||
'            </table>'||unistr('\000a')||
'          </td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'   <tr>'||unistr('\000a')||
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />'||unistr('\000a')||
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">'||unistr('\000a')||
'              <tr>'||unistr('\000a')||
'                <td colspan="2">'||unistr('\000a')||
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">'||unistr('\000a')||
'                    <tr>'||unistr('\000a')||
'                      <td>&nbsp;</td>'||unistr('\000a')||
'                      <td valign="top" width="106">'||unistr('\000a')||
'                        <P><FONT face="arial, helvetica" size="1">'||unistr('\000a')||
'                            #BODY#'||unistr('\000a')||
'                           </font>'||unistr('\000a')||
'                        </P>'||unistr('\000a')||
'                      </td>'||unistr('\000a')||
'                    </tr>'||unistr('\000a')||
'                  </table>'||unistr('\000a')||
'            </table>'||unistr('\000a')||
'          </td>'||unistr('\000a')||
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'      </table>'||unistr('\000a')||
'      <table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
prompt  ......region template 14312042262758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14312042262758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="sidebar-region">'||unistr('\000a')||
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||unistr('\000a')||
'    <div class="rc-title">#TITLE#</div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-body"><div class="rc-body-r">'||unistr('\000a')||
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>'||unistr('\000a')||
'  <div class="rc-bottom"><div class="rc-bottom-r"><'||
'/div></div>'||unistr('\000a')||
'</div> '||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region, Alternative 1'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 21
 ,p_theme_class_id => 3
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_bordered
prompt  ......region template 14312146216758126
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14312146216758126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-blank-white sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||unistr('\000a')||
'	<div class="rc-gray-top">'||unistr('\000a')||
'		<div class="rc-gray-top-r"></div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div class="rc-body">'||unistr('\000a')||
'		<div class="rc-body-r">'||unistr('\000a')||
'			<div class="rc-content-main">'||unistr('\000a')||
'				#BODY#'||unistr('\000a')||
'				<div class="clear"></div>'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'			<div class="rc-content-buttons">'||unistr('\000a')||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREA'||
'TE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'			<div class="clear"></div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div class="rc-bottom">'||unistr('\000a')||
'		<div class="rc-bottom-r"></div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region, Bordered'
 ,p_theme_id => 21
 ,p_theme_class_id => 3
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_bordered_alternative
prompt  ......region template 14312245142758127
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14312245142758127 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-blank-alt sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||unistr('\000a')||
'	<div class="rc-gray-top">'||unistr('\000a')||
'		<div class="rc-gray-top-r"></div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div class="rc-body">'||unistr('\000a')||
'		<div class="rc-body-r">'||unistr('\000a')||
'			<div class="rc-content-main">'||unistr('\000a')||
'				#BODY#'||unistr('\000a')||
'				<div class="clear"></div>'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'			<div class="rc-content-buttons">'||unistr('\000a')||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE'||
'##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'			<div class="clear"></div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div class="rc-bottom">'||unistr('\000a')||
'		<div class="rc-bottom-r"></div>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region, Bordered Alternative'
 ,p_theme_id => 21
 ,p_theme_class_id => 3
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region
prompt  ......region template 14312325913758127
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14312325913758127 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||unistr('\000a')||
'    <div class="rc-title">#TITLE#</div>'||unistr('\000a')||
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-body"><div class="rc-body-r">'||unistr('\000a')||
'<div class="rc-content-main">#BODY#<div cla'||
'ss="clear"></div></div></div></div>'||unistr('\000a')||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Wizard Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 12
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region_with_icon
prompt  ......region template 14312447349758127
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 14312447349758127 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||unistr('\000a')||
'    <div class="rc-title">#TITLE#</div>'||unistr('\000a')||
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'  </div></div>'||unistr('\000a')||
'  <div class="rc-body"><div class="rc-body-r">'||unistr('\000a')||
'<div class="rc-content-main">#BODY#<div cla'||
'ss="clear"></div></div></div></div>'||unistr('\000a')||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Wizard Region with Icon'
 ,p_theme_id => 21
 ,p_theme_class_id => 20
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 14313526293758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt1" type="button">'||unistr('\000a')||
'  <span>#TEXT#</span>'||unistr('\000a')||
'</button>';

t2:=t2||'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-default" type="button">'||unistr('\000a')||
'  <span>#TEXT#</span>'||unistr('\000a')||
'</button>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14313526293758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 21,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="button-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/centered_tab_set
prompt  ......list template 14313631027758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'          <li class="#LIST_STATUS#">'||unistr('\000a')||
'            <a href="#LINK#"><span>#TEXT#</span></a>'||unistr('\000a')||
'          </li>';

t2:=t2||'          <li class="#LIST_STATUS#">'||unistr('\000a')||
'            <a href="#LINK#"><span>#TEXT#</span></a>'||unistr('\000a')||
'          </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14313631027758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Centered Tab Set',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="tS">'||unistr('\000a')||
'  <div class="tSO">'||unistr('\000a')||
'    <div class="tSI">'||unistr('\000a')||
'      <div class="tSU">'||unistr('\000a')||
'        <ul>',
  p_list_template_after_rows=>'         </ul>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/dhtml_tree
prompt  ......list template 14313729737758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>14313729737758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Tree',
  p_theme_id  => 21,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/hierarchical_expanding
prompt  ......list template 14313827287758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>14313827287758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanding',
  p_theme_id  => 21,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
prompt  ......list template 14313953146758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="list-item-current">'||unistr('\000a')||
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a></div>'||unistr('\000a')||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||unistr('\000a')||
'</div>';

t2:=t2||'<div class="list-item">'||unistr('\000a')||
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a></div>'||unistr('\000a')||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||unistr('\000a')||
'</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14313953146758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<div class="horizontal-images-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 14314049322758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14314049322758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<div class="horizontal-links-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_tabs_rounded_list
prompt  ......list template 14314128869758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t2:=t2||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14314128869758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Tabs Rounded List',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sHTabs">'||unistr('\000a')||
'	<div class="sHTabsInner">'||unistr('\000a')||
'		<ul>',
  p_list_template_after_rows=>'		</ul>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_tabs_rounded_list_full_width
prompt  ......list template 14314253675758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t2:=t2||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14314253675758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Tabs Rounded List (Full Width)',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sHFWTabs">'||unistr('\000a')||
'<div class="sHTabs">'||unistr('\000a')||
'	<div class="sHTabsInner">'||unistr('\000a')||
'		<ul>',
  p_list_template_after_rows=>'			<li class="last"></li>'||unistr('\000a')||
'		</ul>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/page_level_tabs_list
prompt  ......list template 14314339247758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>';

t2:=t2||'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14314339247758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Page Level Tabs List',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sBTabs">'||unistr('\000a')||
'	<div class="sBTabsInner">'||unistr('\000a')||
'		<ul>',
  p_list_template_after_rows=>'			<li class="last"></li>'||unistr('\000a')||
'		</ul>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu
prompt  ......list template 14314433645758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_21/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />'||unistr('\000a')||
'</li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_21/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>';

wwv_flow_api.create_list_template (
  p_id=>14314433645758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu',
  p_theme_id  => 21,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image
prompt  ......list template 14314553356758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(this,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />'||unistr('\000a')||
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'||unistr('\000a')||
'</div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(this,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />'||unistr('\000a')||
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'||unistr('\000a')||
'</div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>14314553356758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image',
  p_theme_id  => 21,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 14314647517758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t2:=t2||'<li><a href="#LINK#"><span>#TEXT#</span></a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14314647517758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sHorizontalTabs">'||unistr('\000a')||
'	<div class="sHorizontalTabsInner">'||unistr('\000a')||
'		<ul>',
  p_list_template_after_rows=>'		</ul>'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 14314724062758127
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="list-item-current">'||unistr('\000a')||
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></div>'||unistr('\000a')||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||unistr('\000a')||
'</div>';

t2:=t2||'<div class="list-item">'||unistr('\000a')||
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></div>'||unistr('\000a')||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||unistr('\000a')||
'</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14314724062758127 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 21,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<div class="vertical-images-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_list
prompt  ......list template 14314848876758128
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current">#TEXT#</li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14314848876758128 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="vertical-ordered-List">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 14314950253758128
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14314950253758128 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 21,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<div class="vertical-sidebar-list">'||unistr('\000a')||
'<ul>',
  p_list_template_after_rows=>'</ul>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 14315051470758128
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14315051470758128 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets_alternative
prompt  ......list template 14315126280758128
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14315126280758128 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets, Alternative',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullets
prompt  ......list template 14315232723758128
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current">#TEXT#</li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14315232723758128 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullets',
  p_theme_id  => 21,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list
prompt  ......list template 14315332913758128
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current">#TEXT#</li>';

t2:=t2||'<li class="non-current">#TEXT#</li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14315332913758128 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 21,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="wizard-progress-list" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>',
  p_list_template_after_rows=>'</ul></div>',
  p_between_items=>'<li class="progress-indicator">&nbsp;</li>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list_horizontal_train
prompt  ......list template 14315446522758128
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'    <li class="#LIST_STATUS#">'||unistr('\000a')||
'      <span>#TEXT#</span>'||unistr('\000a')||
'    </li>';

t2:=t2||'    <li class="#LIST_STATUS#">'||unistr('\000a')||
'      <span>#TEXT#</span>'||unistr('\000a')||
'    </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>14315446522758128 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List, Horizontal Train',
  p_theme_id  => 21,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="sHorizontalProgressList">'||unistr('\000a')||
'  <ul>',
  p_list_template_after_rows=>'  </ul>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/borderless_report
prompt  ......report template 14312539806758127
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 14312539806758127 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless Report',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>'||unistr('\000a')||
'<td><table class="report-borderless" cellpadding="0" border="0" cellspacing="0" summary="#REGION_TITLE#">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 14312539806758127 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/fixed_headers
prompt  ......report template 14312651443758127
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>';

c2:=c2||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data-alt" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 14312651443758127 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Fixed Headers',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><div class="fixed-header-report"><table cellpadding="0" border="0" cellspacing="0" summary="#REGION_TITLE#">',
  p_row_template_after_rows =>'</tbody></table></div><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>'||unistr('\000a')||
'',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>'||unistr('\000a')||
'',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'||unistr('\000a')||
'',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#D6D6D6',
  p_row_style_checked=>'#D6D6D6',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 14312651443758127 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>'||unistr('\000a')||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 14312724286758127
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 14312724286758127 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="horizontal-border" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table cellpadding="0" cellspacing="0" border="0" class="report-standard" summary="#REGION_TITLE#">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#ccc',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 14312724286758127 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 14312825992758127
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>#COLUMN_VALUE#</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 14312825992758127 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'<tr><td><ul class="t1OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'NOT_CONDITIONAL',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'NOT_CONDITIONAL',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 14312825992758127 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'OMIT');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/search_results_report_select_link_text_link_target_detail1_detail2_last_modified
prompt  ......report template 14312935731758127
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>'||unistr('\000a')||
'<span class="title"><a href="#2#">#1#</a></span>'||unistr('\000a')||
'<span class="description"><span class="last_modified">#5#</span>#3#</span>'||unistr('\000a')||
'<span class="type">#4#</span>'||unistr('\000a')||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 14312935731758127 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="sSearchResultsReport">',
  p_row_template_after_rows =>'</ul> '||unistr('\000a')||
'#PAGINATION#',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 14313045889758127
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 14313045889758127 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="#REGION_TITLE#" class="report-standard">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 14313045889758127 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternating_row_colors
prompt  ......report template 14313150025758127
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" class="data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2:=c2||'<td headers="#COLUMN_HEADER_NAME#" class="dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 14313150025758127 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#<tr><td>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" class="report-standard-alternatingrowcolors" summary="#REGION_TITLE#" >',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 14313150025758127 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>'||unistr('\000a')||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/two_column_portlet
prompt  ......report template 14313252806758127
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<div class="report-row">'||unistr('\000a')||
'  <div class="report-col-hdr">#1#</div>'||unistr('\000a')||
'  <div class="report-col-val">#2#</div>'||unistr('\000a')||
'</div>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 14313252806758127 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Two Column Portlet',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="two-col-report-portlet" #REPORT_ATTRIBUTES# id="#REGION_ID#">',
  p_row_template_after_rows =>'</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs_div
prompt  ......report template 14313346953758127
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<div class="report-row">'||unistr('\000a')||
'  <div class="report-col-hdr">#COLUMN_HEADER#</div>'||unistr('\000a')||
'  <div class="report-col-val">#COLUMN_VALUE#</div>'||unistr('\000a')||
'</div>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 14313346953758127 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs - Div',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="two-col-report-portlet">',
  p_row_template_after_rows =>'</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 21,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs_table
prompt  ......report template 14313427823758127
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><th class="header">#COLUMN_HEADER#</th><td class="data">#COLUMN_VALUE#</td></tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 14313427823758127 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs - Table',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="ValueAttributePairsParent">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="ValueAttributePairs">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/no_label
prompt  ......label template 14315539996758128
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 14315539996758128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="hidden-label">',
  p_template_body2=>'</span>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional
prompt  ......label template 14315654486758128
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 14315654486758128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="optional">',
  p_template_body2=>'</span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_with_help
prompt  ......label template 14315743155758128
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 14315743155758128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required
prompt  ......label template 14315829921758128
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 14315829921758128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_21/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> <span class="required">',
  p_template_body2=>'</span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_with_help
prompt  ......label template 14315930195758128
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 14315930195758128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_21/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> ',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 14316723828758128
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 14316723828758128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<div id="breadcrumb_container">'||unistr('\000a')||
'	<ul>'||unistr('\000a')||
'		<li class="open"><span></span></li>',
  p_current_page_option=>'		<li class="active"><a href="#LINK#">#NAME#</a></li>',
  p_non_current_page_option=>'		<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'		<li class="sep"><span></span></li>',
  p_after_last=>'		<li class="close"><span></span></li>'||unistr('\000a')||
'	</ul>'||unistr('\000a')||
'</div>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
prompt  ......template 14316838874758128
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 14316838874758128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t1HierarchicalMenu">',
  p_current_page_option=>'<li class="t1current">#NAME#</li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'CHILD_MENU',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 14317239148758128
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 14317239148758128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#themes/theme_21/images/sPopupLOVIcon.png',
  p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" media="all"/>'||unistr('\000a')||
'#THEME_CSS#',
  p_page_body_attr=>'onload="first_field()" class="pop-up-lov"',
  p_before_field_text=>'<div class="t1PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<div style="padding:5px 10px; font-size:10px;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="t1PopupBody">',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 14316943197758128
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 14316943197758128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th scope="col" class="DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="CalendarHolder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="Calendar">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'',
  p_day_title_format=> '<div class="DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="Day" valign="top">#TITLE_FORMAT##DATA#',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="Today">#TITLE_FORMAT##DATA#',
  p_weekend_title_format=> '<div class="WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="WeekCalendarHolder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th scope="col" class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="WeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th scope="row" class="Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th scope="col" class="DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="DayCalendar">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="Today">',
  p_daily_time_open_format => '<th scope="row" class="Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_agenda_format => '<table class="ListCalendarHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendar" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>',
  p_agenda_past_day_format => '<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>',
  p_agenda_today_day_format => '<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>',
  p_agenda_future_day_format => '<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>',
  p_agenda_past_entry_format => '<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>',
  p_agenda_today_entry_format => '<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>',
  p_agenda_future_entry_format => '<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>',
  p_month_data_format => '',
  p_month_data_entry_format => '#DATA#',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar_alternative_1
prompt  ......template 14317040584758128
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 14317040584758128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th scope="col" valign="bottom" class="DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="CalendarAlternative1Holder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="CalendarAlternative1">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'',
  p_day_title_format=> '<div class="DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="Day" valign="top" height="100" height="100">#TITLE_FORMAT##DATA#',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="Today">#TITLE_FORMAT##DATA#',
  p_weekend_title_format=> '<div class="WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="WeekCalendarAlternative1Holder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="MonthTitle">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th scope="col" class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="WeekCalendarAlternative1">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th scope="row" class="Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th scope="col" class="DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="DayCalendarAlternative1">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="Today">',
  p_daily_time_open_format => '<th scope="row" class="Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_agenda_format => '<table class="ListCalendarAlternateHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendarAlternate" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>''',
  p_agenda_past_day_format => '<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>',
  p_agenda_today_day_format => '<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>',
  p_agenda_future_day_format => '<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>',
  p_agenda_past_entry_format => '<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>',
  p_agenda_today_entry_format => '<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>',
  p_agenda_future_entry_format => '<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>',
  p_month_data_format => '',
  p_month_data_entry_format => '#DATA#',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/small_calendar
prompt  ......template 14317152006758128
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 14317152006758128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th scope="col" class="day-of-week">#DY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="small-calendar-holder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="month-title">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="small-calendar">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>',
  p_day_title_format=> '<div class="day-title">#DD#</div>',
  p_day_open_format=> '<td class="day" valign="top">#TITLE_FORMAT##DATA#',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="today">#TITLE_FORMAT##DATA#',
  p_weekend_title_format=> '<div class="weekend-day-title">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="weekend-day">#TITLE_FORMAT##DATA#',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="non-day-title">#DD#</div>',
  p_nonday_open_format => '<td class="non-day" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="SmallWeekCalendarHolder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th scope="col" class="DayOfWeek">#DY#<br />#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="SmallWeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="Day" valign="top"><div class="inner">',
  p_weekly_day_close_format => '</div></td>',
  p_weekly_today_open_format => '<td class="t1Today" valign="top"><div class="inner">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="NonDay"><div class="inner">',
  p_weekly_weekend_close_format => '</div></td>',
  p_weekly_time_open_format => '<th scope="row" class="Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th scope="col" class="DayOfWeek">#DY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="SmallDayCalendar">',
  p_daily_month_close_format => '</table></td></tr></table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="Today">',
  p_daily_time_open_format => '<th scope="row" class="Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_agenda_format => '<table class="ListCalendarSmallHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendarSmall" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>''',
  p_agenda_past_day_format => '<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>',
  p_agenda_today_day_format => '<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>',
  p_agenda_future_day_format => '<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>',
  p_agenda_past_entry_format => '<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>',
  p_agenda_today_entry_format => '<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>',
  p_agenda_future_entry_format => '<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>',
  p_month_data_format => '',
  p_month_data_entry_format => '#DATA#',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/scarlet
prompt  ......theme 14317341912758129
begin
wwv_flow_api.create_theme (
  p_id =>14317341912758129 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 21,
  p_theme_name=>'Scarlet',
  p_ui_type_name=>'DESKTOP',
  p_is_locked=>false,
  p_default_page_template=>14309443727758125 + wwv_flow_api.g_id_offset,
  p_error_template=>14308438725758124 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>14309046729758125 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template=>14308052233758124 + wwv_flow_api.g_id_offset,
  p_default_button_template=>14316044993758128 + wwv_flow_api.g_id_offset,
  p_default_region_template=>14311448951758126 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>14310443227758126 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>14310554254758126 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>14311448951758126 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>14311448951758126 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>14312325913758127 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>14309936088758126 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>14310354937758126 + wwv_flow_api.g_id_offset,
  p_default_irr_template=>14311052253758126 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>14313045889758127 + wwv_flow_api.g_id_offset,
  p_default_label_template=>14315743155758128 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>14316723828758128 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>14316943197758128 + wwv_flow_api.g_id_offset,
  p_default_list_template=>14315051470758128 + wwv_flow_api.g_id_offset,
  p_default_option_label=>14315743155758128 + wwv_flow_api.g_id_offset,
  p_default_header_template=>null + wwv_flow_api.g_id_offset,
  p_default_footer_template=>null + wwv_flow_api.g_id_offset,
  p_default_page_transition=>'NONE',
  p_default_popup_transition=>'NONE',
  p_default_required_label=>14315930195758128 + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...theme styles
--
 
begin
 
null;
 
end;
/

prompt  ...theme display points
--
 
begin
 
null;
 
end;
/

prompt  ...build options
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/language
prompt  ...Language Maps for Application 115
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...text messages
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations
--
prompt  ...Shortcuts
--
--application/shared_components/user_interface/shortcuts/delete_confirm_msg
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'Would you like to perform this delete action?';

wwv_flow_api.create_shortcut (
 p_id=> 18943623459577008 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'DELETE_CONFIRM_MSG',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
null;
 
end;
/

--application/shared_components/user_interface/shortcuts/ok_to_get_next_prev_pk_value
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'Are you sure you want to leave this page without saving?';

wwv_flow_api.create_shortcut (
 p_id=> 18948630815577019 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'OK_TO_GET_NEXT_PREV_PK_VALUE',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
null;
 
end;
/

prompt  ...web services (9iR2 or better)
--
prompt  ...shared queries
--
prompt  ...report layouts
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/application_express_authentication
prompt  ......authentication 14317636228758129
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 14317636228758129 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'Application Express Authentication'
 ,p_scheme_type => 'NATIVE_APEX_ACCOUNTS'
 ,p_invalid_session_type => 'LOGIN'
 ,p_use_secure_cookie_yn => 'N'
  );
null;
 
end;
/

--application/shared_components/security/authentication/custom_authentication_scheme
prompt  ......authentication 19098745250044446
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 19098745250044446 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'Custom Authentication Scheme'
 ,p_scheme_type => 'NATIVE_CUSTOM'
 ,p_attribute_03 => 'authenticate_user'
 ,p_attribute_05 => 'N'
 ,p_invalid_session_type => 'LOGIN'
 ,p_use_secure_cookie_yn => 'N'
  );
null;
 
end;
/

prompt  ...ui types
--
 
begin
 
null;
 
end;
/

prompt  ...plugins
--
prompt  ...data loading
--
--application/deployment/definition
prompt  ...application deployment
--
 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
begin
s := null;
wwv_flow_api.create_install (
  p_id => 9570907686229324 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_include_in_export_yn => 'Y',
  p_deinstall_message=> '');
end;
 
 
end;
/

--application/deployment/install
prompt  ...application install scripts
--
--application/deployment/checks
prompt  ...application deployment checks
--
 
begin
 
null;
 
end;
/

--application/deployment/buildoptions
prompt  ...application deployment build options
--
 
begin
 
null;
 
end;
/

prompt  ...post import process
 
begin
 
wwv_flow_api.post_import_process(p_flow_id => wwv_flow.g_flow_id);
null;
 
end;
/

--application/end_environment
commit;
commit;
begin
execute immediate 'begin sys.dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
set define on
prompt  ...done
