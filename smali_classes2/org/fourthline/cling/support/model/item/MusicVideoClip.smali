.class public Lorg/fourthline/cling/support/model/item/MusicVideoClip;
.super Lorg/fourthline/cling/support/model/item/VideoItem;
.source "MusicVideoClip.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.videoItem.musicVideoClip"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>()V

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p5}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 50
    sget-object p1, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

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

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 80
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtists()[Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 2

    .line 58
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/PersonWithRole;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getContributors()[Lorg/fourthline/cling/support/model/Person;
    .locals 2

    .line 127
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 140
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstArtist()Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 1

    .line 54
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstContributor()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .line 123
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstScheduledEndTime()Ljava/lang/String;
    .locals 1

    .line 106
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstScheduledStartTime()Ljava/lang/String;
    .locals 1

    .line 89
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledEndTimes()[Ljava/lang/String;
    .locals 2

    .line 110
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledStartTimes()[Ljava/lang/String;
    .locals 2

    .line 93
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getStorageMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 71
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/MusicVideoClip;
    .locals 1

    .line 84
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setArtists([Lorg/fourthline/cling/support/model/PersonWithRole;)Lorg/fourthline/cling/support/model/item/MusicVideoClip;
    .locals 4

    .line 63
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 64
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 65
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setContributors([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/item/MusicVideoClip;
    .locals 4

    .line 132
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 133
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 134
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/MusicVideoClip;
    .locals 1

    .line 144
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setScheduledEndTimes([Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/MusicVideoClip;
    .locals 4

    .line 115
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 116
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 117
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setScheduledStartTimes([Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/MusicVideoClip;
    .locals 4

    .line 98
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 99
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 100
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setStorageMedium(Lorg/fourthline/cling/support/model/StorageMedium;)Lorg/fourthline/cling/support/model/item/MusicVideoClip;
    .locals 1

    .line 75
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
