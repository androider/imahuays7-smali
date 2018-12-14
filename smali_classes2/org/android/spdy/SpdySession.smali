.class public final Lorg/android/spdy/SpdySession;
.super Ljava/lang/Object;
.source "SpdySession.java"


# static fields
.field private static volatile d:I


# instance fields
.field a:Lorg/android/spdy/b;

.field b:Lorg/android/spdy/d;

.field volatile c:I

.field private e:Lorg/android/spdy/SpdyAgent;

.field private volatile f:J

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Object;

.field private l:I

.field private m:Lorg/android/spdy/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/android/spdy/c<",
            "Lorg/android/spdy/j;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Ljava/lang/Object;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(JLorg/android/spdy/SpdyAgent;Ljava/lang/String;Ljava/lang/String;Lorg/android/spdy/d;IILjava/lang/Object;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lorg/android/spdy/SpdySession;->h:Z

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/android/spdy/SpdySession;->k:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 33
    iput v1, p0, Lorg/android/spdy/SpdySession;->l:I

    const/4 v2, 0x0

    .line 34
    iput-object v2, p0, Lorg/android/spdy/SpdySession;->m:Lorg/android/spdy/c;

    .line 35
    iput-object v2, p0, Lorg/android/spdy/SpdySession;->b:Lorg/android/spdy/d;

    .line 36
    iput v0, p0, Lorg/android/spdy/SpdySession;->n:I

    .line 37
    iput-object v2, p0, Lorg/android/spdy/SpdySession;->o:Ljava/lang/Object;

    .line 38
    iput v1, p0, Lorg/android/spdy/SpdySession;->c:I

    .line 48
    iput-wide p1, p0, Lorg/android/spdy/SpdySession;->f:J

    .line 49
    iput-object p3, p0, Lorg/android/spdy/SpdySession;->e:Lorg/android/spdy/SpdyAgent;

    .line 50
    iput-object p4, p0, Lorg/android/spdy/SpdySession;->i:Ljava/lang/String;

    .line 51
    new-instance p1, Lorg/android/spdy/i;

    invoke-direct {p1}, Lorg/android/spdy/i;-><init>()V

    iput-object p1, p0, Lorg/android/spdy/SpdySession;->a:Lorg/android/spdy/b;

    .line 52
    iput-object p5, p0, Lorg/android/spdy/SpdySession;->j:Ljava/lang/String;

    .line 54
    new-instance p1, Lorg/android/spdy/c;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lorg/android/spdy/c;-><init>(I)V

    iput-object p1, p0, Lorg/android/spdy/SpdySession;->m:Lorg/android/spdy/c;

    .line 55
    iput-object p6, p0, Lorg/android/spdy/SpdySession;->b:Lorg/android/spdy/d;

    .line 56
    iput p8, p0, Lorg/android/spdy/SpdySession;->n:I

    .line 57
    iput p7, p0, Lorg/android/spdy/SpdySession;->p:I

    .line 58
    iput-object p9, p0, Lorg/android/spdy/SpdySession;->o:Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lorg/android/spdy/SpdySession;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private native sendCustomControlFrameN(JIIII[B)I
.end method

.method private native sendHeadersN(JI[Ljava/lang/String;Z)I
.end method

.method private native setOptionN(JII)I
.end method

.method private native streamCloseN(JII)I
.end method

.method private native streamSendDataN(JI[BIIZ)I
.end method

.method private native submitBioPingN(J)I
.end method

.method private native submitPingN(J)I
.end method

.method private native submitRequestN(JLjava/lang/String;B[Ljava/lang/String;[BZII)I
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/android/spdy/SpdySession;->c:I

    return v0
.end method

.method public a(IIII[B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->d()V

    if-eqz p5, :cond_0

    .line 198
    array-length v0, p5

    if-gtz v0, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v7, p5

    const-string p5, "tnet-jni"

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[sendCustomControlFrame] - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lorg/android/spdy/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-wide v1, p0, Lorg/android/spdy/SpdySession;->f:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/android/spdy/SpdySession;->sendCustomControlFrameN(JIIII[B)I

    move-result p1

    if-eqz p1, :cond_1

    .line 207
    new-instance p2, Lorg/android/spdy/SpdyErrorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sendCustomControlFrame error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_1
    return p1
.end method

.method public a(Lorg/android/spdy/h;Lorg/android/spdy/g;Ljava/lang/Object;Lorg/android/spdy/k;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 227
    invoke-virtual {p1}, Lorg/android/spdy/h;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 231
    :cond_0
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->d()V

    .line 233
    invoke-static {p1, p2}, Lorg/android/spdy/SpdyAgent;->a(Lorg/android/spdy/h;Lorg/android/spdy/g;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    array-length v1, v0

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    move-object v7, v0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 241
    iget-boolean p2, p2, Lorg/android/spdy/g;->c:Z

    move v8, p2

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    .line 250
    :goto_0
    new-instance p2, Lorg/android/spdy/j;

    invoke-direct {p2, p3, p4}, Lorg/android/spdy/j;-><init>(Ljava/lang/Object;Lorg/android/spdy/k;)V

    .line 251
    invoke-virtual {p0, p2}, Lorg/android/spdy/SpdySession;->a(Lorg/android/spdy/j;)I

    move-result p3

    .line 252
    invoke-virtual {p1}, Lorg/android/spdy/h;->b()Ljava/util/Map;

    move-result-object p4

    invoke-static {p4}, Lorg/android/spdy/SpdyAgent;->c(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v6

    const-string p4, "tnet-jni"

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "starttime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/android/spdy/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-wide v2, p0, Lorg/android/spdy/SpdySession;->f:J

    invoke-virtual {p1}, Lorg/android/spdy/h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/android/spdy/h;->a()I

    move-result p4

    int-to-byte v5, p4

    invoke-virtual {p1}, Lorg/android/spdy/h;->e()I

    move-result v10

    move-object v1, p0

    move v9, p3

    invoke-direct/range {v1 .. v10}, Lorg/android/spdy/SpdySession;->submitRequestN(JLjava/lang/String;B[Ljava/lang/String;[BZII)I

    move-result p1

    const-string p4, "tnet-jni"

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " calltime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/android/spdy/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_3

    .line 262
    invoke-virtual {p0, p3}, Lorg/android/spdy/SpdySession;->a(I)V

    .line 263
    new-instance p2, Lorg/android/spdy/SpdyErrorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "submitRequest error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 265
    :cond_3
    iput p1, p2, Lorg/android/spdy/j;->c:I

    return p1

    .line 228
    :cond_4
    :goto_1
    new-instance p1, Lorg/android/spdy/SpdyErrorException;

    const-string p2, "submitRequest error: -1102"

    const/16 p3, -0x44e

    invoke-direct {p1, p2, p3}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method a(Lorg/android/spdy/j;)I
    .locals 3

    .line 80
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget v1, p0, Lorg/android/spdy/SpdySession;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/android/spdy/SpdySession;->l:I

    .line 82
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->m:Lorg/android/spdy/c;

    invoke-virtual {v2, v1, p1}, Lorg/android/spdy/c;->a(ILjava/lang/Object;)V

    .line 83
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 99
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->m:Lorg/android/spdy/c;

    invoke-virtual {v1, p1}, Lorg/android/spdy/c;->b(I)V

    .line 101
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method a(J)V
    .locals 0

    .line 140
    iput-wide p1, p0, Lorg/android/spdy/SpdySession;->f:J

    return-void
.end method

.method b()V
    .locals 1

    .line 66
    iget v0, p0, Lorg/android/spdy/SpdySession;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/android/spdy/SpdySession;->c:I

    return-void
.end method

.method public c()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->d()V

    .line 166
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->f:J

    invoke-direct {p0, v0, v1}, Lorg/android/spdy/SpdySession;->submitPingN(J)I

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submitPing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    return v0
.end method

.method d()V
    .locals 3

    .line 271
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string v1, "session is already closed: -1104"

    const/16 v2, -0x450

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    return-void
.end method

.method public e()I
    .locals 5

    const-string v0, "tnet-jni"

    const-string v1, "[SpdySession.closeSession] - "

    .line 298
    invoke-static {v0, v1}, Lorg/android/spdy/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-boolean v1, p0, Lorg/android/spdy/SpdySession;->h:Z

    if-nez v1, :cond_0

    const-string v1, "tnet-jni"

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpdySession.closeSession] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/android/spdy/SpdySession;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/spdy/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->e:Lorg/android/spdy/SpdyAgent;

    iget-object v2, p0, Lorg/android/spdy/SpdySession;->i:Ljava/lang/String;

    iget-object v3, p0, Lorg/android/spdy/SpdySession;->j:Ljava/lang/String;

    iget v4, p0, Lorg/android/spdy/SpdySession;->p:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/android/spdy/SpdyAgent;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 304
    iput-boolean v1, p0, Lorg/android/spdy/SpdySession;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->e:Lorg/android/spdy/SpdyAgent;

    iget-wide v2, p0, Lorg/android/spdy/SpdySession;->f:J

    invoke-virtual {v1, v2, v3}, Lorg/android/spdy/SpdyAgent;->a(J)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 308
    :try_start_2
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    .line 311
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
