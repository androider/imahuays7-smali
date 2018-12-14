.class public Lorg/fourthline/cling/support/lastchange/LastChange;
.super Ljava/lang/Object;
.source "LastChange.java"


# instance fields
.field private final event:Lorg/fourthline/cling/support/lastchange/Event;

.field private final parser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

.field private previousValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This constructor is only for service binding detection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V
    .locals 1

    .line 60
    new-instance v0, Lorg/fourthline/cling/support/lastchange/Event;

    invoke-direct {v0}, Lorg/fourthline/cling/support/lastchange/Event;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/lastchange/LastChange;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/Event;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->parse(Ljava/lang/String;)Lorg/fourthline/cling/support/lastchange/Event;

    move-result-object p2

    iput-object p2, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    goto :goto_0

    .line 67
    :cond_0
    new-instance p2, Lorg/fourthline/cling/support/lastchange/Event;

    invoke-direct {p2}, Lorg/fourthline/cling/support/lastchange/Event;-><init>()V

    iput-object p2, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    .line 69
    :goto_0
    iput-object p1, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->parser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/Event;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->parser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    .line 56
    iput-object p2, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    return-void
.end method


# virtual methods
.method public declared-synchronized fire(Ljava/beans/PropertyChangeSupport;)V
    .locals 3

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChange;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "LastChange"

    .line 113
    iget-object v2, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->previousValue:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChange;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 110
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventedValue(ILjava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EV:",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">(I",
            "Ljava/lang/Class<",
            "TEV;>;)TEV;"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/support/lastchange/LastChange;->getEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;
    .locals 1
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

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/support/lastchange/Event;->getEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getEventedValues(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)[Lorg/fourthline/cling/support/lastchange/EventedValue;
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceID(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/lastchange/InstanceID;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/support/lastchange/EventedValue;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/support/lastchange/EventedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 97
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getInstanceIDs()[Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 3

    monitor-enter p0

    .line 90
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v1, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/support/lastchange/InstanceID;

    .line 92
    invoke-virtual {v2}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 89
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChange;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->previousValue:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/Event;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 72
    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized setEventedValue(I[Lorg/fourthline/cling/support/lastchange/EventedValue;)V
    .locals 3

    monitor-enter p0

    .line 78
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/support/lastchange/LastChange;->setEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;[Lorg/fourthline/cling/support/lastchange/EventedValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized setEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;[Lorg/fourthline/cling/support/lastchange/EventedValue;)V
    .locals 4

    monitor-enter p0

    .line 82
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 84
    iget-object v3, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v3, p1, v2}, Lorg/fourthline/cling/support/lastchange/Event;->setEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/EventedValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 81
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/Event;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 122
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->parser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    iget-object v1, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->generate(Lorg/fourthline/cling/support/lastchange/Event;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 124
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 119
    monitor-exit p0

    throw v0
.end method
