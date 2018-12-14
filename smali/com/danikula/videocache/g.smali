.class public Lcom/danikula/videocache/g;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/g$a;,
        Lcom/danikula/videocache/g$b;,
        Lcom/danikula/videocache/g$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/danikula/videocache/h;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/net/ServerSocket;

.field private final e:I

.field private final f:Ljava/lang/Thread;

.field private final g:Lcom/danikula/videocache/c;

.field private final h:Lcom/danikula/videocache/k;


# direct methods
.method private constructor <init>(Lcom/danikula/videocache/c;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/lang/Object;

    const/16 v0, 0x8

    .line 56
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/danikula/videocache/g;->b:Ljava/util/concurrent/ExecutorService;

    .line 57
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/danikula/videocache/g;->c:Ljava/util/Map;

    .line 69
    invoke-static {p1}, Lcom/danikula/videocache/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/danikula/videocache/c;

    iput-object p1, p0, Lcom/danikula/videocache/g;->g:Lcom/danikula/videocache/c;

    :try_start_0
    const-string p1, "127.0.0.1"

    .line 71
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 72
    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/danikula/videocache/g;->d:Ljava/net/ServerSocket;

    .line 73
    iget-object p1, p0, Lcom/danikula/videocache/g;->d:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/danikula/videocache/g;->e:I

    const-string p1, "127.0.0.1"

    .line 74
    iget v0, p0, Lcom/danikula/videocache/g;->e:I

    invoke-static {p1, v0}, Lcom/danikula/videocache/j;->a(Ljava/lang/String;I)V

    .line 75
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/danikula/videocache/g$c;

    invoke-direct {v1, p0, p1}, Lcom/danikula/videocache/g$c;-><init>(Lcom/danikula/videocache/g;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/danikula/videocache/g;->f:Ljava/lang/Thread;

    .line 77
    iget-object v0, p0, Lcom/danikula/videocache/g;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 79
    new-instance p1, Lcom/danikula/videocache/k;

    const-string v0, "127.0.0.1"

    iget v1, p0, Lcom/danikula/videocache/g;->e:I

    invoke-direct {p1, v0, v1}, Lcom/danikula/videocache/k;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/danikula/videocache/g;->h:Lcom/danikula/videocache/k;

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Proxy cache server started. Is it alive? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/danikula/videocache/g;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/danikula/videocache/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 82
    iget-object v0, p0, Lcom/danikula/videocache/g;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error starting local proxy server"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/danikula/videocache/c;Lcom/danikula/videocache/g$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;-><init>(Lcom/danikula/videocache/c;)V

    return-void
.end method

.method static synthetic a(Lcom/danikula/videocache/g;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/danikula/videocache/g;->d()V

    return-void
.end method

.method static synthetic a(Lcom/danikula/videocache/g;Ljava/net/Socket;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->a(Ljava/net/Socket;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->g:Lcom/danikula/videocache/c;

    iget-object v0, v0, Lcom/danikula/videocache/c;->c:Lcom/danikula/videocache/a/a;

    invoke-interface {v0, p1}, Lcom/danikula/videocache/a/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error touching file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/danikula/videocache/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "HttpProxyCacheServer error"

    .line 304
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/danikula/videocache/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 3

    .line 224
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/danikula/videocache/d;->a(Ljava/io/InputStream;)Lcom/danikula/videocache/d;

    move-result-object v0

    .line 225
    iget-object v1, v0, Lcom/danikula/videocache/d;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/danikula/videocache/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/danikula/videocache/g;->h:Lcom/danikula/videocache/k;

    invoke-virtual {v2, v1}, Lcom/danikula/videocache/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/danikula/videocache/g;->h:Lcom/danikula/videocache/k;

    invoke-virtual {v0, p1}, Lcom/danikula/videocache/k;->a(Ljava/net/Socket;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-direct {p0, v1}, Lcom/danikula/videocache/g;->e(Ljava/lang/String;)Lcom/danikula/videocache/h;

    move-result-object v1

    .line 230
    invoke-virtual {v1, v0, p1}, Lcom/danikula/videocache/h;->a(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :goto_0
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->b(Ljava/net/Socket;)V

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 236
    :try_start_1
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    const-string v2, "Error processing request"

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/danikula/videocache/g;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->b(Ljava/net/Socket;)V

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 238
    :goto_1
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->b(Ljava/net/Socket;)V

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened connections: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/danikula/videocache/g;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/danikula/videocache/f;->a(Ljava/lang/String;)V

    throw v0

    .line 238
    :catch_1
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->b(Ljava/net/Socket;)V

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v0, "Opened connections: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/danikula/videocache/g;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/danikula/videocache/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/net/Socket;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->c(Ljava/net/Socket;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->d(Ljava/net/Socket;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->e(Ljava/net/Socket;)V

    return-void
.end method

.method private b()Z
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/danikula/videocache/g;->h:Lcom/danikula/videocache/k;

    const/4 v1, 0x3

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/danikula/videocache/k;->a(II)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 185
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s:%d/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "127.0.0.1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/danikula/videocache/g;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1}, Lcom/danikula/videocache/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danikula/videocache/h;

    .line 205
    invoke-virtual {v2}, Lcom/danikula/videocache/h;->a()V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/danikula/videocache/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c(Ljava/net/Socket;)V
    .locals 1

    .line 272
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/danikula/videocache/g;->g:Lcom/danikula/videocache/c;

    iget-object v0, v0, Lcom/danikula/videocache/c;->a:Ljava/io/File;

    .line 190
    iget-object v1, p0, Lcom/danikula/videocache/g;->g:Lcom/danikula/videocache/c;

    iget-object v1, v1, Lcom/danikula/videocache/c;->b:Lcom/danikula/videocache/a/c;

    invoke-interface {v1, p1}, Lcom/danikula/videocache/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private d()V
    .locals 3

    .line 213
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/danikula/videocache/g;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/danikula/videocache/g;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/danikula/videocache/g$b;

    invoke-direct {v2, p0, v0}, Lcom/danikula/videocache/g$b;-><init>(Lcom/danikula/videocache/g;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/danikula/videocache/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private d(Ljava/net/Socket;)V
    .locals 1

    .line 285
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to close socket on proxy side: {}. It seems client have already closed connection."

    .line 289
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/danikula/videocache/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private e()I
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/danikula/videocache/g;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danikula/videocache/h;

    .line 258
    invoke-virtual {v3}, Lcom/danikula/videocache/h;->b()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 260
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 261
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e(Ljava/lang/String;)Lcom/danikula/videocache/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/g;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danikula/videocache/h;

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Lcom/danikula/videocache/h;

    iget-object v2, p0, Lcom/danikula/videocache/g;->g:Lcom/danikula/videocache/c;

    invoke-direct {v1, p1, v2}, Lcom/danikula/videocache/h;-><init>(Ljava/lang/String;Lcom/danikula/videocache/c;)V

    .line 248
    iget-object v2, p0, Lcom/danikula/videocache/g;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private e(Ljava/net/Socket;)V
    .locals 1

    .line 295
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/danikula/videocache/g;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/danikula/videocache/g;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->a(Ljava/io/File;)V

    .line 116
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/danikula/videocache/g;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a()V
    .locals 3

    const-string v0, "Shutdown proxy server"

    .line 164
    invoke-static {v0}, Lcom/danikula/videocache/f;->a(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/danikula/videocache/g;->c()V

    .line 168
    iget-object v0, p0, Lcom/danikula/videocache/g;->g:Lcom/danikula/videocache/c;

    iget-object v0, v0, Lcom/danikula/videocache/c;->d:Lcom/danikula/videocache/c/c;

    invoke-interface {v0}, Lcom/danikula/videocache/c/c;->a()V

    .line 170
    iget-object v0, p0, Lcom/danikula/videocache/g;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/danikula/videocache/g;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    const-string v2, "Error shutting down proxy server"

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/danikula/videocache/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/danikula/videocache/b;)V
    .locals 3

    .line 144
    invoke-static {p1}, Lcom/danikula/videocache/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danikula/videocache/h;

    .line 147
    invoke-virtual {v2, p1}, Lcom/danikula/videocache/h;->b(Lcom/danikula/videocache/b;)V

    goto :goto_0

    .line 149
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/danikula/videocache/b;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/danikula/videocache/l;->a([Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    invoke-direct {p0, p2}, Lcom/danikula/videocache/g;->e(Ljava/lang/String;)Lcom/danikula/videocache/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/danikula/videocache/h;->a(Lcom/danikula/videocache/b;)V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "Error registering cache listener"

    .line 127
    invoke-virtual {p1}, Lcom/danikula/videocache/ProxyCacheException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/danikula/videocache/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Url can\'t be null!"

    .line 159
    invoke-static {p1, v0}, Lcom/danikula/videocache/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method
