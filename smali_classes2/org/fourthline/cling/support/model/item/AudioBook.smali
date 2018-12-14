.class public Lorg/fourthline/cling/support/model/item/AudioBook;
.super Lorg/fourthline/cling/support/model/item/AudioItem;
.source "AudioBook.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.audioItem.audioBook"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/item/AudioBook;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/item/AudioItem;-><init>()V

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/item/AudioBook;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/Person;Lorg/fourthline/cling/support/model/Person;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p8

    .line 52
    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 53
    sget-object p1, Lorg/fourthline/cling/support/model/item/AudioBook;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/item/AudioBook;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    if-eqz p5, :cond_0

    .line 55
    new-instance p1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-direct {p1, p5}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/item/AudioBook;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    :cond_0
    if-eqz p6, :cond_1

    .line 57
    new-instance p1, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {p1, p6}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/item/AudioBook;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    :cond_1
    if-eqz p7, :cond_2

    .line 59
    invoke-virtual {p0, p7}, Lorg/fourthline/cling/support/model/item/AudioBook;->setDate(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/AudioBook;

    :cond_2
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 9

    .line 48
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/fourthline/cling/support/model/Person;

    move-object v0, p5

    invoke-direct {v5, v0}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    new-instance v6, Lorg/fourthline/cling/support/model/Person;

    move-object v0, p6

    invoke-direct {v6, v0}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/item/AudioBook;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/Person;Lorg/fourthline/cling/support/model/Person;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 9

    .line 44
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/item/AudioBook;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/Person;Lorg/fourthline/cling/support/model/Person;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/item/AudioItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    return-void
.end method


# virtual methods
.method public getContributors()[Lorg/fourthline/cling/support/model/Person;
    .locals 2

    .line 93
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 94
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

    .line 106
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstContributor()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .line 89
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstProducer()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .line 72
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getProducers()[Lorg/fourthline/cling/support/model/Person;
    .locals 2

    .line 76
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getStorageMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 63
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setContributors([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/item/AudioBook;
    .locals 4

    .line 98
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 99
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 100
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/AudioBook;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/AudioBook;
    .locals 1

    .line 110
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setProducers([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/item/AudioBook;
    .locals 4

    .line 81
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 82
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 83
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/AudioBook;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setStorageMedium(Lorg/fourthline/cling/support/model/StorageMedium;)Lorg/fourthline/cling/support/model/item/AudioBook;
    .locals 1

    .line 67
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
