.class public Lorg/fourthline/cling/support/model/item/PlaylistItem;
.super Lorg/fourthline/cling/support/model/item/Item;
.source "PlaylistItem.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.playlistItem"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/item/PlaylistItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/item/Item;-><init>()V

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/item/PlaylistItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 6

    .line 49
    sget-object v5, Lorg/fourthline/cling/support/model/item/PlaylistItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;)V

    if-eqz p5, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->getResources()Ljava/util/List;

    move-result-object p1

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 6

    .line 45
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/PlaylistItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/item/Item;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    return-void
.end method


# virtual methods
.method public getArtists()[Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 2

    .line 60
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/PersonWithRole;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 126
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 90
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstArtist()Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 1

    .line 56
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 1

    .line 73
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 2

    .line 77
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 108
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .line 99
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStorageMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 117
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setArtists([Lorg/fourthline/cling/support/model/PersonWithRole;)Lorg/fourthline/cling/support/model/item/PlaylistItem;
    .locals 4

    .line 65
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 66
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 67
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/PlaylistItem;
    .locals 1

    .line 130
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/PlaylistItem;
    .locals 1

    .line 94
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setGenres([Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/PlaylistItem;
    .locals 4

    .line 82
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 83
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 84
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/PlaylistItem;
    .locals 1

    .line 112
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setLongDescription(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/PlaylistItem;
    .locals 1

    .line 103
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setStorageMedium(Lorg/fourthline/cling/support/model/StorageMedium;)Lorg/fourthline/cling/support/model/item/PlaylistItem;
    .locals 1

    .line 121
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
