.class public final Lio/rx_cache2/internal/Record;
.super Ljava/lang/Object;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final dataClassName:Ljava/lang/String;

.field private final dataCollectionClassName:Ljava/lang/String;

.field private final dataKeyMapClassName:Ljava/lang/String;

.field private expirable:Ljava/lang/Boolean;

.field private lifeTime:Ljava/lang/Long;

.field private transient sizeOnMb:F

.field private source:Lio/rx_cache2/Source;

.field private final timeAtWhichWasPersisted:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lio/rx_cache2/internal/Record;->data:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 53
    iput-wide v1, p0, Lio/rx_cache2/internal/Record;->timeAtWhichWasPersisted:J

    .line 54
    iput-object v0, p0, Lio/rx_cache2/internal/Record;->dataClassName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lio/rx_cache2/internal/Record;->dataCollectionClassName:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lio/rx_cache2/internal/Record;->dataKeyMapClassName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/Record;->expirable:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/rx_cache2/internal/Record;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/rx_cache2/internal/Record;->data:Ljava/lang/Object;

    .line 62
    iput-object p2, p0, Lio/rx_cache2/internal/Record;->expirable:Ljava/lang/Boolean;

    .line 63
    iput-object p3, p0, Lio/rx_cache2/internal/Record;->lifeTime:Ljava/lang/Long;

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lio/rx_cache2/internal/Record;->timeAtWhichWasPersisted:J

    .line 65
    sget-object p2, Lio/rx_cache2/Source;->MEMORY:Lio/rx_cache2/Source;

    iput-object p2, p0, Lio/rx_cache2/internal/Record;->source:Lio/rx_cache2/Source;

    .line 67
    const-class p2, Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result p3

    .line 69
    const-class v0, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 72
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataKeyMapClassName:Ljava/lang/String;

    .line 73
    check-cast p1, Ljava/util/List;

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 75
    const-class p2, Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/rx_cache2/internal/Record;->dataCollectionClassName:Ljava/lang/String;

    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/rx_cache2/internal/Record;->dataClassName:Ljava/lang/String;

    goto/16 :goto_3

    .line 79
    :cond_0
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataClassName:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataCollectionClassName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1
    if-eqz p3, :cond_3

    .line 83
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataKeyMapClassName:Ljava/lang/String;

    .line 84
    move-object p2, p1

    check-cast p2, [Ljava/lang/Object;

    .line 85
    array-length p3, p2

    if-lez p3, :cond_2

    .line 86
    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/rx_cache2/internal/Record;->dataClassName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/rx_cache2/internal/Record;->dataCollectionClassName:Ljava/lang/String;

    goto/16 :goto_3

    .line 89
    :cond_2
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataClassName:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataCollectionClassName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_3
    if-eqz v0, :cond_b

    .line 93
    check-cast p1, Ljava/util/Map;

    .line 94
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_a

    .line 95
    const-class p2, Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/rx_cache2/internal/Record;->dataCollectionClassName:Ljava/lang/String;

    .line 97
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 101
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 104
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p3, :cond_5

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    .line 111
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, v2

    :goto_1
    iput-object p1, p0, Lio/rx_cache2/internal/Record;->dataClassName:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 112
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_7
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataKeyMapClassName:Ljava/lang/String;

    goto :goto_3

    .line 105
    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz p2, :cond_9

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq p2, v1, :cond_9

    move-object p2, v2

    :cond_9
    if-eqz p3, :cond_4

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p3, v0, :cond_4

    move-object p3, v2

    goto :goto_0

    .line 114
    :cond_a
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataClassName:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataCollectionClassName:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataKeyMapClassName:Ljava/lang/String;

    goto :goto_3

    .line 119
    :cond_b
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataKeyMapClassName:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/rx_cache2/internal/Record;->dataClassName:Ljava/lang/String;

    .line 121
    iput-object v2, p0, Lio/rx_cache2/internal/Record;->dataCollectionClassName:Ljava/lang/String;

    :goto_3
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/rx_cache2/internal/Record;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDataClassName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lio/rx_cache2/internal/Record;->dataClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataCollectionClassName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lio/rx_cache2/internal/Record;->dataCollectionClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataKeyMapClassName()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lio/rx_cache2/internal/Record;->dataKeyMapClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirable()Ljava/lang/Boolean;
    .locals 1

    .line 170
    iget-object v0, p0, Lio/rx_cache2/internal/Record;->expirable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLifeTime()Ljava/lang/Long;
    .locals 1

    .line 142
    iget-object v0, p0, Lio/rx_cache2/internal/Record;->lifeTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getSizeOnMb()F
    .locals 1

    .line 150
    iget v0, p0, Lio/rx_cache2/internal/Record;->sizeOnMb:F

    return v0
.end method

.method public getSource()Lio/rx_cache2/Source;
    .locals 1

    .line 126
    iget-object v0, p0, Lio/rx_cache2/internal/Record;->source:Lio/rx_cache2/Source;

    return-object v0
.end method

.method public getTimeAtWhichWasPersisted()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lio/rx_cache2/internal/Record;->timeAtWhichWasPersisted:J

    return-wide v0
.end method

.method public setExpirable(Ljava/lang/Boolean;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lio/rx_cache2/internal/Record;->expirable:Ljava/lang/Boolean;

    return-void
.end method

.method public setLifeTime(Ljava/lang/Long;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lio/rx_cache2/internal/Record;->lifeTime:Ljava/lang/Long;

    return-void
.end method

.method public setSizeOnMb(F)V
    .locals 0

    .line 154
    iput p1, p0, Lio/rx_cache2/internal/Record;->sizeOnMb:F

    return-void
.end method

.method public setSource(Lio/rx_cache2/Source;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lio/rx_cache2/internal/Record;->source:Lio/rx_cache2/Source;

    return-void
.end method
