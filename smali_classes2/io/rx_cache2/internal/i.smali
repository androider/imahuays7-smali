.class public final Lio/rx_cache2/internal/i;
.super Ljava/lang/Object;
.source "ProxyTranslator.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Lio/rx_cache2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rx_cache2/internal/i;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/reflect/Method;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 146
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v4, p3, v1

    .line 147
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-le v2, p2, :cond_2

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires just one instance of type "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    return-object v3
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1

    .line 60
    const-class v0, Lio/rx_cache2/m;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/rx_cache2/m;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Lio/rx_cache2/m;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/reflect/Method;)Ljava/lang/Long;
    .locals 3

    .line 104
    const-class v0, Lio/rx_cache2/j;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/j;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 106
    :cond_0
    invoke-interface {p1}, Lio/rx_cache2/j;->b()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-interface {p1}, Lio/rx_cache2/j;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 69
    const-class v0, Lio/rx_cache2/b;

    invoke-direct {p0, p1, v0, p2}, Lio/rx_cache2/internal/i;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rx_cache2/b;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lio/rx_cache2/b;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    const-class v0, Lio/rx_cache2/c;

    .line 73
    invoke-direct {p0, p1, v0, p2}, Lio/rx_cache2/internal/i;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/c;

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1}, Lio/rx_cache2/c;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private c(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 80
    const-class v0, Lio/rx_cache2/c;

    .line 81
    invoke-direct {p0, p1, v0, p2}, Lio/rx_cache2/internal/i;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/c;

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Lio/rx_cache2/c;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private c(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 110
    const-class v0, Lio/rx_cache2/i;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/i;

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Lio/rx_cache2/i;->a()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private d(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 1

    .line 86
    const-class v0, Lio/reactivex/Observable;

    invoke-direct {p0, p1, v0, p2}, Lio/rx_cache2/internal/i;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observable;

    if-eqz v0, :cond_0

    return-object v0

    .line 89
    :cond_0
    const-class v0, Lio/reactivex/Single;

    invoke-direct {p0, p1, v0, p2}, Lio/rx_cache2/internal/i;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Single;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 92
    :cond_1
    const-class v0, Lio/reactivex/Maybe;

    invoke-direct {p0, p1, v0, p2}, Lio/rx_cache2/internal/i;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Maybe;

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Lio/reactivex/Maybe;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 95
    :cond_2
    const-class v0, Lio/reactivex/Flowable;

    invoke-direct {p0, p1, v0, p2}, Lio/rx_cache2/internal/i;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/reactivex/Flowable;

    if-eqz p2, :cond_3

    .line 96
    invoke-virtual {p2}, Lio/reactivex/Flowable;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 98
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires an instance of one of the next reactive types: observable, single, maybe or flowable"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private d(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 116
    const-class v0, Lio/rx_cache2/d;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/d;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lio/rx_cache2/h;
    .locals 1

    .line 132
    const-class v0, Lio/rx_cache2/h;

    .line 133
    invoke-direct {p0, p1, v0, p2}, Lio/rx_cache2/internal/i;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/h;

    if-eqz p1, :cond_0

    return-object p1

    .line 137
    :cond_0
    new-instance p1, Lio/rx_cache2/h;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lio/rx_cache2/h;-><init>(Z)V

    return-object p1
.end method

.method private e(Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 122
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/reactivex/Observable;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/reactivex/Single;

    if-eq v0, v1, :cond_1

    .line 123
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/reactivex/Maybe;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/reactivex/Flowable;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " needs to return one of the next reactive types: observable, single, maybe or flowable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lio/rx_cache2/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private f(Ljava/lang/reflect/Method;)Lio/rx_cache2/a;
    .locals 13

    .line 166
    iget-object v0, p0, Lio/rx_cache2/internal/i;->a:Ljava/util/Map;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lio/rx_cache2/internal/i;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rx_cache2/a;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lio/rx_cache2/a;

    invoke-direct {p0, p1}, Lio/rx_cache2/internal/i;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 170
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/i;->b(Ljava/lang/reflect/Method;)Ljava/lang/Long;

    move-result-object v5

    .line 171
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/i;->e(Ljava/lang/reflect/Method;)Z

    move-result v6

    invoke-direct {p0, p1}, Lio/rx_cache2/internal/i;->c(Ljava/lang/reflect/Method;)Z

    move-result v7

    invoke-direct {p0, p1}, Lio/rx_cache2/internal/i;->d(Ljava/lang/reflect/Method;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lio/rx_cache2/a;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Lio/reactivex/Observable;Lio/rx_cache2/h;)V

    .line 173
    iget-object v2, p0, Lio/rx_cache2/internal/i;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lio/rx_cache2/a;
    .locals 13

    .line 47
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/i;->f(Ljava/lang/reflect/Method;)Lio/rx_cache2/a;

    move-result-object v0

    .line 49
    new-instance v12, Lio/rx_cache2/a;

    invoke-virtual {v0}, Lio/rx_cache2/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v0}, Lio/rx_cache2/a;->d()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Lio/rx_cache2/a;->e()Z

    move-result v5

    invoke-virtual {v0}, Lio/rx_cache2/a;->h()Z

    move-result v6

    .line 51
    invoke-virtual {v0}, Lio/rx_cache2/a;->i()Z

    move-result v7

    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/i;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/i;->c(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/i;->d(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v10

    .line 54
    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/i;->e(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lio/rx_cache2/h;

    move-result-object v11

    const/4 v3, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lio/rx_cache2/a;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Lio/reactivex/Observable;Lio/rx_cache2/h;)V

    return-object v12
.end method
