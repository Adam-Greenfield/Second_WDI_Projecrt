module ApplicationHelper

  def randomized_background_image
    images = ["https://wallpaperscraft.com/image/star_nebula_glow_94217_1920x1080.jpg", "https://wallpaperscraft.com/image/planet_craters_space_light_61032_1920x1080.jpg", "https://wallpaperscraft.com/image/galaxy_stars_light_nebula_61697_1920x1080.jpg"]
    images[rand(images.size)]
  end
end
