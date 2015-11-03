module ApplicationHelper

  def randomized_background_image
    images = ["https://wallpaperscraft.com/image/star_nebula_glow_94217_1920x1080.jpg", "https://wallpaperscraft.com/image/milky_way_stars_night_sky_space_97654_1600x1200.jpg", "https://wallpaperscraft.com/image/space_planet_light_galaxy_94490_1600x1200.jpg", "https://wallpaperscraft.com/image/space_universe_nebula_star_light_95356_1600x1200.jpg", "https://wallpaperscraft.com/image/space_planet_light_82977_1600x1200.jpg", "https://wallpaperscraft.com/image/space_art_universe_97750_1600x1200.jpg", "https://wallpaperscraft.com/image/planet_craters_space_light_61032_1600x1200.jpg"]
    images[rand(images.size)]
  end
end
