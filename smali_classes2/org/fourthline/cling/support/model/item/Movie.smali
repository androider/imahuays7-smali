.class public Lorg/fourthline/cling/support/model/item/Movie;
.super Lorg/fourthline/cling/support/model/item/VideoItem;
.source "Movie.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.videoItem.movie"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/item/Movie;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>()V

    .line 34
    sget-object v0, Lorg/fourthline/cling/support/model/item/Movie;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 47
    sget-object p1, Lorg/fourthline/cling/support/model/item/Movie;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/item/Movie;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 6

    .line 42
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/Movie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    return-void
.end method


# virtual methods
.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 69
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDVDRegionCode()Ljava/lang/Integer;
    .locals 1

    .line 60
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getFirstScheduledEndTime()Ljava/lang/String;
    .locals 1

    .line 95
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstScheduledStartTime()Ljava/lang/String;
    .locals 1

    .line 78
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledEndTimes()[Ljava/lang/String;
    .locals 2

    .line 99
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 100
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

    .line 82
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 83
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

    .line 51
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setChannelName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/Movie;
    .locals 1

    .line 73
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setDVDRegionCode(Ljava/lang/Integer;)Lorg/fourthline/cling/support/model/item/Movie;
    .locals 1

    .line 64
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setScheduledEndTimes([Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/Movie;
    .locals 4

    .line 104
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 105
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 106
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/Movie;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setScheduledStartTimes([Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/Movie;
    .locals 4

    .line 87
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 88
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 89
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/Movie;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setStorageMedium(Lorg/fourthline/cling/support/model/StorageMedium;)Lorg/fourthline/cling/support/model/item/Movie;
    .locals 1

    .line 55
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Movie;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
