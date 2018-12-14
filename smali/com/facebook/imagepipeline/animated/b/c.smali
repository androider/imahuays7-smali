.class public Lcom/facebook/imagepipeline/animated/b/c;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/animated/b/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/cache/common/b;

.field private final b:Lcom/facebook/imagepipeline/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/imagepipeline/c/h$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/h$c<",
            "Lcom/facebook/cache/common/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/facebook/cache/common/b;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/c/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/c;->a:Lcom/facebook/cache/common/b;

    .line 87
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/b/c;->b:Lcom/facebook/imagepipeline/c/h;

    .line 88
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/c;->d:Ljava/util/LinkedHashSet;

    .line 89
    new-instance p1, Lcom/facebook/imagepipeline/animated/b/c$1;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/animated/b/c$1;-><init>(Lcom/facebook/imagepipeline/animated/b/c;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/c;->c:Lcom/facebook/imagepipeline/c/h$c;

    return-void
.end method

.method private declared-synchronized b()Lcom/facebook/cache/common/b;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/b/c;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cache/common/b;

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 161
    monitor-exit p0

    throw v0
.end method

.method private c(I)Lcom/facebook/imagepipeline/animated/b/c$a;
    .locals 2

    .line 172
    new-instance v0, Lcom/facebook/imagepipeline/animated/b/c$a;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/b/c;->a:Lcom/facebook/cache/common/b;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/animated/b/c$a;-><init>(Lcom/facebook/cache/common/b;I)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/b/c;->b()Lcom/facebook/cache/common/b;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/b/c;->b:Lcom/facebook/imagepipeline/c/h;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/c/h;->b(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method public a(I)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/c;->b:Lcom/facebook/imagepipeline/c/h;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/b/c;->c(I)Lcom/facebook/imagepipeline/animated/b/c$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/h;->a(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;)",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/c;->b:Lcom/facebook/imagepipeline/c/h;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/b/c;->c(I)Lcom/facebook/imagepipeline/animated/b/c$a;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/b/c;->c:Lcom/facebook/imagepipeline/c/h$c;

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/c/h;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/c/h$c;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Lcom/facebook/cache/common/b;Z)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 99
    :try_start_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/c;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 101
    :cond_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/c;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public b(I)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/c;->b:Lcom/facebook/imagepipeline/c/h;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/b/c;->c(I)Lcom/facebook/imagepipeline/animated/b/c$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/h;->c(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
