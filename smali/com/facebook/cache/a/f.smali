.class public Lcom/facebook/cache/a/f;
.super Ljava/lang/Object;
.source "DynamicDefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/a/f$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:Lcom/facebook/cache/a/f$a;

.field private final c:I

.field private final d:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Lcom/facebook/cache/common/CacheErrorLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/facebook/cache/a/f;

    sput-object v0, Lcom/facebook/cache/a/f;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ILcom/facebook/common/internal/j;Ljava/lang/String;Lcom/facebook/cache/common/CacheErrorLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/internal/j<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/common/CacheErrorLogger;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/facebook/cache/a/f;->c:I

    .line 56
    iput-object p4, p0, Lcom/facebook/cache/a/f;->f:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 57
    iput-object p2, p0, Lcom/facebook/cache/a/f;->d:Lcom/facebook/common/internal/j;

    .line 58
    iput-object p3, p0, Lcom/facebook/cache/a/f;->e:Ljava/lang/String;

    .line 59
    new-instance p1, Lcom/facebook/cache/a/f$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/facebook/cache/a/f$a;-><init>(Ljava/io/File;Lcom/facebook/cache/a/d;)V

    iput-object p1, p0, Lcom/facebook/cache/a/f;->a:Lcom/facebook/cache/a/f$a;

    return-void
.end method

.method private f()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/facebook/cache/a/f;->a:Lcom/facebook/cache/a/f$a;

    .line 163
    iget-object v1, v0, Lcom/facebook/cache/a/f$a;->a:Lcom/facebook/cache/a/d;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/facebook/cache/a/f$a;->b:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/facebook/cache/a/f$a;->b:Ljava/io/File;

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/cache/a/f;->d:Lcom/facebook/common/internal/j;

    invoke-interface {v1}, Lcom/facebook/common/internal/j;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/cache/a/f;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/facebook/cache/a/f;->a(Ljava/io/File;)V

    .line 180
    new-instance v1, Lcom/facebook/cache/a/a;

    iget v2, p0, Lcom/facebook/cache/a/f;->c:I

    iget-object v3, p0, Lcom/facebook/cache/a/f;->f:Lcom/facebook/cache/common/CacheErrorLogger;

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/cache/a/a;-><init>(Ljava/io/File;ILcom/facebook/cache/common/CacheErrorLogger;)V

    .line 181
    new-instance v2, Lcom/facebook/cache/a/f$a;

    invoke-direct {v2, v0, v1}, Lcom/facebook/cache/a/f$a;-><init>(Ljava/io/File;Lcom/facebook/cache/a/d;)V

    iput-object v2, p0, Lcom/facebook/cache/a/f;->a:Lcom/facebook/cache/a/f$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/cache/a/d$a;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/facebook/cache/a/f;->c()Lcom/facebook/cache/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/cache/a/d;->a(Lcom/facebook/cache/a/d$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/a/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/facebook/cache/a/f;->c()Lcom/facebook/cache/a/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/a/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/a/d$b;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/file/FileUtils;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    sget-object v0, Lcom/facebook/cache/a/f;->b:Ljava/lang/Class;

    const-string v1, "Created cache directory %s"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/facebook/common/c/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 189
    iget-object v0, p0, Lcom/facebook/cache/a/f;->f:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/a/f;->b:Ljava/lang/Class;

    const-string v3, "createRootDirectoryIfNecessary"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    throw p1
.end method

.method public a()Z
    .locals 1

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/cache/a/f;->c()Lcom/facebook/cache/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/a/d;->a()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/facebook/cache/a/f;->c()Lcom/facebook/cache/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/cache/a/d;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/facebook/cache/a/f;->c()Lcom/facebook/cache/a/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/a/d;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/a/a;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/cache/a/f;->c()Lcom/facebook/cache/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/a/d;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    sget-object v1, Lcom/facebook/cache/a/f;->b:Ljava/lang/Class;

    const-string v2, "purgeUnexpectedResources"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/c/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method declared-synchronized c()Lcom/facebook/cache/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/cache/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/facebook/cache/a/f;->e()V

    .line 156
    invoke-direct {p0}, Lcom/facebook/cache/a/f;->g()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/facebook/cache/a/f;->a:Lcom/facebook/cache/a/f$a;

    iget-object v0, v0, Lcom/facebook/cache/a/f$a;->a:Lcom/facebook/cache/a/d;

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cache/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 152
    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/a/d$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/facebook/cache/a/f;->c()Lcom/facebook/cache/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/a/d;->d()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method e()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/facebook/cache/a/f;->a:Lcom/facebook/cache/a/f$a;

    iget-object v0, v0, Lcom/facebook/cache/a/f$a;->a:Lcom/facebook/cache/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/cache/a/f;->a:Lcom/facebook/cache/a/f$a;

    iget-object v0, v0, Lcom/facebook/cache/a/f$a;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/facebook/cache/a/f;->a:Lcom/facebook/cache/a/f$a;

    iget-object v0, v0, Lcom/facebook/cache/a/f$a;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/file/a;->b(Ljava/io/File;)Z

    :cond_0
    return-void
.end method
