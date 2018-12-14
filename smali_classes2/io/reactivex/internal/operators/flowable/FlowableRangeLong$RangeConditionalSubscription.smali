.class final Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRangeLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeConditionalSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;-><init>(JJ)V

    .line 188
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 9

    .line 193
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->end:J

    .line 194
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 196
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    :goto_0
    cmp-long v5, v3, v0

    if-eqz v5, :cond_1

    .line 197
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-eqz v5, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x1

    add-long v7, v3, v5

    move-wide v3, v7

    goto :goto_0

    .line 202
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-eqz v0, :cond_2

    return-void

    .line 205
    :cond_2
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    return-void
.end method

.method slowPath(J)V
    .locals 17

    move-object/from16 v0, p0

    .line 211
    iget-wide v1, v0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->end:J

    .line 212
    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    .line 213
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    const-wide/16 v6, 0x0

    move-wide/from16 v8, p1

    move-wide v10, v3

    :cond_0
    move-wide v3, v6

    :cond_1
    :goto_0
    cmp-long v12, v3, v8

    if-eqz v12, :cond_4

    cmp-long v12, v10, v1

    if-eqz v12, :cond_4

    .line 218
    iget-boolean v12, v0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-eqz v12, :cond_2

    return-void

    .line 222
    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v5, v12}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v12

    const-wide/16 v13, 0x1

    if-eqz v12, :cond_3

    add-long v15, v3, v13

    move-wide v3, v15

    :cond_3
    const/4 v12, 0x0

    add-long v15, v10, v13

    move-wide v10, v15

    goto :goto_0

    :cond_4
    cmp-long v8, v10, v1

    if-nez v8, :cond_6

    .line 230
    iget-boolean v1, v0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-nez v1, :cond_5

    .line 231
    invoke-interface {v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    :cond_5
    return-void

    .line 236
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->get()J

    move-result-wide v8

    cmp-long v12, v3, v8

    if-nez v12, :cond_1

    .line 238
    iput-wide v10, v0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    neg-long v3, v3

    .line 239
    invoke-virtual {v0, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->addAndGet(J)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_0

    return-void
.end method
