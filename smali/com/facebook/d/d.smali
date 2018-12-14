.class public Lcom/facebook/d/d;
.super Ljava/lang/Object;
.source "ImageFormatChecker.java"


# static fields
.field private static a:Lcom/facebook/d/d;


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/d/c$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/facebook/d/c$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/facebook/d/a;

    invoke-direct {v0}, Lcom/facebook/d/a;-><init>()V

    iput-object v0, p0, Lcom/facebook/d/d;->d:Lcom/facebook/d/c$a;

    .line 35
    invoke-direct {p0}, Lcom/facebook/d/d;->b()V

    return-void
.end method

.method private static a(ILjava/io/InputStream;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    array-length v0, p2

    const/4 v1, 0x0

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 96
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->mark(I)V

    .line 99
    invoke-static {p1, p2, v1, p0}, Lcom/facebook/common/internal/a;->a(Ljava/io/InputStream;[BII)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 102
    throw p0

    .line 104
    :cond_1
    invoke-static {p1, p2, v1, p0}, Lcom/facebook/common/internal/a;->a(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized a()Lcom/facebook/d/d;
    .locals 2

    const-class v0, Lcom/facebook/d/d;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lcom/facebook/d/d;->a:Lcom/facebook/d/d;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/facebook/d/d;

    invoke-direct {v1}, Lcom/facebook/d/d;-><init>()V

    sput-object v1, Lcom/facebook/d/d;->a:Lcom/facebook/d/d;

    .line 116
    :cond_0
    sget-object v1, Lcom/facebook/d/d;->a:Lcom/facebook/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 112
    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/io/InputStream;)Lcom/facebook/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-static {}, Lcom/facebook/d/d;->a()Lcom/facebook/d/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/d/d;->a(Ljava/io/InputStream;)Lcom/facebook/d/c;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/facebook/d/d;->d:Lcom/facebook/d/c$a;

    invoke-interface {v0}, Lcom/facebook/d/c$a;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/d/d;->b:I

    .line 67
    iget-object v0, p0, Lcom/facebook/d/d;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/facebook/d/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/d/c$a;

    .line 69
    iget v2, p0, Lcom/facebook/d/d;->b:I

    invoke-interface {v1}, Lcom/facebook/d/c$a;->a()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/d/d;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Ljava/io/InputStream;)Lcom/facebook/d/c;
    .locals 0

    .line 139
    :try_start_0
    invoke-static {p0}, Lcom/facebook/d/d;->b(Ljava/io/InputStream;)Lcom/facebook/d/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 141
    invoke-static {p0}, Lcom/facebook/common/internal/l;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/facebook/d/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget v0, p0, Lcom/facebook/d/d;->b:I

    new-array v0, v0, [B

    .line 47
    iget v1, p0, Lcom/facebook/d/d;->b:I

    invoke-static {v1, p1, v0}, Lcom/facebook/d/d;->a(ILjava/io/InputStream;[B)I

    move-result p1

    .line 49
    iget-object v1, p0, Lcom/facebook/d/d;->d:Lcom/facebook/d/c$a;

    invoke-interface {v1, v0, p1}, Lcom/facebook/d/c$a;->a([BI)Lcom/facebook/d/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v2, Lcom/facebook/d/c;->a:Lcom/facebook/d/c;

    if-eq v1, v2, :cond_0

    return-object v1

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/facebook/d/d;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/facebook/d/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/d/c$a;

    .line 56
    invoke-interface {v2, v0, p1}, Lcom/facebook/d/c$a;->a([BI)Lcom/facebook/d/c;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 57
    sget-object v3, Lcom/facebook/d/c;->a:Lcom/facebook/d/c;

    if-eq v2, v3, :cond_1

    return-object v2

    .line 62
    :cond_2
    sget-object p1, Lcom/facebook/d/c;->a:Lcom/facebook/d/c;

    return-object p1
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/d/c$a;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/facebook/d/d;->c:Ljava/util/List;

    .line 41
    invoke-direct {p0}, Lcom/facebook/d/d;->b()V

    return-void
.end method
