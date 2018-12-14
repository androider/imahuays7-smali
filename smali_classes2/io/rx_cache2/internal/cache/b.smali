.class public final Lio/rx_cache2/internal/cache/b;
.super Lio/rx_cache2/internal/cache/a;
.source "EvictExpirableRecordsPersistence.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/String;

.field private final e:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/cache/a;-><init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;)V

    .line 45
    iput-object p3, p0, Lio/rx_cache2/internal/cache/b;->c:Ljava/lang/Integer;

    .line 46
    iput-object p4, p0, Lio/rx_cache2/internal/cache/b;->d:Ljava/lang/String;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lio/rx_cache2/internal/cache/b;->f:Z

    .line 48
    invoke-direct {p0}, Lio/rx_cache2/internal/cache/b;->a()Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lio/rx_cache2/internal/cache/b;->e:Lio/reactivex/Observable;

    return-void
.end method

.method private a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Lio/rx_cache2/internal/cache/b$2;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/b$2;-><init>(Lio/rx_cache2/internal/cache/b;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 94
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 95
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lio/rx_cache2/internal/cache/b$1;

    invoke-direct {v1, p0}, Lio/rx_cache2/internal/cache/b$1;-><init>(Lio/rx_cache2/internal/cache/b;)V

    .line 96
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lio/reactivex/Observable;->share()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Z
    .locals 2

    .line 112
    iget-object v0, p0, Lio/rx_cache2/internal/cache/b;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(IF)Z
    .locals 1

    int-to-float p1, p1

    sub-float/2addr p1, p2

    .line 107
    iget-object p2, p0, Lio/rx_cache2/internal/cache/b;->c:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3f333333    # 0.7f

    mul-float p2, p2, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lio/rx_cache2/internal/cache/b;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lio/rx_cache2/internal/cache/b;->f:Z

    return p0
.end method

.method static synthetic a(Lio/rx_cache2/internal/cache/b;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/b;->a(I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lio/rx_cache2/internal/cache/b;IF)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/cache/b;->a(IF)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lio/rx_cache2/internal/cache/b;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lio/rx_cache2/internal/cache/b;->f:Z

    return p1
.end method

.method static synthetic b(Lio/rx_cache2/internal/cache/b;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lio/rx_cache2/internal/cache/b;->g:Z

    return p0
.end method

.method static synthetic c(Lio/rx_cache2/internal/cache/b;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/rx_cache2/internal/cache/b;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method a(Z)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iput-boolean p1, p0, Lio/rx_cache2/internal/cache/b;->g:Z

    .line 53
    iget-object p1, p0, Lio/rx_cache2/internal/cache/b;->e:Lio/reactivex/Observable;

    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 54
    iget-object p1, p0, Lio/rx_cache2/internal/cache/b;->e:Lio/reactivex/Observable;

    return-object p1
.end method
