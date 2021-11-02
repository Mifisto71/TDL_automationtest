class RegistrationForm

    include Capybara::DSL
  
    def initialize
      @section_titles = Element.new(:css, 'h1.heading1')
      @first_name = Element.new(:css,'#AccountFrm_firstname')
      @last_name = Element.new(:css,'#AccountFrm_lastname')
      @email = Element.new(:css,'#AccountFrm_email')
      @address = Element.new(:css,'#AccountFrm_address_1')
      @city = Element.new(:css,'#AccountFrm_city')
      @zip_code = Element.new(:css,'#AccountFrm_postcode')
      @login_name = Element.new(:css,'#AccountFrm_loginname')
      @password1 = Element.new(:css,'#AccountFrm_password')
      @password2 = Element.new(:css,'#AccountFrm_confirm')
      @country = Element.new(:css,'#AccountFrm_country_id')
      @country_options = Element.new(:css,'#AccountFrm_country_id>option')
      @region=Element.new(:css,'#AccountFrm_zone_id')
      @region_options=Element.new(:css,'#AccountFrm_zone_id>option')
      @policy_checkbox=Element.new(:css,'#AccountFrm_agree')
      @continue_button=Element.new(:css, 'button[title="Continue"]')
    end
  
    def contains_section?(text)
        @section_titles.element_on_page? text: text, visible: true
    end
  
    def visit
      Capybara.visit('/index.php?rt=account/create')
    end

    def enter_first_name(text)
      @first_name.set(text)
    end
    
    def enter_last_name(text)
      @last_name.set(text)
    end

    def enter_email(text)
      @email.set(text)
    end

    def enter_address(text)
      @address.set(text)
    end

    def enter_city(text)
      @city.set(text)
    end

    def enter_zip_code(text)
      @zip_code.set(text)
    end

    def enter_login_name(text)
      @login_name.set(text)
    end

    def enter_password(text)
      @password1.set(text)
    end

    def enter_password_confirm(text)
      @password2.set(text)
    end

    def select_country(text)
      @country.click
      Capybara.find(@country_options.path, text: /#{text}/i).click
    end

    def select_region(text)
      @region.click
      Capybara.find(@region_options.path, text: /#{text}/i).click
    end

    def select_policy_checkbox
      @policy_checkbox.click
    end
    def continue_button_click
      @continue_button.click
    end
  end