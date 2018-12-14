.class public Lorg/fourthline/cling/support/model/container/MusicAlbum;
.super Lorg/fourthline/cling/support/model/container/Album;
.source "MusicAlbum.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.album.musicAlbum"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/container/MusicAlbum;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/container/Album;-><init>()V

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/container/MusicAlbum;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    .line 53
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/model/container/MusicAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/item/MusicTrack;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct/range {p0 .. p5}, Lorg/fourthline/cling/support/model/container/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    sget-object p1, Lorg/fourthline/cling/support/model/container/MusicAlbum;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 59
    invoke-virtual {p0, p6}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->addMusicTracks(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    .line 45
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/model/container/MusicAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/container/Container;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/item/MusicTrack;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/model/container/MusicAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/container/Container;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/container/Album;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    return-void
.end method


# virtual methods
.method public addMusicTracks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/item/MusicTrack;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/support/model/item/MusicTrack;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/support/model/item/MusicTrack;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->addMusicTracks([Lorg/fourthline/cling/support/model/item/MusicTrack;)V

    return-void
.end method

.method public addMusicTracks([Lorg/fourthline/cling/support/model/item/MusicTrack;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 153
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 154
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/support/model/item/MusicTrack;->setAlbum(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/MusicTrack;

    .line 155
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/container/Container;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAlbumArtURIs()[Ljava/net/URI;
    .locals 2

    .line 118
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/URI;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URI;

    return-object v0
.end method

.method public getArtists()[Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 2

    .line 67
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/PersonWithRole;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstAlbumArtURI()Ljava/net/URI;
    .locals 1

    .line 114
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getFirstArtist()Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 1

    .line 63
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 1

    .line 80
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstProducer()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .line 97
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 2

    .line 84
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getMusicTracks()[Lorg/fourthline/cling/support/model/item/MusicTrack;
    .locals 4

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/support/model/item/Item;

    .line 142
    instance-of v3, v2, Lorg/fourthline/cling/support/model/item/MusicTrack;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/fourthline/cling/support/model/item/MusicTrack;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/item/MusicTrack;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/item/MusicTrack;

    return-object v0
.end method

.method public getProducers()[Lorg/fourthline/cling/support/model/Person;
    .locals 2

    .line 101
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getToc()Ljava/lang/String;
    .locals 1

    .line 131
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$TOC;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumArtURIs([Ljava/net/URI;)Lorg/fourthline/cling/support/model/container/MusicAlbum;
    .locals 4

    .line 123
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 125
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setArtists([Lorg/fourthline/cling/support/model/PersonWithRole;)Lorg/fourthline/cling/support/model/container/MusicAlbum;
    .locals 4

    .line 72
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 74
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setGenres([Ljava/lang/String;)Lorg/fourthline/cling/support/model/container/MusicAlbum;
    .locals 4

    .line 89
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 90
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 91
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setProducers([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/container/MusicAlbum;
    .locals 4

    .line 106
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 107
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 108
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setToc(Ljava/lang/String;)Lorg/fourthline/cling/support/model/container/MusicAlbum;
    .locals 1

    .line 135
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$TOC;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$TOC;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
