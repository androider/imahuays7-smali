.class public abstract Lorg/fourthline/cling/support/model/DIDLObject;
.super Ljava/lang/Object;
.source "DIDLObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/model/DIDLObject$Class;,
        Lorg/fourthline/cling/support/model/DIDLObject$Property;
    }
.end annotation


# instance fields
.field protected clazz:Lorg/fourthline/cling/support/model/DIDLObject$Class;

.field protected creator:Ljava/lang/String;

.field protected descMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;"
        }
    .end annotation
.end field

.field protected id:Ljava/lang/String;

.field protected parentID:Ljava/lang/String;

.field protected properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;"
        }
    .end annotation
.end field

.field protected resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/Res;",
            ">;"
        }
    .end annotation
.end field

.field protected restricted:Z

.field protected title:Ljava/lang/String;

.field protected writeStatus:Lorg/fourthline/cling/support/model/WriteStatus;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 645
    iput-boolean v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->restricted:Z

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/fourthline/cling/support/model/WriteStatus;",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/Res;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;)V"
        }
    .end annotation

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 645
    iput-boolean v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->restricted:Z

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    .line 672
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    .line 673
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DIDLObject;->parentID:Ljava/lang/String;

    .line 674
    iput-object p3, p0, Lorg/fourthline/cling/support/model/DIDLObject;->title:Ljava/lang/String;

    .line 675
    iput-object p4, p0, Lorg/fourthline/cling/support/model/DIDLObject;->creator:Ljava/lang/String;

    .line 676
    iput-boolean p5, p0, Lorg/fourthline/cling/support/model/DIDLObject;->restricted:Z

    .line 677
    iput-object p6, p0, Lorg/fourthline/cling/support/model/DIDLObject;->writeStatus:Lorg/fourthline/cling/support/model/WriteStatus;

    .line 678
    iput-object p7, p0, Lorg/fourthline/cling/support/model/DIDLObject;->clazz:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 679
    iput-object p8, p0, Lorg/fourthline/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    .line 680
    iput-object p9, p0, Lorg/fourthline/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    .line 681
    iput-object p10, p0, Lorg/fourthline/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/support/model/DIDLObject;)V
    .locals 11

    .line 658
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getParentID()Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getCreator()Ljava/lang/String;

    move-result-object v4

    .line 662
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->isRestricted()Z

    move-result v5

    .line 663
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getWriteStatus()Lorg/fourthline/cling/support/model/WriteStatus;

    move-result-object v6

    .line 664
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v7

    .line 665
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v8

    .line 666
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v9

    .line 667
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getDescMetadata()Ljava/util/List;

    move-result-object v10

    move-object v0, p0

    .line 658
    invoke-direct/range {v0 .. v10}, Lorg/fourthline/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 1

    .line 878
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getDescMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addProperties([Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 800
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 801
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 776
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addResource(Lorg/fourthline/cling/support/model/Res;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 1

    .line 752
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 885
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 887
    :cond_1
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 889
    iget-object v2, p0, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    iget-object p1, p1, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;
    .locals 1

    .line 757
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->clazz:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 712
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDescMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    return-object v0
.end method

.method public getFirstProperty(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject$Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "TV;>;>;)",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "TV;>;"
        }
    .end annotation

    .line 824
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 825
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "TV;>;>;)TV;"
        }
    .end annotation

    .line 857
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getFirstProperty(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject$Property;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getFirstResource()Lorg/fourthline/cling/support/model/Res;
    .locals 2

    .line 739
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastProperty(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "TV;>;>;)",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "TV;>;"
        }
    .end annotation

    .line 832
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 833
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getParentID()Ljava/lang/String;
    .locals 1

    .line 694
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->parentID:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getProperties(Ljava/lang/Class;)[Lorg/fourthline/cling/support/model/DIDLObject$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "TV;>;>;)[",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "TV;>;"
        }
    .end annotation

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 840
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

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

    check-cast v2, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 841
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 842
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 844
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/support/model/DIDLObject$Property;

    return-object p1
.end method

.method public getPropertiesByNamespace(Ljava/lang/Class;)[Lorg/fourthline/cling/support/model/DIDLObject$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property$NAMESPACE;",
            ">;)[",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "TV;>;"
        }
    .end annotation

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

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

    check-cast v2, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 850
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 851
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 853
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/support/model/DIDLObject$Property;

    return-object p1
.end method

.method public getPropertyValues(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "TV;>;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 863
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties(Ljava/lang/Class;)[Lorg/fourthline/cling/support/model/DIDLObject$Property;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 864
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/Res;",
            ">;"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 703
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteStatus()Lorg/fourthline/cling/support/model/WriteStatus;
    .locals 1

    .line 730
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->writeStatus:Lorg/fourthline/cling/support/model/WriteStatus;

    return-object v0
.end method

.method public hasProperty(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;)Z"
        }
    .end annotation

    .line 817
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 818
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 896
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRestricted()Z
    .locals 1

    .line 721
    iget-boolean v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->restricted:Z

    return v0
.end method

.method public removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;)",
            "Lorg/fourthline/cling/support/model/DIDLObject;"
        }
    .end annotation

    .line 807
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 808
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 810
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 782
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 783
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 784
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 785
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 788
    :cond_2
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public replaceProperties(Ljava/lang/Class;[Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;[",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ")",
            "Lorg/fourthline/cling/support/model/DIDLObject;"
        }
    .end annotation

    .line 793
    array-length v0, p2

    if-nez v0, :cond_0

    return-object p0

    .line 794
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/DIDLObject;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 795
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperties([Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    move-result-object p1

    return-object p1
.end method

.method public setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .line 761
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->clazz:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-object p0
.end method

.method public setCreator(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .line 716
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->creator:Ljava/lang/String;

    return-object p0
.end method

.method public setDescMetadata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;)V"
        }
    .end annotation

    .line 874
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .line 689
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setParentID(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .line 698
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->parentID:Ljava/lang/String;

    return-object p0
.end method

.method public setProperties(Ljava/util/List;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;)",
            "Lorg/fourthline/cling/support/model/DIDLObject;"
        }
    .end annotation

    .line 770
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    return-object p0
.end method

.method public setResources(Ljava/util/List;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/Res;",
            ">;)",
            "Lorg/fourthline/cling/support/model/DIDLObject;"
        }
    .end annotation

    .line 747
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    return-object p0
.end method

.method public setRestricted(Z)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .line 725
    iput-boolean p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->restricted:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .line 707
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setWriteStatus(Lorg/fourthline/cling/support/model/WriteStatus;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .line 734
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->writeStatus:Lorg/fourthline/cling/support/model/WriteStatus;

    return-object p0
.end method
