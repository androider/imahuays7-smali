.class public Lcom/mh/movie/core/b/e;
.super Landroid/os/Handler;
.source "M3u8Down.java"


# static fields
.field static final synthetic b:Z = true


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Lcom/mh/movie/core/b/a;

.field private E:Ljava/util/concurrent/locks/Lock;

.field private F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mh/movie/core/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/mh/movie/core/b/b;

.field private H:J

.field public a:I

.field private final c:B

.field private final d:B

.field private final e:B

.field private final f:B

.field private final g:B

.field private final h:B

.field private final i:B

.field private final j:B

.field private final k:B

.field private final l:B

.field private final m:B

.field private final n:B

.field private final o:B

.field private final p:B

.field private q:Z

.field private r:I

.field private s:J

.field private t:[F

.field private u:[J

.field private v:J

.field private w:J

.field private x:[Z

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mh/movie/core/mvp/model/entity/DownloadData;Lcom/mh/movie/core/b/b;)V
    .locals 6

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x2

    .line 28
    iput-byte v0, p0, Lcom/mh/movie/core/b/e;->c:B

    const/4 v1, 0x1

    .line 30
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->d:B

    .line 31
    iput-byte v0, p0, Lcom/mh/movie/core/b/e;->e:B

    const/4 v1, 0x3

    .line 32
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->f:B

    const/4 v1, 0x4

    .line 33
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->g:B

    const/4 v1, 0x5

    .line 34
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->h:B

    const/4 v1, 0x6

    .line 35
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->i:B

    const/4 v1, 0x7

    .line 36
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->j:B

    const/16 v1, 0x8

    .line 37
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->k:B

    const/16 v1, 0x9

    .line 38
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->l:B

    const/16 v1, 0xa

    .line 39
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->m:B

    const/16 v1, 0xb

    .line 40
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->n:B

    const/16 v1, 0xc

    .line 41
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->o:B

    const/16 v1, 0xd

    .line 42
    iput-byte v1, p0, Lcom/mh/movie/core/b/e;->p:B

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcom/mh/movie/core/b/e;->q:Z

    .line 45
    iput v1, p0, Lcom/mh/movie/core/b/e;->r:I

    const-wide/16 v2, 0x0

    .line 47
    iput-wide v2, p0, Lcom/mh/movie/core/b/e;->s:J

    .line 48
    new-array v4, v0, [F

    iput-object v4, p0, Lcom/mh/movie/core/b/e;->t:[F

    .line 49
    new-array v4, v0, [J

    iput-object v4, p0, Lcom/mh/movie/core/b/e;->u:[J

    .line 50
    iput-wide v2, p0, Lcom/mh/movie/core/b/e;->v:J

    .line 51
    iput-wide v2, p0, Lcom/mh/movie/core/b/e;->w:J

    .line 52
    new-array v4, v0, [Z

    iput-object v4, p0, Lcom/mh/movie/core/b/e;->x:[Z

    const/4 v4, 0x0

    .line 58
    iput-object v4, p0, Lcom/mh/movie/core/b/e;->D:Lcom/mh/movie/core/b/a;

    .line 59
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, p0, Lcom/mh/movie/core/b/e;->E:Ljava/util/concurrent/locks/Lock;

    .line 61
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mh/movie/core/b/e;->H:J

    const/4 v4, -0x2

    .line 66
    iput v4, p0, Lcom/mh/movie/core/b/e;->a:I

    .line 72
    iput-object p3, p0, Lcom/mh/movie/core/b/e;->G:Lcom/mh/movie/core/b/b;

    .line 73
    iput-object p1, p0, Lcom/mh/movie/core/b/e;->y:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 76
    new-instance p1, Lcom/mh/movie/core/b/a;

    invoke-direct {p1, p2}, Lcom/mh/movie/core/b/a;-><init>(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    iput-object p1, p0, Lcom/mh/movie/core/b/e;->D:Lcom/mh/movie/core/b/a;

    .line 77
    iget-object p1, p0, Lcom/mh/movie/core/b/e;->y:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/mh/movie/core/b/e;->D:Lcom/mh/movie/core/b/a;

    invoke-virtual {p1}, Lcom/mh/movie/core/b/a;->a()Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/b/e;->y:Ljava/lang/String;

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/b/e;->y:Ljava/lang/String;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/b/e;->A:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/mh/movie/core/b/e;->y:Ljava/lang/String;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    .line 84
    iget-object p2, p0, Lcom/mh/movie/core/b/e;->y:Ljava/lang/String;

    add-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/b/e;->C:Ljava/lang/String;

    .line 85
    iget-object p2, p0, Lcom/mh/movie/core/b/e;->y:Ljava/lang/String;

    iget-object v4, p0, Lcom/mh/movie/core/b/e;->y:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, p3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/b/e;->B:Ljava/lang/String;

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getVideoCacheFolder()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/mh/movie/core/b/e;->A:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/b/e;->z:Ljava/lang/String;

    .line 88
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/mh/movie/core/b/e;->z:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_1

    .line 90
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :goto_0
    if-ge p1, v0, :cond_2

    .line 94
    iget-object p2, p0, Lcom/mh/movie/core/b/e;->t:[F

    const/4 p3, 0x0

    aput p3, p2, v1

    .line 95
    iget-object p2, p0, Lcom/mh/movie/core/b/e;->u:[J

    aput-wide v2, p2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/b/e;->D:Lcom/mh/movie/core/b/a;

    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/mh/movie/core/b/e;->D:Lcom/mh/movie/core/b/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/mh/movie/core/b/e;->z:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "info"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mh/movie/core/b/e;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/mh/movie/core/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/b/e;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/mh/movie/core/b/e;->r:I

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/b/e;J)J
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/mh/movie/core/b/e;->s:J

    return-wide p1
.end method

.method private a(I)V
    .locals 8

    const-string v0, ""

    .line 411
    iget-object v1, p0, Lcom/mh/movie/core/b/e;->E:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 412
    iget-object v1, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 413
    iget-object v5, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mh/movie/core/b/d;

    .line 414
    iget-byte v6, v5, Lcom/mh/movie/core/b/d;->g:B

    sget-byte v7, Lcom/mh/movie/core/b/d;->a:B

    if-ne v6, v7, :cond_0

    .line 416
    sget-byte v0, Lcom/mh/movie/core/b/d;->b:B

    iput-byte v0, v5, Lcom/mh/movie/core/b/d;->g:B

    .line 417
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, ""

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez v3, :cond_2

    iget-object v1, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 425
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->x:[Z

    aput-boolean v2, v0, p1

    return-void

    :cond_2
    const-string v1, ""

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    const-string v1, ""

    .line 428
    invoke-direct {p0, v0, v1, p1}, Lcom/mh/movie/core/b/e;->a(ILjava/lang/Object;I)V

    return-void

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/mh/movie/core/b/e;->x:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 432
    iget-object v1, p0, Lcom/mh/movie/core/b/e;->E:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 435
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/mh/movie/core/b/e;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 437
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/16 v1, 0xc

    .line 439
    invoke-direct {p0, v1, v0, p1}, Lcom/mh/movie/core/b/e;->a(ILjava/lang/Object;I)V

    :goto_2
    return-void
.end method

.method private a(ILjava/lang/Object;I)V
    .locals 1

    .line 298
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 299
    iput p1, v0, Landroid/os/Message;->what:I

    .line 300
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 301
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 302
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/b/e;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/mh/movie/core/b/e;->a(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/b/e;[Ljava/io/Closeable;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/mh/movie/core/b/e;->a([Ljava/io/Closeable;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .line 253
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 260
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 261
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/mh/movie/core/b/e;->a(Ljava/io/File;)V

    goto :goto_1

    .line 264
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "failed err "

    .line 571
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-direct {p0}, Lcom/mh/movie/core/b/e;->i()V

    .line 573
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->G:Lcom/mh/movie/core/b/b;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->G:Lcom/mh/movie/core/b/b;

    iget-object v1, p0, Lcom/mh/movie/core/b/e;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mh/movie/core/b/e;->a()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/mh/movie/core/b/e;->a:I

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/mh/movie/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 447
    iget-object v0, v9, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    move-object/from16 v2, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/mh/movie/core/b/d;

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v9, Lcom/mh/movie/core/b/e;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mh/movie/core/b/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v9, Lcom/mh/movie/core/b/e;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mh/movie/core/b/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Lcom/mh/movie/core/b/e;->z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/mh/movie/core/b/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 453
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v12, v0

    .line 456
    invoke-static {}, Lcom/mh/movie/core/b/c;->a()Lcom/mh/movie/core/b/c;

    move-result-object v10

    const-wide/16 v14, -0x1

    new-instance v16, Lcom/mh/movie/core/b/e$2;

    move-object/from16 v0, v16

    move-object v1, v9

    move/from16 v3, p2

    move-wide v5, v12

    invoke-direct/range {v0 .. v8}, Lcom/mh/movie/core/b/e$2;-><init>(Lcom/mh/movie/core/b/e;Ljava/lang/String;ILjava/io/File;JLcom/mh/movie/core/b/d;Ljava/lang/String;)V

    invoke-virtual/range {v10 .. v16}, Lcom/mh/movie/core/b/c;->a(Ljava/lang/String;JJLokhttp3/Callback;)V

    return-void
.end method

.method private varargs a([Ljava/io/Closeable;)V
    .locals 5

    .line 551
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    .line 554
    :try_start_0
    aget-object v4, p1, v2

    if-eqz v4, :cond_0

    .line 556
    aget-object v4, p1, v2

    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 559
    :try_start_1
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 562
    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_2
    if-ge v1, v0, :cond_1

    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 561
    :cond_1
    throw v2

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 562
    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/b/e;)[F
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mh/movie/core/b/e;->t:[F

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/b/e;)[J
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mh/movie/core/b/e;->u:[J

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/b/e;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/mh/movie/core/b/e;->s:J

    return-wide v0
.end method

.method private g()V
    .locals 9

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 584
    iget-wide v2, p0, Lcom/mh/movie/core/b/e;->H:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v6, v4, v2

    if-ltz v6, :cond_2

    .line 585
    iput-wide v0, p0, Lcom/mh/movie/core/b/e;->H:J

    .line 587
    iget-wide v0, p0, Lcom/mh/movie/core/b/e;->s:J

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    long-to-float v0, v0

    .line 589
    iget-object v1, p0, Lcom/mh/movie/core/b/e;->t:[F

    aget v1, v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    :cond_0
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->G:Lcom/mh/movie/core/b/b;

    if-eqz v2, :cond_1

    .line 593
    iget-object v3, p0, Lcom/mh/movie/core/b/e;->G:Lcom/mh/movie/core/b/b;

    iget-object v4, p0, Lcom/mh/movie/core/b/e;->A:Ljava/lang/String;

    iget-wide v7, p0, Lcom/mh/movie/core/b/e;->v:J

    move-wide v5, v0

    invoke-interface/range {v3 .. v8}, Lcom/mh/movie/core/b/b;->a(Ljava/lang/String;JJ)V

    .line 595
    :cond_1
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->D:Lcom/mh/movie/core/b/a;

    if-eqz v2, :cond_2

    .line 596
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->D:Lcom/mh/movie/core/b/a;

    invoke-virtual {v2, v0, v1}, Lcom/mh/movie/core/b/a;->a(J)V

    :cond_2
    return-void
.end method

.method private h()V
    .locals 5

    .line 606
    invoke-direct {p0}, Lcom/mh/movie/core/b/e;->i()V

    .line 607
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "downFinish"

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->G:Lcom/mh/movie/core/b/b;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->G:Lcom/mh/movie/core/b/b;

    iget-object v1, p0, Lcom/mh/movie/core/b/e;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mh/movie/core/b/e;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/mh/movie/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->D:Lcom/mh/movie/core/b/a;

    if-eqz v0, :cond_4

    .line 613
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->D:Lcom/mh/movie/core/b/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/b/a;->b()V

    goto :goto_1

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->E:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 617
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 618
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/b/d;

    .line 619
    iget-byte v3, v2, Lcom/mh/movie/core/b/d;->g:B

    sget-byte v4, Lcom/mh/movie/core/b/d;->a:B

    if-eq v3, v4, :cond_2

    .line 620
    sget-byte v3, Lcom/mh/movie/core/b/d;->a:B

    iput-byte v3, v2, Lcom/mh/movie/core/b/d;->g:B

    .line 621
    iget-object v3, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 624
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->E:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u5f02\u5e38"

    .line 625
    invoke-direct {p0, v0}, Lcom/mh/movie/core/b/e;->a(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 642
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->x:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_0
    iput v0, p0, Lcom/mh/movie/core/b/e;->r:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mh/movie/core/b/e;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/b/e;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 18

    move-object/from16 v1, p0

    .line 124
    iget-object v2, v1, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 128
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/mh/movie/core/b/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return v5

    :cond_1
    const-wide/16 v6, 0x0

    .line 135
    iput-wide v6, v1, Lcom/mh/movie/core/b/e;->w:J

    .line 136
    iput-wide v6, v1, Lcom/mh/movie/core/b/e;->s:J

    .line 139
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v4, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 140
    :goto_0
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v11, "#EXTINF:"

    .line 141
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v9, 0x8

    .line 142
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    .line 143
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 144
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 146
    :cond_2
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    goto :goto_0

    :cond_3
    const-string v11, ".ts"

    .line 147
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 149
    new-instance v11, Lcom/mh/movie/core/b/d;

    invoke-direct {v11, v10, v9}, Lcom/mh/movie/core/b/d;-><init>(Ljava/lang/String;F)V

    .line 150
    iget-wide v12, v1, Lcom/mh/movie/core/b/e;->w:J

    long-to-float v10, v12

    add-float/2addr v10, v9

    float-to-long v12, v10

    iput-wide v12, v1, Lcom/mh/movie/core/b/e;->w:J

    .line 151
    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/mh/movie/core/b/e;->z:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/mh/movie/core/b/d;->d:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v16, v12, v14

    if-gez v16, :cond_4

    goto :goto_1

    .line 155
    :cond_4
    iget-wide v12, v1, Lcom/mh/movie/core/b/e;->s:J

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    const/16 v16, 0x0

    add-long v5, v12, v14

    iput-wide v5, v1, Lcom/mh/movie/core/b/e;->s:J

    cmpl-float v5, v8, v2

    if-nez v5, :cond_7

    .line 157
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-float v5, v5

    iget v6, v11, Lcom/mh/movie/core/b/d;->f:F

    div-float/2addr v5, v6

    move v8, v5

    goto :goto_2

    .line 153
    :cond_5
    :goto_1
    iget-object v5, v1, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    iget-object v6, v11, Lcom/mh/movie/core/b/d;->d:Ljava/lang/String;

    invoke-interface {v5, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const-string v5, "#"

    .line 160
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "m3u8\u683c\u5f0f\u9519\u8bef"

    .line 161
    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 164
    :cond_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    cmpl-float v2, v8, v2

    if-lez v2, :cond_9

    .line 166
    iget-wide v4, v1, Lcom/mh/movie/core/b/e;->w:J

    long-to-float v2, v4

    mul-float v8, v8, v2

    float-to-long v4, v8

    iput-wide v4, v1, Lcom/mh/movie/core/b/e;->v:J

    .line 169
    :cond_9
    iget-object v2, v1, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_b

    iget-wide v4, v1, Lcom/mh/movie/core/b/e;->s:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_a

    goto :goto_3

    :cond_a
    const-string v2, "m3u8\u6587\u4ef6\u683c\u5f0f\u9519\u8bef"

    .line 172
    invoke-direct {v1, v2}, Lcom/mh/movie/core/b/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    return v2

    :cond_b
    :goto_3
    return v3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 177
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    return v2
.end method

.method public declared-synchronized c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 188
    :try_start_0
    iget v0, p0, Lcom/mh/movie/core/b/e;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 189
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, -0x2

    .line 195
    :try_start_1
    iput v0, p0, Lcom/mh/movie/core/b/e;->a:I

    .line 197
    invoke-virtual {p0}, Lcom/mh/movie/core/b/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/mh/movie/core/b/e;->a(ILjava/lang/Object;I)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {}, Lcom/mh/movie/core/b/c;->a()Lcom/mh/movie/core/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/mh/movie/core/b/e;->y:Ljava/lang/String;

    new-instance v3, Lcom/mh/movie/core/b/e$1;

    invoke-direct {v3, p0, v0}, Lcom/mh/movie/core/b/e$1;-><init>(Lcom/mh/movie/core/b/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/mh/movie/core/b/c;->a(Ljava/lang/String;Lokhttp3/Callback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 187
    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 2

    .line 229
    iget v0, p0, Lcom/mh/movie/core/b/e;->r:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/mh/movie/core/b/e;->r:I

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/mh/movie/core/b/e;->x:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 233
    iget v1, p0, Lcom/mh/movie/core/b/e;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mh/movie/core/b/e;->r:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 243
    invoke-virtual {p0}, Lcom/mh/movie/core/b/e;->d()V

    .line 245
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mh/movie/core/b/e;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/mh/movie/core/b/e;->a(Ljava/io/File;)V

    return-void
.end method

.method public f()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 653
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->x:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 312
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 313
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->G:Lcom/mh/movie/core/b/b;

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 356
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->E:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 359
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/b/d;

    .line 360
    sget-byte v3, Lcom/mh/movie/core/b/d;->a:B

    iput-byte v3, v2, Lcom/mh/movie/core/b/d;->g:B

    .line 361
    iget-object v3, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->E:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->x:[Z

    iget v2, p1, Landroid/os/Message;->arg1:I

    aput-boolean v1, v0, v2

    .line 365
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mh/movie/core/b/e;->a(I)V

    const-string v0, "down error"

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u542f\u7f13\u5b58thread == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bool ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/b/e;->x:[Z

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-boolean p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 340
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->E:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 343
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/b/d;

    .line 344
    sget-byte v3, Lcom/mh/movie/core/b/d;->a:B

    iput-byte v3, v2, Lcom/mh/movie/core/b/d;->g:B

    .line 345
    iget-object v3, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->E:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->x:[Z

    iget p1, p1, Landroid/os/Message;->arg1:I

    aput-boolean v1, v0, p1

    .line 349
    invoke-virtual {p0}, Lcom/mh/movie/core/b/e;->f()Z

    move-result p1

    if-nez p1, :cond_6

    .line 351
    iput v1, p0, Lcom/mh/movie/core/b/e;->r:I

    const-string p1, "\u4e0b\u8f7d\u6587\u4ef6\u5931\u8d25"

    .line 352
    invoke-direct {p0, p1}, Lcom/mh/movie/core/b/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 369
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-object v2, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    iget-object v1, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/mh/movie/core/b/e;->a(I)V

    goto/16 :goto_1

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->x:[Z

    iget v2, p1, Landroid/os/Message;->arg1:I

    aput-boolean v1, v0, v2

    const-string v0, "MH\u8b66\u544a"

    const-string v2, "\u627e\u4e0d\u5230\u5bf9\u5e94ts\u6570\u636e,%s"

    const/4 v3, 0x1

    .line 376
    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-boolean p1, Lcom/mh/movie/core/b/e;->b:Z

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 323
    :pswitch_4
    invoke-virtual {p0}, Lcom/mh/movie/core/b/e;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 324
    iget-object p1, p0, Lcom/mh/movie/core/b/e;->F:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 325
    invoke-direct {p0}, Lcom/mh/movie/core/b/e;->h()V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x2

    if-ge v1, p1, :cond_6

    .line 328
    invoke-direct {p0, v1}, Lcom/mh/movie/core/b/e;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_5
    invoke-direct {p0}, Lcom/mh/movie/core/b/e;->i()V

    .line 333
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mh/movie/core/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 335
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    :pswitch_5
    const-string p1, "\u4e0b\u8f7dm3u\u5934\u6587\u4ef6\u5931\u8d25"

    .line 320
    invoke-direct {p0, p1}, Lcom/mh/movie/core/b/e;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 390
    :pswitch_6
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->x:[Z

    iget p1, p1, Landroid/os/Message;->arg1:I

    aput-boolean v1, v0, p1

    .line 391
    invoke-virtual {p0}, Lcom/mh/movie/core/b/e;->f()Z

    move-result p1

    if-nez p1, :cond_6

    .line 392
    iget-object p1, p0, Lcom/mh/movie/core/b/e;->D:Lcom/mh/movie/core/b/a;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/b/a;->a(Z)Z

    .line 393
    invoke-direct {p0}, Lcom/mh/movie/core/b/e;->i()V

    .line 394
    iget-object p1, p0, Lcom/mh/movie/core/b/e;->G:Lcom/mh/movie/core/b/b;

    if-eqz p1, :cond_6

    .line 395
    iget-object p1, p0, Lcom/mh/movie/core/b/e;->G:Lcom/mh/movie/core/b/b;

    iget-object v0, p0, Lcom/mh/movie/core/b/e;->A:Ljava/lang/String;

    iget v1, p0, Lcom/mh/movie/core/b/e;->a:I

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/b/b;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 381
    :pswitch_7
    iget-object v0, p0, Lcom/mh/movie/core/b/e;->x:[Z

    iget p1, p1, Landroid/os/Message;->arg1:I

    aput-boolean v1, v0, p1

    .line 382
    invoke-virtual {p0}, Lcom/mh/movie/core/b/e;->f()Z

    move-result p1

    if-nez p1, :cond_6

    .line 383
    invoke-direct {p0}, Lcom/mh/movie/core/b/e;->h()V

    goto :goto_1

    .line 387
    :pswitch_8
    invoke-direct {p0}, Lcom/mh/movie/core/b/e;->g()V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
