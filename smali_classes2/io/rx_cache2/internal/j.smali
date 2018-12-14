.class public final Lio/rx_cache2/internal/j;
.super Ljava/lang/Object;
.source "RxCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rx_cache2/internal/j$a;
    }
.end annotation


# instance fields
.field private final a:Lio/rx_cache2/internal/j$a;

.field private b:Lio/rx_cache2/internal/h;


# direct methods
.method private constructor <init>(Lio/rx_cache2/internal/j$a;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/rx_cache2/internal/j;->a:Lio/rx_cache2/internal/j$a;

    return-void
.end method

.method synthetic constructor <init>(Lio/rx_cache2/internal/j$a;Lio/rx_cache2/internal/j$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/j;-><init>(Lio/rx_cache2/internal/j$a;)V

    return-void
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

    .line 43
    iget-object v0, p0, Lio/rx_cache2/internal/j;->b:Lio/rx_cache2/internal/h;

    invoke-virtual {v0}, Lio/rx_cache2/internal/h;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 34
    new-instance v0, Lio/rx_cache2/internal/h;

    iget-object v1, p0, Lio/rx_cache2/internal/j;->a:Lio/rx_cache2/internal/j$a;

    invoke-direct {v0, v1, p1}, Lio/rx_cache2/internal/h;-><init>(Lio/rx_cache2/internal/j$a;Ljava/lang/Class;)V

    iput-object v0, p0, Lio/rx_cache2/internal/j;->b:Lio/rx_cache2/internal/h;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Lio/rx_cache2/internal/j;->b:Lio/rx_cache2/internal/h;

    .line 36
    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
