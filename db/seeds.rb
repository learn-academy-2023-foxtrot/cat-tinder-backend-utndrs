utndrs = [
    {
        name: 'Paularts',
        age: 26,
        content: 'Arts & Crafts',
        image: 'https://unsplash.com/photos/ia1p6fqftnQ'
    },
    {
        name: 'Jb gaming',
        age: 34,
        content: 'Video games content',
        image: 'https://unsplash.com/photos/m3hn2Kn5Bns'
    },
    {
        name: 'Dougmusic',
        age: 42,
        content: 'music content',
        image: 'https://unsplash.com/photos/8uPkxBZSY_c'
    }
    
]

utndrs.each do |each_utndr|
    Utndr.create each_utndr
    puts "creating utndr #{each_utndr}"
end