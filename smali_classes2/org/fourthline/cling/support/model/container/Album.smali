.class public Lorg/fourthline/cling/support/model/container/Album;
.super Lorg/fourthline/cling/support/model/container/Container;
.source "Album.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.album"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/container/Album;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/container/Album;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    .line 47
    sget-object v5, Lorg/fourthline/cling/support/model/container/Album;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    .line 43
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/container/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/container/Container;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    return-void
.end method


# virtual methods
.method public getContributors()[Lorg/fourthline/cling/support/model/Person;
    .locals 2

    .line 125
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 126
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

    .line 78
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 51
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstContributor()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .line 121
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstPublisher()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .line 138
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstRelation()Ljava/net/URI;
    .locals 1

    .line 87
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getFirstRights()Ljava/lang/String;
    .locals 1

    .line 104
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .line 60
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPublishers()[Lorg/fourthline/cling/support/model/Person;
    .locals 2

    .line 142
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getRelations()[Ljava/net/URI;
    .locals 2

    .line 91
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/URI;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URI;

    return-object v0
.end method

.method public getRights()[Ljava/lang/String;
    .locals 2

    .line 108
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 109
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

    .line 69
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setContributors([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/container/Album;
    .locals 4

    .line 130
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 132
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/container/Album;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lorg/fourthline/cling/support/model/container/Album;
    .locals 1

    .line 82
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/fourthline/cling/support/model/container/Album;
    .locals 1

    .line 55
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setLongDescription(Ljava/lang/String;)Lorg/fourthline/cling/support/model/container/Album;
    .locals 1

    .line 64
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setPublishers([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/container/Album;
    .locals 4

    .line 147
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 148
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 149
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/container/Album;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setRelations([Ljava/net/URI;)Lorg/fourthline/cling/support/model/container/Album;
    .locals 4

    .line 96
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 97
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 98
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/container/Album;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setRights([Ljava/lang/String;)Lorg/fourthline/cling/support/model/container/Album;
    .locals 4

    .line 113
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 115
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/container/Album;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setStorageMedium(Lorg/fourthline/cling/support/model/StorageMedium;)Lorg/fourthline/cling/support/model/container/Album;
    .locals 1

    .line 73
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Album;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
