After('@logout') do
    find(:xpath, "//span[@class='user-popover-menu popover-menu-button main-popover-menu-button']").click
    click_link 'Sair'
end