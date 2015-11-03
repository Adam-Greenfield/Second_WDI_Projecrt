module ApplicationHelper

  def randomized_background_image
    images = ["https://wallpaperscraft.com/image/star_nebula_glow_94217_1920x1080.jpg", "https://wallpaperscraft.com/image/milky_way_stars_night_sky_space_97654_1600x1200.jpg", "https://wallpaperscraft.com/image/space_planet_light_galaxy_94490_1600x1200.jpg"]
    images[rand(images.size)]
  end
end
