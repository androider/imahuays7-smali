.class public Lorg/fourthline/cling/support/model/item/VideoItem;
.super Lorg/fourthline/cling/support/model/item/Item;
.source "VideoItem.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.videoItem"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/item/VideoItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/item/Item;-><init>()V

    .line 38
    sget-object v0, Lorg/fourthline/cling/support/model/item/VideoItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 6

    .line 50
    sget-object v5, Lorg/fourthline/cling/support/model/item/VideoItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;)V

    if-eqz p5, :cond_0

    .line 52
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getResources()Ljava/util/List;

    move-result-object p1

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 6

    .line 46
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/item/Item;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    return-void
.end method


# virtual methods
.method public getActors()[Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 2

    .line 122
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/PersonWithRole;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 74
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDirectors()[Lorg/fourthline/cling/support/model/Person;
    .locals 2

    .line 139
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstActor()Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 1

    .line 118
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstDirector()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .line 135
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 1

    .line 57
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstProducer()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .line 92
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstPublisher()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .line 152
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstRelation()Ljava/net/URI;
    .locals 1

    .line 178
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 2

    .line 61
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 62
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

    .line 169
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .line 83
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProducers()[Lorg/fourthline/cling/support/model/Person;
    .locals 2

    .line 96
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getPublishers()[Lorg/fourthline/cling/support/model/Person;
    .locals 2

    .line 156
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .line 109
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRelations()[Ljava/net/URI;
    .locals 2

    .line 182
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/URI;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URI;

    return-object v0
.end method

.method public setActors([Lorg/fourthline/cling/support/model/PersonWithRole;)Lorg/fourthline/cling/support/model/item/VideoItem;
    .locals 4

    .line 127
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 128
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 129
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/VideoItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/VideoItem;
    .locals 1

    .line 78
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setDirectors([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/item/VideoItem;
    .locals 4

    .line 144
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 145
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 146
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/VideoItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setGenres([Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/VideoItem;
    .locals 4

    .line 66
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 68
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/VideoItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/VideoItem;
    .locals 1

    .line 173
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setLongDescription(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/VideoItem;
    .locals 1

    .line 87
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setProducers([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/item/VideoItem;
    .locals 4

    .line 101
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 102
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 103
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/VideoItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setPublishers([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/item/VideoItem;
    .locals 4

    .line 161
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 162
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 163
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/VideoItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setRating(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/VideoItem;
    .locals 1

    .line 113
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setRelations([Ljava/net/URI;)Lorg/fourthline/cling/support/model/item/VideoItem;
    .locals 4

    .line 187
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 188
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 189
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/VideoItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
