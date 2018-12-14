.class public Lorg/fourthline/cling/support/model/item/TextItem;
.super Lorg/fourthline/cling/support/model/item/Item;
.source "TextItem.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.textItem"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/item/TextItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/item/Item;-><init>()V

    .line 39
    sget-object v0, Lorg/fourthline/cling/support/model/item/TextItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 6

    .line 51
    sget-object v5, Lorg/fourthline/cling/support/model/item/TextItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;)V

    if-eqz p5, :cond_0

    .line 53
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/item/TextItem;->getResources()Ljava/util/List;

    move-result-object p1

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 6

    .line 47
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/TextItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/item/Item;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    return-void
.end method


# virtual methods
.method public getAuthors()[Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 2

    .line 62
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 63
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

    .line 167
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 168
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

    .line 111
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 75
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstAuthor()Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 1

    .line 58
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstContributor()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .line 163
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstPublisher()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .line 180
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstRelation()Ljava/net/URI;
    .locals 1

    .line 120
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getFirstRights()Ljava/lang/String;
    .locals 1

    .line 137
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 93
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .line 84
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPublishers()[Lorg/fourthline/cling/support/model/Person;
    .locals 2

    .line 184
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 185
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

    .line 154
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRelations()[Ljava/net/URI;
    .locals 2

    .line 124
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 125
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

    .line 141
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 142
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

    .line 102
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setAuthors([Lorg/fourthline/cling/support/model/PersonWithRole;)Lorg/fourthline/cling/support/model/item/TextItem;
    .locals 4

    .line 67
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 68
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 69
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/TextItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setContributors([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/item/TextItem;
    .locals 4

    .line 172
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 173
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 174
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/TextItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/TextItem;
    .locals 1

    .line 115
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/TextItem;
    .locals 1

    .line 79
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/TextItem;
    .locals 1

    .line 97
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setLongDescription(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/TextItem;
    .locals 1

    .line 88
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setPublishers([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/item/TextItem;
    .locals 4

    .line 189
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 190
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 191
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/TextItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setRating(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/TextItem;
    .locals 1

    .line 158
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setRelations([Ljava/net/URI;)Lorg/fourthline/cling/support/model/item/TextItem;
    .locals 4

    .line 129
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 130
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 131
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/TextItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setRights([Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/TextItem;
    .locals 4

    .line 146
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 147
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 148
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/TextItem;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setStorageMedium(Lorg/fourthline/cling/support/model/StorageMedium;)Lorg/fourthline/cling/support/model/item/TextItem;
    .locals 1

    .line 106
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/TextItem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
