library(tmap)
data("World")


World$logarea <- log(World$area)
tmap_style("classic") #classic and cobalt
tm_shape(World) +
     
    tm_polygons("continent", title = "")+
    tm_shape(World) +
    tm_borders("grey40", lwd = 4, lty = 2)+
    tm_compass(type = "4star", show.labels = 2,  text.size = 3, position=c("right", "top"))+
    # tm_legend(show=FALSE) +
    tm_text("name", size = "logarea",scale = 2.5, remove.overlap = F, legend.size.show = F) +
    tm_layout("Made by Musaddiqur Rahman Ovi \novirahman.github.io",title.size = 3,
              title.position = c("right", "bottom"),
              legend.text.size = 3,
              frame = FALSE) 


# tmap_save(filename =  "wmap_dark.png", height = 1080*2, width = 1920*2, scale = .2)


tmap_save(filename =  "wmap_light.png", height = 1080*2, width = 1920*2, scale = .2)
