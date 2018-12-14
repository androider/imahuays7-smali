.class public Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;
.super Ljava/lang/Object;
.source "RetryWithDelayOfFlowable.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Flowable<",
        "Ljava/lang/Throwable;",
        ">;",
        "Lorg/a/b<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field private final maxRetries:I

.field private retryCount:I

.field private final retryDelaySecond:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;->TAG:Ljava/lang/String;

    .line 44
    iput p1, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;->maxRetries:I

    .line 45
    iput p2, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;->retryDelaySecond:I

    return-void
.end method

.method static synthetic access$000(Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;)I
    .locals 0

    .line 35
    iget p0, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;->retryCount:I

    return p0
.end method

.method static synthetic access$004(Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;)I
    .locals 1

    .line 35
    iget v0, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;->retryCount:I

    return v0
.end method

.method static synthetic access$100(Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;)I
    .locals 0

    .line 35
    iget p0, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;->maxRetries:I

    return p0
.end method

.method static synthetic access$200(Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;)I
    .locals 0

    .line 35
    iget p0, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;->retryDelaySecond:I

    return p0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    check-cast p1, Lio/reactivex/Flowable;

    invoke-virtual {p0, p1}, Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;->apply(Lio/reactivex/Flowable;)Lorg/a/b;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lio/reactivex/Flowable;)Lorg/a/b;
    .locals 1
    .param p1    # Lio/reactivex/Flowable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/a/b<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    new-instance v0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable$1;

    invoke-direct {v0, p0}, Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable$1;-><init>(Lme/jessyan/rxerrorhandler/handler/RetryWithDelayOfFlowable;)V

    .line 51
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
