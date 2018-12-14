.class public abstract Lorg/eclipse/jetty/io/nio/SelectorManager;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SelectorManager.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/nio/SelectorManager$ChangeTask;,
        Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;,
        Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    }
.end annotation


# static fields
.field public static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __BUSY_PAUSE:I

.field private static final __IDLE_TICK:I

.field private static final __MAX_SELECTS:I

.field private static final __MONITOR_PERIOD:I


# instance fields
.field private _deferringInterestedOps0:Z

.field private _lowResourcesConnections:J

.field private _lowResourcesMaxIdleTime:I

.field private _maxIdleTime:I

.field private _selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

.field private _selectSets:I

.field private _selectorPriorityDelta:I

.field private volatile _set:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.eclipse.jetty.io.nio"

    .line 61
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v0, "org.eclipse.jetty.io.nio.MONITOR_PERIOD"

    const/16 v1, 0x3e8

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__MONITOR_PERIOD:I

    const-string v0, "org.eclipse.jetty.io.nio.MAX_SELECTS"

    const v1, 0x186a0

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__MAX_SELECTS:I

    const-string v0, "org.eclipse.jetty.io.nio.BUSY_PAUSE"

    const/16 v1, 0x32

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__BUSY_PAUSE:I

    const-string v0, "org.eclipse.jetty.io.nio.IDLE_TICK"

    const/16 v1, 0x190

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__IDLE_TICK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    .line 74
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_deferringInterestedOps0:Z

    .line 75
    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectorPriorityDelta:I

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/io/nio/SelectorManager;)[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 59
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__MONITOR_PERIOD:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 59
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__BUSY_PAUSE:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 59
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__IDLE_TICK:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 59
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__MAX_SELECTS:I

    return v0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/io/nio/SelectorManager;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/io/nio/SelectorManager;)I
    .locals 0

    .line 59
    iget p0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_maxIdleTime:I

    return p0
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/io/nio/SelectorManager;)I
    .locals 0

    .line 59
    iget p0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesMaxIdleTime:I

    return p0
.end method


# virtual methods
.method protected connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 3

    .line 368
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {v0, p1, p3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    sget-object p1, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p1, p2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract dispatch(Ljava/lang/Runnable;)Z
.end method

.method protected doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    new-array v0, v0, [Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 260
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 261
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    new-instance v3, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-direct {v3, p0, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 266
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectSets()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 269
    new-instance v1, Lorg/eclipse/jetty/io/nio/SelectorManager$1;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$1;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!Selecting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected doStop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    const/4 v1, 0x0

    .line 324
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    if-eqz v0, :cond_1

    .line 327
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 330
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->stop()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .line 375
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    invoke-static {p1, p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 382
    new-array v0, v0, [Ljava/util/Collection;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    return-void
.end method

.method protected abstract endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
.end method

.method protected abstract endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
.end method

.method protected abstract endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
.end method

.method public getLowResourcesConnections()J
    .locals 4

    .line 214
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J

    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getLowResourcesMaxIdleTime()J
    .locals 2

    .line 235
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesMaxIdleTime:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMaxIdleTime()J
    .locals 2

    .line 104
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_maxIdleTime:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSelectSet(I)Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSelectSets()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    return v0
.end method

.method public getSelectorPriorityDelta()I
    .locals 1

    .line 195
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectorPriorityDelta:I

    return v0
.end method

.method public isDeferringInterestedOps0()Z
    .locals 1

    .line 1017
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_deferringInterestedOps0:Z

    return v0
.end method

.method public abstract newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
.end method

.method protected abstract newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public register(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 2

    .line 180
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    if-gez v0, :cond_0

    neg-int v0, v0

    .line 183
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    rem-int/2addr v0, v1

    .line 184
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    aget-object v0, v1, v0

    .line 185
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    return-void
.end method

.method public register(Ljava/nio/channels/SocketChannel;)V
    .locals 2

    .line 161
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    if-gez v0, :cond_0

    neg-int v0, v0

    .line 164
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    rem-int/2addr v0, v1

    .line 165
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    if-eqz v1, :cond_1

    .line 168
    aget-object v0, v1, v0

    .line 169
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    :cond_1
    return-void
.end method

.method public register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V
    .locals 2

    .line 137
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    if-gez v0, :cond_0

    neg-int v0, v0

    .line 140
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    rem-int/2addr v0, v1

    .line 141
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    if-eqz v1, :cond_1

    .line 144
    aget-object v0, v1, v0

    .line 145
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    :cond_1
    return-void
.end method

.method public setDeferringInterestedOps0(Z)V
    .locals 0

    .line 1023
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_deferringInterestedOps0:Z

    return-void
.end method

.method public setLowResourcesConnections(J)V
    .locals 4

    .line 226
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    int-to-long v0, v0

    add-long v2, p1, v0

    const-wide/16 p1, 0x1

    sub-long v0, v2, p1

    iget p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    int-to-long p1, p1

    div-long/2addr v0, p1

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J

    return-void
.end method

.method public setLowResourcesMaxIdleTime(J)V
    .locals 0

    long-to-int p1, p1

    .line 245
    iput p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesMaxIdleTime:I

    return-void
.end method

.method public setMaxIdleTime(J)V
    .locals 0

    long-to-int p1, p1

    .line 84
    iput p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_maxIdleTime:I

    return-void
.end method

.method public setSelectSets(I)V
    .locals 4

    .line 93
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J

    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    .line 94
    iput p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    .line 95
    iget p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J

    return-void
.end method

.method public setSelectorPriorityDelta(I)V
    .locals 0

    .line 204
    iput p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectorPriorityDelta:I

    return-void
.end method
