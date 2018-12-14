.class public final Lio/rx_cache2/internal/l;
.super Ljava/lang/Object;
.source "RxCacheModule.java"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Z

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lio/victoralbertos/jolyglot/JolyglotGenerics;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lio/victoralbertos/jolyglot/JolyglotGenerics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;",
            "Lio/victoralbertos/jolyglot/JolyglotGenerics;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/rx_cache2/internal/l;->a:Ljava/io/File;

    .line 44
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/rx_cache2/internal/l;->b:Z

    .line 45
    iput-object p3, p0, Lio/rx_cache2/internal/l;->c:Ljava/lang/Integer;

    .line 46
    iput-object p4, p0, Lio/rx_cache2/internal/l;->d:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lio/rx_cache2/internal/l;->e:Ljava/util/List;

    .line 48
    iput-object p6, p0, Lio/rx_cache2/internal/l;->f:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    return-void
.end method


# virtual methods
.method a(Lio/rx_cache2/internal/b;)Lio/rx_cache2/internal/e;
    .locals 0
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    return-object p1
.end method

.method a(Lio/rx_cache2/internal/g;)Lio/rx_cache2/internal/f;
    .locals 0

    return-object p1
.end method

.method a()Ljava/io/File;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 52
    iget-object v0, p0, Lio/rx_cache2/internal/l;->a:Ljava/io/File;

    return-object v0
.end method

.method b()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 60
    iget-boolean v0, p0, Lio/rx_cache2/internal/l;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method c()Lio/rx_cache2/internal/d;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 64
    new-instance v0, Lio/rx_cache2/internal/cache/memory/a;

    invoke-direct {v0}, Lio/rx_cache2/internal/cache/memory/a;-><init>()V

    return-object v0
.end method

.method d()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 68
    iget-object v0, p0, Lio/rx_cache2/internal/l;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rx_cache2/internal/l;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method e()Lio/rx_cache2/internal/a/b;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 72
    new-instance v0, Lio/rx_cache2/internal/a/a;

    invoke-direct {v0}, Lio/rx_cache2/internal/a/a;-><init>()V

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 76
    iget-object v0, p0, Lio/rx_cache2/internal/l;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rx_cache2/internal/l;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 80
    iget-object v0, p0, Lio/rx_cache2/internal/l;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rx_cache2/internal/l;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method h()Lio/victoralbertos/jolyglot/JolyglotGenerics;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 84
    iget-object v0, p0, Lio/rx_cache2/internal/l;->f:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    return-object v0
.end method
