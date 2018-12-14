.class public final Lio/rx_cache2/internal/h;
.super Ljava/lang/Object;
.source "ProxyProviders.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final a:Lio/rx_cache2/internal/f;

.field private final b:Lio/rx_cache2/internal/i;


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/j$a;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/j$a;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lio/rx_cache2/internal/a;->a()Lio/rx_cache2/internal/a$a;

    move-result-object v0

    new-instance v8, Lio/rx_cache2/internal/l;

    .line 41
    invoke-virtual {p1}, Lio/rx_cache2/internal/j$a;->c()Ljava/io/File;

    move-result-object v2

    .line 42
    invoke-virtual {p1}, Lio/rx_cache2/internal/j$a;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 43
    invoke-virtual {p1}, Lio/rx_cache2/internal/j$a;->b()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, p2}, Lio/rx_cache2/internal/h;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {p0, p2}, Lio/rx_cache2/internal/h;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lio/rx_cache2/internal/j$a;->d()Lio/victoralbertos/jolyglot/JolyglotGenerics;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lio/rx_cache2/internal/l;-><init>(Ljava/io/File;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lio/victoralbertos/jolyglot/JolyglotGenerics;)V

    .line 41
    invoke-virtual {v0, v8}, Lio/rx_cache2/internal/a$a;->a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/a$a;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lio/rx_cache2/internal/a$a;->a()Lio/rx_cache2/internal/k;

    move-result-object p1

    invoke-interface {p1}, Lio/rx_cache2/internal/k;->b()Lio/rx_cache2/internal/f;

    move-result-object p1

    iput-object p1, p0, Lio/rx_cache2/internal/h;->a:Lio/rx_cache2/internal/f;

    .line 47
    new-instance p1, Lio/rx_cache2/internal/i;

    invoke-direct {p1}, Lio/rx_cache2/internal/i;-><init>()V

    iput-object p1, p0, Lio/rx_cache2/internal/h;->b:Lio/rx_cache2/internal/i;

    return-void
.end method

.method static synthetic a(Lio/rx_cache2/internal/h;)Lio/rx_cache2/internal/i;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/rx_cache2/internal/h;->b:Lio/rx_cache2/internal/i;

    return-object p0
.end method

.method static synthetic b(Lio/rx_cache2/internal/h;)Lio/rx_cache2/internal/f;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/rx_cache2/internal/h;->a:Lio/rx_cache2/internal/f;

    return-object p0
.end method


# virtual methods
.method a()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lio/rx_cache2/internal/h;->a:Lio/rx_cache2/internal/f;

    invoke-interface {v0}, Lio/rx_cache2/internal/f;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 51
    const-class v0, Lio/rx_cache2/e;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/e;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    invoke-interface {p1}, Lio/rx_cache2/e;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    const-class v1, Lio/rx_cache2/o;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 62
    :cond_0
    check-cast p1, Lio/rx_cache2/o;

    .line 64
    invoke-interface {p1}, Lio/rx_cache2/o;->a()[Lio/rx_cache2/k;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 65
    new-instance v4, Lio/rx_cache2/l;

    invoke-interface {v3}, Lio/rx_cache2/k;->a()I

    move-result v5

    .line 66
    invoke-interface {v3}, Lio/rx_cache2/k;->b()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lio/rx_cache2/l;-><init>(I[Ljava/lang/Class;)V

    .line 65
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 74
    new-instance p1, Lio/rx_cache2/internal/h$1;

    invoke-direct {p1, p0, p2, p3}, Lio/rx_cache2/internal/h$1;-><init>(Lio/rx_cache2/internal/h;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-static {p1}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lio/reactivex/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
