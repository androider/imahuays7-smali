.class public Lorg/fourthline/cling/support/lastchange/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field protected instanceIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/lastchange/InstanceID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/lastchange/InstanceID;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lorg/fourthline/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    return-void
.end method

.method public getEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EV:",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">(",
            "Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;",
            "Ljava/lang/Class<",
            "TEV;>;)TEV;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/lastchange/InstanceID;

    .line 77
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/support/lastchange/EventedValue;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInstanceID(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/lastchange/InstanceID;
    .locals 3

    .line 43
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/lastchange/InstanceID;

    .line 44
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInstanceIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/lastchange/InstanceID;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    return-object v0
.end method

.method public hasChanges()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/lastchange/InstanceID;

    .line 89
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/EventedValue;)V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

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

    check-cast v2, Lorg/fourthline/cling/support/lastchange/InstanceID;

    .line 56
    invoke-virtual {v2}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 61
    new-instance v1, Lorg/fourthline/cling/support/lastchange/InstanceID;

    invoke-direct {v1, p1}, Lorg/fourthline/cling/support/lastchange/InstanceID;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 62
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_2
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 66
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/EventedValue;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
