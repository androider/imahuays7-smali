.class public Lcom/flurry/sdk/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "z"


# instance fields
.field a:Z

.field private final c:Lcom/flurry/sdk/aa;

.field private final d:Ljava/io/File;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 1103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 25
    invoke-direct {p0, v0}, Lcom/flurry/sdk/z;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/flurry/sdk/aa;

    invoke-direct {v0}, Lcom/flurry/sdk/aa;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/z;->c:Lcom/flurry/sdk/aa;

    const-string v0, ".flurryinstallreceiver."

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/z;->d:Ljava/io/File;

    .line 31
    sget-object p1, Lcom/flurry/sdk/z;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Referrer file name if it exists:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/z;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p1, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/z;->e:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .locals 4

    .line 56
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/flurry/sdk/z;->a:Z

    const/4 v0, 0x4

    .line 62
    sget-object v1, Lcom/flurry/sdk/z;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading referrer info from file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/z;->d:Ljava/io/File;

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/z;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/em;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/flurry/sdk/z;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Referrer file contents: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v0}, Lcom/flurry/sdk/z;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/z;->c()V

    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/z;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/aa;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 108
    :try_start_0
    iput-boolean v0, p0, Lcom/flurry/sdk/z;->a:Z

    .line 110
    invoke-direct {p0, p1}, Lcom/flurry/sdk/z;->b(Ljava/lang/String;)V

    .line 1116
    iget-object p1, p0, Lcom/flurry/sdk/z;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/flurry/sdk/z;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/flurry/sdk/em;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/z;->c()V

    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/z;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 94
    monitor-exit p0

    throw v0
.end method
