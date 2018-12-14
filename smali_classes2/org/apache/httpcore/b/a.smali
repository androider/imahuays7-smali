.class public Lorg/apache/httpcore/b/a;
.super Ljava/lang/Object;
.source "BHttpConnectionBase.java"

# interfaces
.implements Lorg/apache/httpcore/h;
.implements Lorg/apache/httpcore/l;


# instance fields
.field private final a:Lorg/apache/httpcore/b/c/o;

.field private final b:Lorg/apache/httpcore/b/c/p;

.field private final c:Lorg/apache/httpcore/a/b;

.field private final d:Lorg/apache/httpcore/b/i;

.field private final e:Lorg/apache/httpcore/entity/d;

.field private final f:Lorg/apache/httpcore/entity/d;

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/httpcore/a/b;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/entity/d;)V
    .locals 12

    move-object v0, p0

    move v7, p1

    move-object/from16 v8, p5

    .line 111
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Buffer size"

    .line 112
    invoke-static {v7, v1}, Lorg/apache/httpcore/util/a;->a(ILjava/lang/String;)I

    .line 113
    new-instance v9, Lorg/apache/httpcore/b/c/l;

    invoke-direct {v9}, Lorg/apache/httpcore/b/c/l;-><init>()V

    .line 114
    new-instance v10, Lorg/apache/httpcore/b/c/l;

    invoke-direct {v10}, Lorg/apache/httpcore/b/c/l;-><init>()V

    .line 115
    new-instance v11, Lorg/apache/httpcore/b/c/o;

    if-eqz v8, :cond_0

    move-object v5, v8

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/httpcore/a/b;->a:Lorg/apache/httpcore/a/b;

    move-object v5, v1

    :goto_0
    const/4 v4, -0x1

    move-object v1, v11

    move-object v2, v9

    move v3, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/httpcore/b/c/o;-><init>(Lorg/apache/httpcore/b/c/l;IILorg/apache/httpcore/a/b;Ljava/nio/charset/CharsetDecoder;)V

    iput-object v11, v0, Lorg/apache/httpcore/b/a;->a:Lorg/apache/httpcore/b/c/o;

    .line 117
    new-instance v1, Lorg/apache/httpcore/b/c/p;

    move v2, p2

    move-object/from16 v3, p4

    invoke-direct {v1, v10, v7, v2, v3}, Lorg/apache/httpcore/b/c/p;-><init>(Lorg/apache/httpcore/b/c/l;IILjava/nio/charset/CharsetEncoder;)V

    iput-object v1, v0, Lorg/apache/httpcore/b/a;->b:Lorg/apache/httpcore/b/c/p;

    .line 119
    iput-object v8, v0, Lorg/apache/httpcore/b/a;->c:Lorg/apache/httpcore/a/b;

    .line 120
    new-instance v1, Lorg/apache/httpcore/b/i;

    invoke-direct {v1, v9, v10}, Lorg/apache/httpcore/b/i;-><init>(Lorg/apache/httpcore/c/f;Lorg/apache/httpcore/c/f;)V

    iput-object v1, v0, Lorg/apache/httpcore/b/a;->d:Lorg/apache/httpcore/b/i;

    if-eqz p6, :cond_1

    move-object/from16 v1, p6

    goto :goto_1

    .line 121
    :cond_1
    sget-object v1, Lorg/apache/httpcore/b/b/b;->a:Lorg/apache/httpcore/b/b/b;

    :goto_1
    iput-object v1, v0, Lorg/apache/httpcore/b/a;->e:Lorg/apache/httpcore/entity/d;

    if-eqz p7, :cond_2

    move-object/from16 v1, p7

    goto :goto_2

    .line 123
    :cond_2
    sget-object v1, Lorg/apache/httpcore/b/b/c;->a:Lorg/apache/httpcore/b/b/c;

    :goto_2
    iput-object v1, v0, Lorg/apache/httpcore/b/a;->f:Lorg/apache/httpcore/entity/d;

    .line 125
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, v0, Lorg/apache/httpcore/b/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method protected a(JLorg/apache/httpcore/c/g;)Ljava/io/InputStream;
    .locals 3

    const-wide/16 v0, -0x2

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 208
    new-instance p1, Lorg/apache/httpcore/b/c/c;

    iget-object p2, p0, Lorg/apache/httpcore/b/a;->c:Lorg/apache/httpcore/a/b;

    invoke-direct {p1, p3, p2}, Lorg/apache/httpcore/b/c/c;-><init>(Lorg/apache/httpcore/c/g;Lorg/apache/httpcore/a/b;)V

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 210
    new-instance p1, Lorg/apache/httpcore/b/c/m;

    invoke-direct {p1, p3}, Lorg/apache/httpcore/b/c/m;-><init>(Lorg/apache/httpcore/c/g;)V

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 212
    sget-object p1, Lorg/apache/httpcore/b/c/k;->a:Lorg/apache/httpcore/b/c/k;

    return-object p1

    .line 214
    :cond_2
    new-instance v0, Lorg/apache/httpcore/b/c/e;

    invoke-direct {v0, p3, p1, p2}, Lorg/apache/httpcore/b/c/e;-><init>(Lorg/apache/httpcore/c/g;J)V

    return-object v0
.end method

.method protected a(Ljava/net/Socket;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method protected a(JLorg/apache/httpcore/c/h;)Ljava/io/OutputStream;
    .locals 3

    const-wide/16 v0, -0x2

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 191
    new-instance p1, Lorg/apache/httpcore/b/c/d;

    const/16 p2, 0x800

    invoke-direct {p1, p2, p3}, Lorg/apache/httpcore/b/c/d;-><init>(ILorg/apache/httpcore/c/h;)V

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 193
    new-instance p1, Lorg/apache/httpcore/b/c/n;

    invoke-direct {p1, p3}, Lorg/apache/httpcore/b/c/n;-><init>(Lorg/apache/httpcore/c/h;)V

    return-object p1

    .line 195
    :cond_1
    new-instance v0, Lorg/apache/httpcore/b/c/f;

    invoke-direct {v0, p3, p1, p2}, Lorg/apache/httpcore/b/c/f;-><init>(Lorg/apache/httpcore/c/h;J)V

    return-object v0
.end method

.method protected a(Lorg/apache/httpcore/m;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->f:Lorg/apache/httpcore/entity/d;

    invoke-interface {v0, p1}, Lorg/apache/httpcore/entity/d;->a(Lorg/apache/httpcore/m;)J

    move-result-wide v0

    .line 201
    iget-object p1, p0, Lorg/apache/httpcore/b/a;->b:Lorg/apache/httpcore/b/c/p;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/httpcore/b/a;->a(JLorg/apache/httpcore/c/h;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected b(Ljava/net/Socket;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lorg/apache/httpcore/m;)Lorg/apache/httpcore/j;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;
        }
    .end annotation

    .line 219
    new-instance v0, Lorg/apache/httpcore/entity/b;

    invoke-direct {v0}, Lorg/apache/httpcore/entity/b;-><init>()V

    .line 221
    iget-object v1, p0, Lorg/apache/httpcore/b/a;->e:Lorg/apache/httpcore/entity/d;

    invoke-interface {v1, p1}, Lorg/apache/httpcore/entity/d;->a(Lorg/apache/httpcore/m;)J

    move-result-wide v1

    .line 222
    iget-object v3, p0, Lorg/apache/httpcore/b/a;->a:Lorg/apache/httpcore/b/c/o;

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/httpcore/b/a;->a(JLorg/apache/httpcore/c/g;)Ljava/io/InputStream;

    move-result-object v3

    const-wide/16 v4, -0x2

    cmp-long v6, v1, v4

    const-wide/16 v4, -0x1

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .line 224
    invoke-virtual {v0, v1}, Lorg/apache/httpcore/entity/b;->a(Z)V

    .line 225
    invoke-virtual {v0, v4, v5}, Lorg/apache/httpcore/entity/b;->a(J)V

    .line 226
    invoke-virtual {v0, v3}, Lorg/apache/httpcore/entity/b;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    cmp-long v6, v1, v4

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 228
    invoke-virtual {v0, v7}, Lorg/apache/httpcore/entity/b;->a(Z)V

    .line 229
    invoke-virtual {v0, v4, v5}, Lorg/apache/httpcore/entity/b;->a(J)V

    .line 230
    invoke-virtual {v0, v3}, Lorg/apache/httpcore/entity/b;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v0, v7}, Lorg/apache/httpcore/entity/b;->a(Z)V

    .line 233
    invoke-virtual {v0, v1, v2}, Lorg/apache/httpcore/entity/b;->a(J)V

    .line 234
    invoke-virtual {v0, v3}, Lorg/apache/httpcore/entity/b;->a(Ljava/io/InputStream;)V

    :goto_0
    const-string v1, "Content-Type"

    .line 237
    invoke-interface {p1, v1}, Lorg/apache/httpcore/m;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {v0, v1}, Lorg/apache/httpcore/entity/b;->a(Lorg/apache/httpcore/e;)V

    :cond_2
    const-string v1, "Content-Encoding"

    .line 241
    invoke-interface {p1, v1}, Lorg/apache/httpcore/m;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 243
    invoke-virtual {v0, p1}, Lorg/apache/httpcore/entity/b;->b(Lorg/apache/httpcore/e;)V

    :cond_3
    return-object v0
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :catch_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method protected c(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Socket"

    .line 160
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lorg/apache/httpcore/b/a;->a:Lorg/apache/httpcore/b/c/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/httpcore/b/c/o;->a(Ljava/io/InputStream;)V

    .line 163
    iget-object p1, p0, Lorg/apache/httpcore/b/a;->b:Lorg/apache/httpcore/b/c/p;

    invoke-virtual {p1, v0}, Lorg/apache/httpcore/b/c/p;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 319
    :try_start_0
    iget-object v1, p0, Lorg/apache/httpcore/b/a;->a:Lorg/apache/httpcore/b/c/o;

    invoke-virtual {v1}, Lorg/apache/httpcore/b/c/o;->e()V

    .line 320
    iget-object v1, p0, Lorg/apache/httpcore/b/a;->b:Lorg/apache/httpcore/b/c/p;

    invoke-virtual {v1}, Lorg/apache/httpcore/b/c/p;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    :catch_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method protected e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lorg/apache/httpcore/ConnectionClosedException;

    const-string v1, "Connection is closed"

    invoke-direct {v0, v1}, Lorg/apache/httpcore/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v1, p0, Lorg/apache/httpcore/b/a;->a:Lorg/apache/httpcore/b/c/o;

    invoke-virtual {v1}, Lorg/apache/httpcore/b/c/o;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lorg/apache/httpcore/b/a;->a:Lorg/apache/httpcore/b/c/o;

    invoke-virtual {p0, v0}, Lorg/apache/httpcore/b/a;->a(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/httpcore/b/c/o;->a(Ljava/io/InputStream;)V

    .line 136
    :cond_1
    iget-object v1, p0, Lorg/apache/httpcore/b/a;->b:Lorg/apache/httpcore/b/c/p;

    invoke-virtual {v1}, Lorg/apache/httpcore/b/c/p;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 137
    iget-object v1, p0, Lorg/apache/httpcore/b/a;->b:Lorg/apache/httpcore/b/c/p;

    invoke-virtual {p0, v0}, Lorg/apache/httpcore/b/a;->b(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/httpcore/b/c/p;->a(Ljava/io/OutputStream;)V

    :cond_2
    return-void
.end method

.method protected f()Lorg/apache/httpcore/c/g;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->a:Lorg/apache/httpcore/b/c/o;

    return-object v0
.end method

.method protected g()Lorg/apache/httpcore/c/h;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->b:Lorg/apache/httpcore/b/c/p;

    return-object v0
.end method

.method protected h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->b:Lorg/apache/httpcore/b/c/p;

    invoke-virtual {v0}, Lorg/apache/httpcore/b/c/p;->c()V

    return-void
.end method

.method protected i()V
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->d:Lorg/apache/httpcore/b/i;

    invoke-virtual {v0}, Lorg/apache/httpcore/b/i;->a()V

    return-void
.end method

.method protected j()V
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->d:Lorg/apache/httpcore/b/i;

    invoke-virtual {v0}, Lorg/apache/httpcore/b/i;->b()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 388
    iget-object v0, p0, Lorg/apache/httpcore/b/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 392
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 394
    invoke-static {v1, v0}, Lorg/apache/httpcore/util/f;->a(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    const-string v0, "<->"

    .line 395
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-static {v1, v2}, Lorg/apache/httpcore/util/f;->a(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 398
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "[Not bound]"

    return-object v0
.end method
