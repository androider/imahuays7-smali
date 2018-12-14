.class public final Lio/rx_cache2/internal/b/c;
.super Ljava/lang/Object;
.source "DoMigrations.java"


# instance fields
.field private final a:Lio/rx_cache2/internal/b/d;

.field private final b:Lio/rx_cache2/internal/b/f;

.field private final c:Lio/rx_cache2/internal/b/b;

.field private final d:Lio/rx_cache2/internal/b/g;

.field private final e:Lio/rx_cache2/internal/b/e;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/e;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/e;",
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lio/rx_cache2/internal/b/e;

    invoke-direct {v0}, Lio/rx_cache2/internal/b/e;-><init>()V

    iput-object v0, p0, Lio/rx_cache2/internal/b/c;->e:Lio/rx_cache2/internal/b/e;

    .line 39
    new-instance v0, Lio/rx_cache2/internal/b/d;

    invoke-direct {v0, p1}, Lio/rx_cache2/internal/b/d;-><init>(Lio/rx_cache2/internal/e;)V

    iput-object v0, p0, Lio/rx_cache2/internal/b/c;->a:Lio/rx_cache2/internal/b/d;

    .line 40
    new-instance v0, Lio/rx_cache2/internal/b/f;

    invoke-direct {v0}, Lio/rx_cache2/internal/b/f;-><init>()V

    iput-object v0, p0, Lio/rx_cache2/internal/b/c;->b:Lio/rx_cache2/internal/b/f;

    .line 41
    iput-object p2, p0, Lio/rx_cache2/internal/b/c;->f:Ljava/util/List;

    .line 42
    new-instance p2, Lio/rx_cache2/internal/b/g;

    invoke-direct {p2, p1}, Lio/rx_cache2/internal/b/g;-><init>(Lio/rx_cache2/internal/e;)V

    iput-object p2, p0, Lio/rx_cache2/internal/b/c;->d:Lio/rx_cache2/internal/b/g;

    .line 43
    new-instance p2, Lio/rx_cache2/internal/b/b;

    invoke-direct {p2, p1, p3}, Lio/rx_cache2/internal/b/b;-><init>(Lio/rx_cache2/internal/e;Ljava/lang/String;)V

    iput-object p2, p0, Lio/rx_cache2/internal/b/c;->c:Lio/rx_cache2/internal/b/b;

    return-void
.end method

.method static synthetic a(Lio/rx_cache2/internal/b/c;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lio/rx_cache2/internal/b/c;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lio/rx_cache2/internal/b/c;)Lio/rx_cache2/internal/b/g;
    .locals 0

    .line 27
    iget-object p0, p0, Lio/rx_cache2/internal/b/c;->d:Lio/rx_cache2/internal/b/g;

    return-object p0
.end method

.method static synthetic c(Lio/rx_cache2/internal/b/c;)Lio/rx_cache2/internal/b/b;
    .locals 0

    .line 27
    iget-object p0, p0, Lio/rx_cache2/internal/b/c;->c:Lio/rx_cache2/internal/b/b;

    return-object p0
.end method

.method static synthetic d(Lio/rx_cache2/internal/b/c;)Lio/rx_cache2/internal/b/e;
    .locals 0

    .line 27
    iget-object p0, p0, Lio/rx_cache2/internal/b/c;->e:Lio/rx_cache2/internal/b/e;

    return-object p0
.end method

.method static synthetic e(Lio/rx_cache2/internal/b/c;)Lio/rx_cache2/internal/b/f;
    .locals 0

    .line 27
    iget-object p0, p0, Lio/rx_cache2/internal/b/c;->b:Lio/rx_cache2/internal/b/f;

    return-object p0
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lio/rx_cache2/internal/b/c;->a:Lio/rx_cache2/internal/b/d;

    invoke-virtual {v0}, Lio/rx_cache2/internal/b/d;->a()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lio/rx_cache2/internal/b/c$4;

    invoke-direct {v1, p0}, Lio/rx_cache2/internal/b/c$4;-><init>(Lio/rx_cache2/internal/b/c;)V

    .line 48
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lio/rx_cache2/internal/b/c$3;

    invoke-direct {v1, p0}, Lio/rx_cache2/internal/b/c$3;-><init>(Lio/rx_cache2/internal/b/c;)V

    .line 54
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lio/rx_cache2/internal/b/c$2;

    invoke-direct {v1, p0}, Lio/rx_cache2/internal/b/c$2;-><init>(Lio/rx_cache2/internal/b/c;)V

    .line 59
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lio/rx_cache2/internal/b/c$1;

    invoke-direct {v1, p0}, Lio/rx_cache2/internal/b/c$1;-><init>(Lio/rx_cache2/internal/b/c;)V

    .line 64
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
