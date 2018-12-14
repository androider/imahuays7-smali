.class public Lcom/flurry/sdk/dr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field private static final d:Ljava/lang/String; = "dr"


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x32

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dr;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Main"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/dr;->b:Ljava/lang/String;

    .line 1043
    iget-object p1, p0, Lcom/flurry/sdk/dr;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/dr;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 6

    monitor-enter p0

    .line 403
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/flurry/sdk/dr;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 16415
    new-instance v1, Lcom/flurry/sdk/cu;

    .line 16416
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 17103
    iget-object v2, v2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 16416
    iget-object v3, p0, Lcom/flurry/sdk/dr;->b:Ljava/lang/String;

    .line 16417
    invoke-static {v3}, Lcom/flurry/sdk/dr;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, ".YFlurrySenderIndex.info."

    const/4 v4, 0x1

    new-instance v5, Lcom/flurry/sdk/dr$4;

    invoke-direct {v5, p0}, Lcom/flurry/sdk/dr$4;-><init>(Lcom/flurry/sdk/dr;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/flurry/sdk/cu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ea;)V

    .line 16428
    invoke-virtual {v1}, Lcom/flurry/sdk/cu;->b()Z

    .line 407
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/flurry/sdk/dr;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/dr;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/flurry/sdk/dr;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 402
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 319
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    const/4 v0, 0x5

    .line 321
    sget-object v1, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saving Index File for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v3

    .line 14103
    iget-object v3, v3, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 323
    invoke-static {p1}, Lcom/flurry/sdk/dr;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v0, Lcom/flurry/sdk/cu;

    .line 327
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 15103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 328
    invoke-static {p1}, Lcom/flurry/sdk/dr;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x1

    new-instance v2, Lcom/flurry/sdk/dr$3;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/dr$3;-><init>(Lcom/flurry/sdk/dr;)V

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/flurry/sdk/cu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ea;)V

    .line 339
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 341
    new-instance v1, Lcom/flurry/sdk/ds;

    invoke-direct {v1, p3}, Lcom/flurry/sdk/ds;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/cu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 318
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;[B)V
    .locals 5

    monitor-enter p0

    .line 289
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    const/4 v0, 0x5

    .line 291
    sget-object v1, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saving Block File for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v3

    .line 13103
    iget-object v3, v3, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 293
    invoke-static {p1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {p1}, Lcom/flurry/sdk/dq;->b(Ljava/lang/String;)Lcom/flurry/sdk/cu;

    move-result-object p1

    .line 298
    new-instance v0, Lcom/flurry/sdk/dq;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/dq;-><init>([B)V

    .line 299
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 288
    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dr;->c:Ljava/util/LinkedHashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dr;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dr;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    invoke-direct {p0, v2}, Lcom/flurry/sdk/dr;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/flurry/sdk/dr;->f(Ljava/lang/String;)V

    goto :goto_2

    .line 68
    :cond_1
    new-instance v1, Lcom/flurry/sdk/cu;

    .line 70
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 1103
    iget-object v2, v2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 70
    iget-object v3, p0, Lcom/flurry/sdk/dr;->b:Ljava/lang/String;

    .line 71
    invoke-static {v3}, Lcom/flurry/sdk/dr;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/dr$1;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/dr$1;-><init>(Lcom/flurry/sdk/dr;)V

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/flurry/sdk/cu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ea;)V

    .line 82
    invoke-virtual {v1}, Lcom/flurry/sdk/cu;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    .line 84
    sget-object p1, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    const-string v0, "New main file also not found. returning.."

    invoke-static {p1, v0}, Lcom/flurry/sdk/dc;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ds;

    .line 2024
    iget-object v1, v1, Lcom/flurry/sdk/ds;->a:Ljava/lang/String;

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-direct {p0, v0}, Lcom/flurry/sdk/dr;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/flurry/sdk/dr;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 2103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".FlurrySenderIndex.info."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x5

    .line 106
    sget-object v2, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isOldIndexFilePresent: for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 113
    sget-object v0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading Index File for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 3103
    iget-object v2, v2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".FlurrySenderIndex.info."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 113
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 4103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ".FlurrySenderIndex.info."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 121
    sget-object v1, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reading Index File for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Found file."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 125
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 126
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    .line 154
    :try_start_3
    invoke-static {v0}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v3

    .line 133
    :cond_0
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 138
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    const/4 v4, 0x4

    .line 139
    sget-object v5, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "read iter "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dataLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    new-array v3, v3, [B

    .line 141
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 143
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 144
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    :try_start_6
    invoke-static {v0}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, v3

    :goto_1
    move-object v3, v0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v1, v3

    :goto_2
    const/4 v0, 0x6

    .line 152
    :try_start_7
    sget-object v2, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    const-string v4, "Error when loading persistent file"

    invoke-static {v0, v2, v4, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 154
    :try_start_8
    invoke-static {v3}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    invoke-static {v0}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    throw p1

    .line 157
    :cond_2
    sget-object p1, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    const-string v0, "Agent cache file doesn\'t exist."

    invoke-static {v2, p1, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v1, v3

    .line 160
    :goto_4
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception p1

    .line 110
    monitor-exit p0

    throw p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 8

    .line 166
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dr;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    sget-object p1, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    const-string v0, "No old file to replace"

    invoke-static {p1, v0}, Lcom/flurry/sdk/dc;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    invoke-static {v2}, Lcom/flurry/sdk/dr;->i(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v2, 0x6

    .line 175
    sget-object v3, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    const-string v4, "File does not exist"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/dr;->a(Ljava/lang/String;[B)V

    .line 4303
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 4305
    sget-object v3, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting  block File for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " file name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4306
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v5

    .line 5103
    iget-object v5, v5, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 4306
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ".flurrydatasenderblock."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    .line 4305
    invoke-static {v5, v3, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4309
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v3

    .line 6103
    iget-object v3, v3, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 4309
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, ".flurrydatasenderblock."

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 4311
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4312
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 4313
    sget-object v4, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found file for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Deleted - "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, ".YFlurrySenderIndex.info."

    .line 188
    invoke-direct {p0, p1, v0, v1}, Lcom/flurry/sdk/dr;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Lcom/flurry/sdk/dr;->f(Ljava/lang/String;)V

    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 5

    .line 195
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 197
    sget-object v0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deleting Index File for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 7103
    iget-object v2, v2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".FlurrySenderIndex.info."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 197
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 8103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ".FlurrySenderIndex.info."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 204
    sget-object v1, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found file for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Deleted - "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".YFlurrySenderIndex.info."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized h(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    const/4 v0, 0x5

    .line 215
    sget-object v1, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reading Index File for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v3

    .line 9103
    iget-object v3, v3, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 217
    invoke-static {p1}, Lcom/flurry/sdk/dr;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/flurry/sdk/cu;

    .line 221
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 10103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 222
    invoke-static {p1}, Lcom/flurry/sdk/dr;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, ".YFlurrySenderIndex.info."

    const/4 v2, 0x1

    new-instance v3, Lcom/flurry/sdk/dr$2;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/dr$2;-><init>(Lcom/flurry/sdk/dr;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/flurry/sdk/cu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ea;)V

    .line 233
    invoke-virtual {v0}, Lcom/flurry/sdk/cu;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ds;

    .line 11024
    iget-object v1, v1, Lcom/flurry/sdk/ds;->a:Ljava/lang/String;

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 240
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 212
    monitor-exit p0

    throw p1
.end method

.method private static i(Ljava/lang/String;)[B
    .locals 6

    .line 244
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 248
    sget-object v0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading block File for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 11103
    iget-object v2, v2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".flurrydatasenderblock."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 248
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 12103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ".flurrydatasenderblock."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 256
    sget-object v1, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reading Index File for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Found file."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 262
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    .line 279
    invoke-static {v0}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    return-object v3

    .line 269
    :cond_0
    :try_start_2
    new-array p0, p0, [B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 272
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    invoke-static {v0}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p0, v3

    :goto_0
    move-object v3, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object p0, v3

    :goto_1
    const/4 v0, 0x6

    .line 277
    :try_start_4
    sget-object v2, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    const-string v4, "Error when loading persistent file"

    invoke-static {v0, v2, v4, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 279
    invoke-static {v3}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    invoke-static {v3}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_1
    const/4 p0, 0x4

    .line 282
    sget-object v0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    const-string v1, "Agent cache file doesn\'t exist."

    invoke-static {p0, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object p0, v3

    :goto_3
    return-object p0
.end method

.method private declared-synchronized j(Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 452
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 454
    new-instance v0, Lcom/flurry/sdk/cu;

    .line 455
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 18103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 456
    invoke-static {p1}, Lcom/flurry/sdk/dr;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".YFlurrySenderIndex.info."

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/dr$5;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/dr$5;-><init>(Lcom/flurry/sdk/dr;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/cu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ea;)V

    .line 468
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dr;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 470
    sget-object v2, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "discardOutdatedBlocksForDataKey: notSentBlocks = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 470
    invoke-static {v4, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18397
    invoke-static {v2}, Lcom/flurry/sdk/dq;->b(Ljava/lang/String;)Lcom/flurry/sdk/cu;

    move-result-object v3

    .line 18399
    invoke-virtual {v3}, Lcom/flurry/sdk/cu;->b()Z

    .line 475
    sget-object v3, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "discardOutdatedBlocksForDataKey: removed block = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/dr;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-virtual {v0}, Lcom/flurry/sdk/cu;->b()Z

    move-result p1

    .line 485
    invoke-direct {p0}, Lcom/flurry/sdk/dr;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 451
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/flurry/sdk/dr;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/dq;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 349
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addBlockInfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 16041
    iget-object p1, p1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/flurry/sdk/dr;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 356
    sget-object v0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    const-string v3, "New Data Key"

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 361
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sget-object v3, Lcom/flurry/sdk/dr;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le p1, v3, :cond_1

    .line 367
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 16397
    invoke-static {p1}, Lcom/flurry/sdk/dq;->b(Ljava/lang/String;)Lcom/flurry/sdk/cu;

    move-result-object p1

    .line 16399
    invoke-virtual {p1}, Lcom/flurry/sdk/cu;->b()Z

    .line 371
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 374
    :cond_1
    iget-object p1, p0, Lcom/flurry/sdk/dr;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ".YFlurrySenderIndex.info."

    .line 377
    invoke-direct {p0, p2, v0, p1}, Lcom/flurry/sdk/dr;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 390
    invoke-direct {p0}, Lcom/flurry/sdk/dr;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 348
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/flurry/sdk/dr;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 17397
    invoke-static {p1}, Lcom/flurry/sdk/dq;->b(Ljava/lang/String;)Lcom/flurry/sdk/cu;

    move-result-object v1

    .line 17399
    invoke-virtual {v1}, Lcom/flurry/sdk/cu;->b()Z

    .line 438
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 441
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/flurry/sdk/dr;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ".YFlurrySenderIndex.info."

    .line 443
    invoke-direct {p0, p2, v0, v1}, Lcom/flurry/sdk/dr;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 445
    :cond_1
    invoke-direct {p0, p2}, Lcom/flurry/sdk/dr;->j(Ljava/lang/String;)Z

    :goto_1
    return p1
.end method
