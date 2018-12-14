.class public final Lio/rx_cache2/internal/g;
.super Ljava/lang/Object;
.source "ProcessorProvidersBehaviour.java"

# interfaces
.implements Lio/rx_cache2/internal/f;


# instance fields
.field private final a:Lio/rx_cache2/internal/cache/o;

.field private final b:Ljava/lang/Boolean;

.field private final c:Lio/rx_cache2/internal/cache/h;

.field private final d:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/cache/o;Ljava/lang/Boolean;Lio/rx_cache2/internal/cache/d;Lio/rx_cache2/internal/cache/h;Lio/rx_cache2/internal/b/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/g;->e:Ljava/lang/Boolean;

    .line 46
    iput-object p1, p0, Lio/rx_cache2/internal/g;->a:Lio/rx_cache2/internal/cache/o;

    .line 47
    iput-object p2, p0, Lio/rx_cache2/internal/g;->b:Ljava/lang/Boolean;

    .line 48
    iput-object p4, p0, Lio/rx_cache2/internal/g;->c:Lio/rx_cache2/internal/cache/h;

    .line 49
    invoke-direct {p0, p5, p3}, Lio/rx_cache2/internal/g;->a(Lio/rx_cache2/internal/b/c;Lio/rx_cache2/internal/cache/d;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lio/rx_cache2/internal/g;->d:Lio/reactivex/Observable;

    return-void
.end method

.method private a(Lio/rx_cache2/a;Lio/rx_cache2/internal/Record;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/a;",
            "Lio/rx_cache2/internal/Record;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/rx_cache2/n;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lio/rx_cache2/a;->f()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lio/rx_cache2/internal/g$6;

    invoke-direct {v1, p0, p1, p2}, Lio/rx_cache2/internal/g$6;-><init>(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;Lio/rx_cache2/internal/Record;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lio/rx_cache2/internal/g$5;

    invoke-direct {v1, p0, p1, p2}, Lio/rx_cache2/internal/g$5;-><init>(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;Lio/rx_cache2/internal/Record;)V

    .line 134
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private a(Lio/rx_cache2/internal/b/c;Lio/rx_cache2/internal/cache/d;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/b/c;",
            "Lio/rx_cache2/internal/cache/d;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lio/rx_cache2/internal/b/c;->a()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lio/rx_cache2/internal/g$1;

    invoke-direct {v0, p0, p2}, Lio/rx_cache2/internal/g$1;-><init>(Lio/rx_cache2/internal/g;Lio/rx_cache2/internal/cache/d;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 59
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->share()Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    new-instance p2, Lio/rx_cache2/internal/g$2;

    invoke-direct {p2, p0}, Lio/rx_cache2/internal/g$2;-><init>(Lio/rx_cache2/internal/g;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic a(Lio/rx_cache2/internal/g;)Ljava/lang/Boolean;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/rx_cache2/internal/g;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a(Lio/rx_cache2/internal/g;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 33
    iput-object p1, p0, Lio/rx_cache2/internal/g;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Lio/rx_cache2/a;Lio/rx_cache2/n;)Ljava/lang/Object;
    .locals 2

    .line 169
    iget-object v0, p0, Lio/rx_cache2/internal/g;->c:Lio/rx_cache2/internal/cache/h;

    invoke-virtual {p2}, Lio/rx_cache2/n;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rx_cache2/internal/cache/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lio/rx_cache2/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v1, Lio/rx_cache2/n;

    invoke-virtual {p2}, Lio/rx_cache2/n;->b()Lio/rx_cache2/Source;

    move-result-object p2

    invoke-virtual {p1}, Lio/rx_cache2/a;->i()Z

    move-result p1

    invoke-direct {v1, v0, p2, p1}, Lio/rx_cache2/n;-><init>(Ljava/lang/Object;Lio/rx_cache2/Source;Z)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;Lio/rx_cache2/n;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/g;->a(Lio/rx_cache2/a;Lio/rx_cache2/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/g;->c(Lio/rx_cache2/a;)V

    return-void
.end method

.method static synthetic b(Lio/rx_cache2/internal/g;)Lio/reactivex/Observable;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/rx_cache2/internal/g;->d:Lio/reactivex/Observable;

    return-object p0
.end method

.method static synthetic c(Lio/rx_cache2/internal/g;)Ljava/lang/Boolean;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/rx_cache2/internal/g;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method private c(Lio/rx_cache2/a;)V
    .locals 3

    .line 154
    invoke-virtual {p1}, Lio/rx_cache2/a;->g()Lio/rx_cache2/h;

    move-result-object v0

    invoke-virtual {v0}, Lio/rx_cache2/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Lio/rx_cache2/a;->g()Lio/rx_cache2/h;

    move-result-object v0

    instance-of v0, v0, Lio/rx_cache2/g;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lio/rx_cache2/internal/g;->a:Lio/rx_cache2/internal/cache/o;

    invoke-virtual {p1}, Lio/rx_cache2/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Lio/rx_cache2/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {p1}, Lio/rx_cache2/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-virtual {v0, v1, v2, p1}, Lio/rx_cache2/internal/cache/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1}, Lio/rx_cache2/a;->g()Lio/rx_cache2/h;

    move-result-object v0

    instance-of v0, v0, Lio/rx_cache2/f;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lio/rx_cache2/internal/g;->a:Lio/rx_cache2/internal/cache/o;

    invoke-virtual {p1}, Lio/rx_cache2/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {p1}, Lio/rx_cache2/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {v0, v1, p1}, Lio/rx_cache2/internal/cache/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lio/rx_cache2/internal/g;->a:Lio/rx_cache2/internal/cache/o;

    invoke-virtual {p1}, Lio/rx_cache2/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/rx_cache2/internal/cache/o;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lio/rx_cache2/internal/g;)Lio/rx_cache2/internal/cache/o;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/rx_cache2/internal/g;->a:Lio/rx_cache2/internal/cache/o;

    return-object p0
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Lio/rx_cache2/internal/g$7;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/g$7;-><init>(Lio/rx_cache2/internal/g;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/rx_cache2/a;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/rx_cache2/a;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lio/rx_cache2/internal/g$3;

    invoke-direct {v0, p0, p1}, Lio/rx_cache2/internal/g$3;-><init>(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method b(Lio/rx_cache2/a;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/rx_cache2/a;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lio/rx_cache2/internal/g;->a:Lio/rx_cache2/internal/cache/o;

    invoke-virtual {p1}, Lio/rx_cache2/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/rx_cache2/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p1}, Lio/rx_cache2/a;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/rx_cache2/internal/g;->b:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 92
    invoke-virtual {p1}, Lio/rx_cache2/a;->d()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1}, Lio/rx_cache2/a;->i()Z

    move-result v6

    .line 90
    invoke-virtual/range {v0 .. v6}, Lio/rx_cache2/internal/cache/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Z)Lio/rx_cache2/internal/Record;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lio/rx_cache2/a;->g()Lio/rx_cache2/h;

    move-result-object v1

    invoke-virtual {v1}, Lio/rx_cache2/h;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lio/rx_cache2/n;

    invoke-virtual {v0}, Lio/rx_cache2/internal/Record;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lio/rx_cache2/internal/Record;->getSource()Lio/rx_cache2/Source;

    move-result-object v0

    invoke-virtual {p1}, Lio/rx_cache2/a;->i()Z

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lio/rx_cache2/n;-><init>(Ljava/lang/Object;Lio/rx_cache2/Source;Z)V

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/rx_cache2/internal/g;->a(Lio/rx_cache2/a;Lio/rx_cache2/internal/Record;)Lio/reactivex/Observable;

    move-result-object v0

    .line 102
    :goto_0
    new-instance v1, Lio/rx_cache2/internal/g$4;

    invoke-direct {v1, p0, p1}, Lio/rx_cache2/internal/g$4;-><init>(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
