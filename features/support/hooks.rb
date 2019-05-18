After('@logout') do
    find(:xpath, "//span[@class='user-popover-menu popover-menu-button main-popover-menu-button']").click
    click_link 'Sair'
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[A^Za-z0-9]/,'').downcase!
    nome_cenario = scenario.name.gsub(' ','_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Print evidencia')
end