.class public final Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;
.super Lio/reactivex/Flowable;
.source "FlowableFlatMapPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final delayErrors:Z

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/a/b<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field final source:Lorg/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/a/b;Lio/reactivex/functions/Function;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/b<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/a/b<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->source:Lorg/a/b;

    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->mapper:Lio/reactivex/functions/Function;

    .line 33
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->delayErrors:Z

    .line 34
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->maxConcurrency:I

    .line 35
    iput p5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->bufferSize:I

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/a/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/c<",
            "-TU;>;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->source:Lorg/a/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->mapper:Lio/reactivex/functions/Function;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableScalarXMap;->tryScalarXMapSubscribe(Lorg/a/b;Lorg/a/c;Lio/reactivex/functions/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->source:Lorg/a/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->mapper:Lio/reactivex/functions/Function;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->delayErrors:Z

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->maxConcurrency:I

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;->bufferSize:I

    invoke-static {p1, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->subscribe(Lorg/a/c;Lio/reactivex/functions/Function;ZII)Lio/reactivex/FlowableSubscriber;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/a/b;->subscribe(Lorg/a/c;)V

    return-void
.end method
