.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;
.super Ljava/util/ArrayList;
.source "FlowableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62057d556fa2a2d8L


# instance fields
.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 625
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 641
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 642
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 635
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 636
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    return-void
.end method

.method public next(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 629
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 630
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    return-void
.end method

.method public replay(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 647
    monitor-enter p1

    .line 648
    :try_start_0
    iget-boolean v3, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 649
    iput-boolean v4, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    .line 650
    monitor-exit p1

    return-void

    .line 652
    :cond_0
    iput-boolean v4, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    .line 653
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 654
    iget-object v3, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->child:Lorg/a/c;

    .line 657
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 660
    :cond_1
    iget v4, v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    .line 662
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 663
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 665
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-wide v11, v7

    move-wide v13, v9

    :goto_2
    cmp-long v15, v11, v9

    if-eqz v15, :cond_6

    if-ge v5, v4, :cond_6

    .line 670
    invoke-virtual {v1, v5}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 672
    :try_start_1
    invoke-static {v15, v3}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/a/c;)Z

    move-result v16
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v16, :cond_3

    return-void

    .line 683
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    move-result v15

    if-eqz v15, :cond_4

    return-void

    :cond_4
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v15, 0x1

    sub-long v17, v11, v15

    add-long v11, v13, v15

    move-wide v13, v11

    move-wide/from16 v11, v17

    goto :goto_2

    :catch_0
    move-exception v0

    .line 676
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 677
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->dispose()V

    .line 678
    invoke-static {v15}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v15}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 679
    invoke-interface {v3, v0}, Lorg/a/c;->onError(Ljava/lang/Throwable;)V

    :cond_5
    return-void

    :cond_6
    cmp-long v4, v13, v9

    if-eqz v4, :cond_7

    .line 691
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index:Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v9, v7, v4

    if-eqz v9, :cond_7

    .line 693
    invoke-virtual {v2, v13, v14}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->produced(J)J

    .line 697
    :cond_7
    monitor-enter p1

    .line 698
    :try_start_2
    iget-boolean v4, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    if-nez v4, :cond_8

    .line 699
    iput-boolean v6, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    .line 700
    monitor-exit p1

    return-void

    .line 702
    :cond_8
    iput-boolean v6, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    .line 703
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 653
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method
