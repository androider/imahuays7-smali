.class final Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;
.super Ljava/lang/Object;
.source "FlowableLastSingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableLastSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final defaultItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field s:Lorg/a/d;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->actual:Lio/reactivex/SingleObserver;

    .line 60
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->defaultItem:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->s:Lorg/a/d;

    invoke-interface {v0}, Lorg/a/d;->cancel()V

    .line 66
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->s:Lorg/a/d;

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->s:Lorg/a/d;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 99
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->s:Lorg/a/d;

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->item:Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->defaultItem:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->actual:Lio/reactivex/SingleObserver;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 92
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->s:Lorg/a/d;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->item:Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->item:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lorg/a/d;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->s:Lorg/a/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/a/d;Lorg/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->s:Lorg/a/d;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 81
    invoke-interface {p1, v0, v1}, Lorg/a/d;->request(J)V

    :cond_0
    return-void
.end method
