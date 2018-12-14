.class public Lorg/seamless/swing/logging/LogTableModel;
.super Ljavax/swing/table/AbstractTableModel;
.source "LogTableModel.java"


# instance fields
.field protected maxAgeSeconds:I

.field protected messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected paused:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lorg/seamless/swing/logging/LogTableModel;->paused:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    .line 32
    iput p1, p0, Lorg/seamless/swing/logging/LogTableModel;->maxAgeSeconds:I

    return-void
.end method


# virtual methods
.method public clearMessages()V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableModel;->fireTableDataChanged()V

    return-void
.end method

.method public getColumnClass(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 92
    const-class p1, Lorg/seamless/swing/logging/LogMessage;

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Message"

    return-object p1

    :pswitch_0
    const-string p1, "Source"

    return-object p1

    :pswitch_1
    const-string p1, "Thread"

    return-object p1

    :pswitch_2
    const-string p1, "Time"

    return-object p1

    :pswitch_3
    const-string p1, ""

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/seamless/swing/logging/LogTableModel;->maxAgeSeconds:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p2, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isPaused()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/seamless/swing/logging/LogTableModel;->paused:Z

    return v0
.end method

.method public declared-synchronized pushMessage(Lorg/seamless/swing/logging/LogMessage;)V
    .locals 10

    monitor-enter p0

    .line 54
    :try_start_0
    iget-boolean v0, p0, Lorg/seamless/swing/logging/LogTableModel;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/seamless/swing/logging/LogTableModel;->maxAgeSeconds:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 58
    iget-object v0, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 60
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/seamless/swing/logging/LogMessage;

    .line 62
    iget v4, p0, Lorg/seamless/swing/logging/LogTableModel;->maxAgeSeconds:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 63
    invoke-virtual {v3}, Lorg/seamless/swing/logging/LogMessage;->getCreatedOn()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v3, 0x0

    add-long v8, v6, v4

    cmp-long v3, v8, v1

    if-gez v3, :cond_1

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableModel;->fireTableDataChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0

    throw p1
.end method

.method public setMaxAgeSeconds(I)V
    .locals 0

    .line 40
    iput p1, p0, Lorg/seamless/swing/logging/LogTableModel;->maxAgeSeconds:I

    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lorg/seamless/swing/logging/LogTableModel;->paused:Z

    return-void
.end method
