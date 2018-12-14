.class public final Lorg/android/spdy/SpdyAgent;
.super Ljava/lang/Object;
.source "SpdyAgent.java"


# static fields
.field public static volatile a:Z = false

.field public static volatile b:Z = false

.field private static final j:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final k:Ljava/util/concurrent/locks/Lock;

.field private static final l:Ljava/util/concurrent/locks/Lock;

.field private static volatile m:Z = false

.field private static volatile n:Lorg/android/spdy/SpdyAgent;

.field private static o:Ljava/lang/Object;

.field private static p:Ljava/lang/Object;

.field private static q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static r:I


# instance fields
.field private c:Lorg/android/spdy/a;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/android/spdy/SpdySession;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/android/spdy/SpdySession;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 66
    sget-object v0, Lorg/android/spdy/SpdyAgent;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lorg/android/spdy/SpdyAgent;->k:Ljava/util/concurrent/locks/Lock;

    .line 67
    sget-object v0, Lorg/android/spdy/SpdyAgent;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lorg/android/spdy/SpdyAgent;->l:Ljava/util/concurrent/locks/Lock;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->o:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->p:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->q:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;Lorg/android/spdy/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->d:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->e:Ljava/util/LinkedList;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->h:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->i:Ljava/lang/String;

    .line 150
    :try_start_0
    invoke-static {p1}, Lorg/android/spdy/f;->a(Landroid/content/Context;)V

    const-string p1, "tnet-3.1.11"

    const/4 v0, 0x1

    .line 151
    invoke-static {p1, v0}, Lorg/android/spdy/f;->a(Ljava/lang/String;I)Z

    move-result p1

    sput-boolean p1, Lorg/android/spdy/SpdyAgent;->m:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 157
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lorg/android/spdy/SpdyVersion;->a()I

    move-result p1

    invoke-virtual {p3}, Lorg/android/spdy/SpdySessionKind;->a()I

    move-result p2

    sget-object p3, Lorg/android/spdy/SslVersion;->SLIGHT_VERSION_V1:Lorg/android/spdy/SslVersion;

    invoke-virtual {p3}, Lorg/android/spdy/SslVersion;->a()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lorg/android/spdy/SpdyAgent;->initAgent(III)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/android/spdy/SpdyAgent;->f:J

    .line 158
    iput-object p4, p0, Lorg/android/spdy/SpdyAgent;->c:Lorg/android/spdy/a;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 160
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 162
    :goto_1
    iget-object p1, p0, Lorg/android/spdy/SpdyAgent;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    .line 124
    sget-object v0, Lorg/android/spdy/SpdyAgent;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lorg/android/spdy/SpdyAgent;->q:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 127
    sget-object v1, Lorg/android/spdy/SpdyAgent;->q:Ljava/util/HashMap;

    sget v2, Lorg/android/spdy/SpdyAgent;->r:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/android/spdy/SpdyAgent;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget p1, Lorg/android/spdy/SpdyAgent;->r:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 130
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 130
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static a(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 91
    sget-object v0, Lorg/android/spdy/SpdyAgent;->n:Lorg/android/spdy/SpdyAgent;

    if-nez v0, :cond_1

    .line 92
    sget-object v0, Lorg/android/spdy/SpdyAgent;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lorg/android/spdy/SpdyAgent;->n:Lorg/android/spdy/SpdyAgent;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Lorg/android/spdy/SpdyAgent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/android/spdy/SpdyAgent;-><init>(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;Lorg/android/spdy/a;)V

    sput-object v1, Lorg/android/spdy/SpdyAgent;->n:Lorg/android/spdy/SpdyAgent;

    .line 96
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 98
    :cond_1
    :goto_0
    sget-object p0, Lorg/android/spdy/SpdyAgent;->n:Lorg/android/spdy/SpdyAgent;

    return-object p0
.end method

.method static a(I)V
    .locals 3

    const/high16 v0, 0x500000

    if-lt p0, v0, :cond_0

    .line 205
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x44e

    invoke-direct {v0, p0, v1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    return-void
.end method

.method static a(II)V
    .locals 3

    const/16 v0, -0x44e

    const v1, 0x8000

    if-lt p0, v1, :cond_0

    .line 193
    new-instance p1, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_0
    const/16 p0, 0x2000

    if-lt p1, p0, :cond_1

    .line 198
    new-instance p0, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPDY_JNI_ERR_INVALID_PARAM:value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    return-void
.end method

.method static a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 230
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 231
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 234
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/spdy/SpdyAgent;->a([B[B)V

    .line 239
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 240
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lorg/android/spdy/SpdyAgent;->a(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a([B[B)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 212
    :goto_0
    array-length v2, p0

    const/16 v3, 0x3f

    const/16 v4, 0x7e

    const/16 v5, 0x20

    if-ge v1, v2, :cond_2

    .line 213
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v5, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-le v2, v4, :cond_1

    .line 214
    :cond_0
    aput-byte v3, p0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_2
    :goto_1
    array-length p0, p1

    if-ge v0, p0, :cond_5

    .line 219
    aget-byte p0, p1, v0

    and-int/lit16 p0, p0, 0xff

    if-lt p0, v5, :cond_3

    aget-byte p0, p1, v0

    and-int/lit16 p0, p0, 0xff

    if-le p0, v4, :cond_4

    .line 220
    :cond_3
    aput-byte v3, p1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 102
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->m:Z

    return v0
.end method

.method static a(Lorg/android/spdy/h;Lorg/android/spdy/g;)[B
    .locals 2

    .line 276
    invoke-virtual {p0}, Lorg/android/spdy/h;->b()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lorg/android/spdy/SpdyAgent;->a(Ljava/util/Map;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 282
    :cond_0
    iget-object p0, p1, Lorg/android/spdy/g;->b:Ljava/util/Map;

    invoke-static {p0}, Lorg/android/spdy/SpdyAgent;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_0

    .line 287
    :cond_1
    iget-object p0, p1, Lorg/android/spdy/g;->a:[B

    :goto_0
    if-eqz p0, :cond_2

    .line 290
    array-length p1, p0

    const/high16 v0, 0x500000

    if-lt p1, v0, :cond_2

    .line 291
    new-instance p1, Lorg/android/spdy/SpdyErrorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, -0x44e

    invoke-direct {p1, p0, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    return-object p0
.end method

.method static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2

    .line 251
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 252
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    .line 255
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 258
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 262
    invoke-static {v1}, Lorg/android/spdy/SpdyAgent;->a(I)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 267
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 166
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    :try_start_0
    sget-object v0, Lorg/android/spdy/SpdyAgent;->o:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    sget-boolean v1, Lorg/android/spdy/SpdyAgent;->m:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "tnet-3.1.11"

    const/4 v2, 0x1

    .line 171
    invoke-static {v1, v2}, Lorg/android/spdy/f;->a(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lorg/android/spdy/SpdyAgent;->m:Z

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, v1, v1, v1}, Lorg/android/spdy/SpdyAgent;->initAgent(III)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/android/spdy/SpdyAgent;->f:J

    .line 173
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 175
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 177
    :goto_0
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->m:Z

    if-nez v0, :cond_2

    .line 178
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string v1, "TNET_JNI_ERR_LOAD_SO_FAIL"

    const/16 v2, -0x454

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    return-void
.end method

.method private c()V
    .locals 3

    .line 544
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string v1, "SPDY_JNI_ERR_ASYNC_CLOSE"

    const/16 v2, -0x450

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 548
    :cond_0
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->b()V

    return-void
.end method

.method static c(Ljava/util/Map;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 606
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 609
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 610
    new-array v0, v0, [Ljava/lang/String;

    .line 611
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 612
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    .line 616
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 617
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 618
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 619
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private native closeSessionN(J)I
.end method

.method private static native configIpStackModeN(I)I
.end method

.method private native configLogFileN(Ljava/lang/String;II)I
.end method

.method private native configLogFileN(Ljava/lang/String;III)I
.end method

.method private native createSessionN(JLorg/android/spdy/SpdySession;I[BC[BC[B[BLjava/lang/Object;III)J
.end method

.method private native freeAgent(J)I
.end method

.method private native getSession(J[BC)J
.end method

.method private native initAgent(III)J
.end method

.method private native logFileCloseN()V
.end method

.method private native logFileFlushN()V
.end method

.method private native setConTimeout(JI)I
.end method

.method private native setSessionKind(JI)I
.end method


# virtual methods
.method a(J)I
    .locals 0

    .line 602
    invoke-direct {p0, p1, p2}, Lorg/android/spdy/SpdyAgent;->closeSessionN(J)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;II)I
    .locals 1

    .line 940
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/android/spdy/SpdyAgent;->configLogFileN(Ljava/lang/String;II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/d;Lorg/android/spdy/l;III)Lorg/android/spdy/SpdySession;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move/from16 v12, p6

    if-nez v14, :cond_0

    .line 360
    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    const-string v2, "SPDY_JNI_ERR_INVALID_PARAM"

    const/16 v3, -0x44e

    invoke-direct {v1, v2, v3}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    const-string v1, "/"

    .line 364
    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    .line 365
    aget-object v2, v1, v16

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string v2, "0.0.0.0"

    .line 366
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 368
    array-length v3, v1

    const/4 v10, 0x1

    if-eq v3, v10, :cond_1

    .line 369
    aget-object v1, v1, v10

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 370
    aget-object v2, v1, v16

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 371
    aget-object v1, v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-char v1, v1

    move/from16 v18, v1

    move-object/from16 v17, v2

    move-object v9, v14

    goto :goto_0

    .line 373
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/0.0.0.0:0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move-object/from16 v17, v2

    const/16 v18, 0x0

    .line 375
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/android/spdy/SpdyAgent;->c()V

    .line 378
    sget-object v1, Lorg/android/spdy/SpdyAgent;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 380
    :try_start_0
    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->d:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/android/spdy/SpdySession;

    .line 381
    iget-object v2, v15, Lorg/android/spdy/SpdyAgent;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/16 v3, 0x32

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 385
    :goto_1
    sget-object v3, Lorg/android/spdy/SpdyAgent;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v2, :cond_3

    .line 388
    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    const-string v2, "SPDY_SESSION_EXCEED_MAXED: session count exceed max"

    const/16 v3, -0x451

    invoke-direct {v1, v2, v3}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_3
    if-eqz v1, :cond_4

    .line 394
    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->b()V

    return-object v1

    .line 399
    :cond_4
    sget-object v1, Lorg/android/spdy/SpdyAgent;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/16 v19, 0x0

    .line 401
    :try_start_1
    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->d:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/android/spdy/SpdySession;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-object/from16 v1, v19

    :goto_2
    if-eqz v1, :cond_5

    .line 406
    sget-object v2, Lorg/android/spdy/SpdyAgent;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 407
    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->b()V

    return-object v1

    .line 411
    :cond_5
    :try_start_2
    new-instance v8, Lorg/android/spdy/SpdySession;

    const-wide/16 v2, 0x0

    move-object v1, v8

    move-object v4, v15

    move-object v5, v9

    move-object v6, v13

    move-object/from16 v7, p4

    move-object/from16 v20, v8

    move v8, v12

    move-object/from16 v21, v9

    move/from16 v9, p7

    const/16 v22, 0x1

    move-object/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/android/spdy/SpdySession;-><init>(JLorg/android/spdy/SpdyAgent;Ljava/lang/String;Ljava/lang/String;Lorg/android/spdy/d;IILjava/lang/Object;)V

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lorg/android/spdy/SpdyAgent;->a(Ljava/lang/String;)I

    move-result v5

    .line 414
    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->h:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v1, :cond_6

    :try_start_3
    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->i:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 415
    iget-wide v2, v15, Lorg/android/spdy/SpdyAgent;->f:J

    aget-object v1, v11, v16

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    aget-object v1, v11, v22

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-char v7, v1

    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v15

    move-object/from16 v4, v20

    move-object/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v12, p3

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    :try_start_4
    invoke-direct/range {v1 .. v15}, Lorg/android/spdy/SpdyAgent;->createSessionN(JLorg/android/spdy/SpdySession;I[BC[BC[B[BLjava/lang/Object;III)J

    move-result-wide v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, p0

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v1, v15

    goto/16 :goto_7

    .line 421
    :cond_6
    :try_start_5
    iget-wide v2, v15, Lorg/android/spdy/SpdyAgent;->f:J

    aget-object v1, v11, v16

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    aget-object v1, v11, v22

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    int-to-char v7, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v15

    move-object/from16 v4, v20

    move-object/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v12, p3

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    :try_start_6
    invoke-direct/range {v1 .. v15}, Lorg/android/spdy/SpdyAgent;->createSessionN(JLorg/android/spdy/SpdySession;I[BC[BC[B[BLjava/lang/Object;III)J

    move-result-wide v1

    :goto_3
    const-string v3, "tnet-jni"

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " create new session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/spdy/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x1

    and-long v5, v1, v3

    cmp-long v7, v5, v3

    const-wide/16 v3, 0x0

    if-nez v7, :cond_7

    shr-long v1, v1, v22

    long-to-int v1, v1

    move v5, v1

    move-wide v1, v3

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    cmp-long v6, v1, v3

    if-eqz v6, :cond_8

    move-object/from16 v3, v20

    .line 444
    invoke-virtual {v3, v1, v2}, Lorg/android/spdy/SpdySession;->a(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v1, p0

    .line 445
    :try_start_7
    iget-object v2, v1, Lorg/android/spdy/SpdyAgent;->d:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v21

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v2, v1, Lorg/android/spdy/SpdyAgent;->e:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_8
    move-object/from16 v1, p0

    if-eqz v5, :cond_9

    .line 448
    new-instance v2, Lorg/android/spdy/SpdyErrorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create session error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 452
    :cond_9
    :goto_5
    sget-object v2, Lorg/android/spdy/SpdyAgent;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v19

    :catchall_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v15

    :goto_6
    move-object v2, v0

    :goto_7
    sget-object v3, Lorg/android/spdy/SpdyAgent;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :catchall_5
    move-exception v0

    move-object v1, v15

    move-object v2, v0

    .line 385
    sget-object v3, Lorg/android/spdy/SpdyAgent;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public a(Lorg/android/spdy/e;)Lorg/android/spdy/SpdySession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 331
    invoke-virtual {p1}, Lorg/android/spdy/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/android/spdy/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/android/spdy/e;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/android/spdy/e;->c()Lorg/android/spdy/d;

    move-result-object v4

    invoke-virtual {p1}, Lorg/android/spdy/e;->d()I

    move-result v6

    invoke-virtual {p1}, Lorg/android/spdy/e;->g()I

    move-result v7

    invoke-virtual {p1}, Lorg/android/spdy/e;->f()I

    move-result v8

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/android/spdy/SpdyAgent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/d;Lorg/android/spdy/l;III)Lorg/android/spdy/SpdySession;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 73
    sget-object v0, Lorg/android/spdy/SpdyAgent;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    :try_start_1
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 81
    :goto_0
    sget-object p2, Lorg/android/spdy/SpdyAgent;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_1
    sget-object p1, Lorg/android/spdy/SpdyAgent;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    return-void
.end method

.method public a(Lorg/android/spdy/a;)V
    .locals 3

    const-string v0, "tnet-jni"

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAccsSslCallback] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iput-object p1, p0, Lorg/android/spdy/SpdyAgent;->c:Lorg/android/spdy/a;

    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
