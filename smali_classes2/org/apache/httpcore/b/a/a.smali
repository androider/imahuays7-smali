.class public Lorg/apache/httpcore/b/a/a;
.super Ljava/lang/Object;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/httpcore/b/a/a$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/net/InetAddress;

.field private final c:Lorg/apache/httpcore/a/c;

.field private final d:Ljavax/net/ServerSocketFactory;

.field private final e:Lorg/apache/httpcore/d/l;

.field private final f:Lorg/apache/httpcore/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/httpcore/i<",
            "+",
            "Lorg/apache/httpcore/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lorg/apache/httpcore/b/a/c;

.field private final h:Lorg/apache/httpcore/c;

.field private final i:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final j:Ljava/lang/ThreadGroup;

.field private final k:Lorg/apache/httpcore/b/a/g;

.field private final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/httpcore/b/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m:Ljava/net/ServerSocket;

.field private volatile n:Lorg/apache/httpcore/b/a/b;


# direct methods
.method constructor <init>(ILjava/net/InetAddress;Lorg/apache/httpcore/a/c;Ljavax/net/ServerSocketFactory;Lorg/apache/httpcore/d/l;Lorg/apache/httpcore/i;Lorg/apache/httpcore/b/a/c;Lorg/apache/httpcore/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/InetAddress;",
            "Lorg/apache/httpcore/a/c;",
            "Ljavax/net/ServerSocketFactory;",
            "Lorg/apache/httpcore/d/l;",
            "Lorg/apache/httpcore/i<",
            "+",
            "Lorg/apache/httpcore/b/c;",
            ">;",
            "Lorg/apache/httpcore/b/a/c;",
            "Lorg/apache/httpcore/c;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 79
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 80
    iput v1, v0, Lorg/apache/httpcore/b/a/a;->a:I

    move-object v1, p2

    .line 81
    iput-object v1, v0, Lorg/apache/httpcore/b/a/a;->b:Ljava/net/InetAddress;

    move-object v1, p3

    .line 82
    iput-object v1, v0, Lorg/apache/httpcore/b/a/a;->c:Lorg/apache/httpcore/a/c;

    move-object v1, p4

    .line 83
    iput-object v1, v0, Lorg/apache/httpcore/b/a/a;->d:Ljavax/net/ServerSocketFactory;

    move-object/from16 v1, p5

    .line 84
    iput-object v1, v0, Lorg/apache/httpcore/b/a/a;->e:Lorg/apache/httpcore/d/l;

    move-object/from16 v1, p6

    .line 85
    iput-object v1, v0, Lorg/apache/httpcore/b/a/a;->f:Lorg/apache/httpcore/i;

    move-object/from16 v1, p7

    .line 86
    iput-object v1, v0, Lorg/apache/httpcore/b/a/a;->g:Lorg/apache/httpcore/b/a/c;

    move-object/from16 v1, p8

    .line 87
    iput-object v1, v0, Lorg/apache/httpcore/b/a/a;->h:Lorg/apache/httpcore/c;

    .line 88
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lorg/apache/httpcore/b/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP-listener-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/apache/httpcore/b/a/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/apache/httpcore/b/a/e;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v9, v0, Lorg/apache/httpcore/b/a/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 92
    new-instance v1, Ljava/lang/ThreadGroup;

    const-string v2, "HTTP-workers"

    invoke-direct {v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/apache/httpcore/b/a/a;->j:Ljava/lang/ThreadGroup;

    .line 93
    new-instance v1, Lorg/apache/httpcore/b/a/g;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v10, Lorg/apache/httpcore/b/a/e;

    const-string v2, "HTTP-worker"

    iget-object v3, v0, Lorg/apache/httpcore/b/a/a;->j:Ljava/lang/ThreadGroup;

    invoke-direct {v10, v2, v3}, Lorg/apache/httpcore/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const-wide/16 v6, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lorg/apache/httpcore/b/a/g;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lorg/apache/httpcore/b/a/a;->k:Lorg/apache/httpcore/b/a/g;

    .line 97
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/httpcore/b/a/a$a;->a:Lorg/apache/httpcore/b/a/a$a;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lorg/apache/httpcore/b/a/a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()Ljava/net/InetAddress;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->m:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->k:Lorg/apache/httpcore/b/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/httpcore/b/a/g;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public b()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/httpcore/b/a/a$a;->a:Lorg/apache/httpcore/b/a/a$a;

    sget-object v2, Lorg/apache/httpcore/b/a/a$a;->b:Lorg/apache/httpcore/b/a/a$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->d:Ljavax/net/ServerSocketFactory;

    iget v1, p0, Lorg/apache/httpcore/b/a/a;->a:I

    iget-object v2, p0, Lorg/apache/httpcore/b/a/a;->c:Lorg/apache/httpcore/a/c;

    .line 121
    invoke-virtual {v2}, Lorg/apache/httpcore/a/c;->h()I

    move-result v2

    iget-object v3, p0, Lorg/apache/httpcore/b/a/a;->b:Ljava/net/InetAddress;

    .line 120
    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/httpcore/b/a/a;->m:Ljava/net/ServerSocket;

    .line 122
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->m:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/httpcore/b/a/a;->c:Lorg/apache/httpcore/a/c;

    invoke-virtual {v1}, Lorg/apache/httpcore/a/c;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 123
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->c:Lorg/apache/httpcore/a/c;

    invoke-virtual {v0}, Lorg/apache/httpcore/a/c;->g()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->m:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/httpcore/b/a/a;->c:Lorg/apache/httpcore/a/c;

    invoke-virtual {v1}, Lorg/apache/httpcore/a/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->g:Lorg/apache/httpcore/b/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->m:Ljava/net/ServerSocket;

    instance-of v0, v0, Ljavax/net/ssl/SSLServerSocket;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->g:Lorg/apache/httpcore/b/a/c;

    iget-object v1, p0, Lorg/apache/httpcore/b/a/a;->m:Ljava/net/ServerSocket;

    check-cast v1, Ljavax/net/ssl/SSLServerSocket;

    invoke-interface {v0, v1}, Lorg/apache/httpcore/b/a/c;->a(Ljavax/net/ssl/SSLServerSocket;)V

    .line 129
    :cond_1
    new-instance v0, Lorg/apache/httpcore/b/a/b;

    iget-object v3, p0, Lorg/apache/httpcore/b/a/a;->c:Lorg/apache/httpcore/a/c;

    iget-object v4, p0, Lorg/apache/httpcore/b/a/a;->m:Ljava/net/ServerSocket;

    iget-object v5, p0, Lorg/apache/httpcore/b/a/a;->e:Lorg/apache/httpcore/d/l;

    iget-object v6, p0, Lorg/apache/httpcore/b/a/a;->f:Lorg/apache/httpcore/i;

    iget-object v7, p0, Lorg/apache/httpcore/b/a/a;->h:Lorg/apache/httpcore/c;

    iget-object v8, p0, Lorg/apache/httpcore/b/a/a;->k:Lorg/apache/httpcore/b/a/g;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/apache/httpcore/b/a/b;-><init>(Lorg/apache/httpcore/a/c;Ljava/net/ServerSocket;Lorg/apache/httpcore/d/l;Lorg/apache/httpcore/i;Lorg/apache/httpcore/c;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/apache/httpcore/b/a/a;->n:Lorg/apache/httpcore/b/a/b;

    .line 136
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lorg/apache/httpcore/b/a/a;->n:Lorg/apache/httpcore/b/a/b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 161
    invoke-virtual {p0}, Lorg/apache/httpcore/b/a/a;->c()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 164
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/httpcore/b/a/a;->a(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 169
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/httpcore/b/a/a;->k:Lorg/apache/httpcore/b/a/g;

    invoke-virtual {p1}, Lorg/apache/httpcore/b/a/g;->a()Ljava/util/Set;

    move-result-object p1

    .line 170
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/httpcore/b/a/f;

    .line 171
    invoke-virtual {p2}, Lorg/apache/httpcore/b/a/f;->a()Lorg/apache/httpcore/t;

    move-result-object p2

    .line 173
    :try_start_1
    invoke-interface {p2}, Lorg/apache/httpcore/t;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 175
    iget-object p3, p0, Lorg/apache/httpcore/b/a/a;->h:Lorg/apache/httpcore/c;

    invoke-interface {p3, p2}, Lorg/apache/httpcore/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 141
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/httpcore/b/a/a$a;->b:Lorg/apache/httpcore/b/a/a$a;

    sget-object v2, Lorg/apache/httpcore/b/a/a$a;->c:Lorg/apache/httpcore/b/a/a$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 143
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->k:Lorg/apache/httpcore/b/a/g;

    invoke-virtual {v0}, Lorg/apache/httpcore/b/a/g;->shutdown()V

    .line 144
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->n:Lorg/apache/httpcore/b/a/b;

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/httpcore/b/a/b;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 149
    iget-object v1, p0, Lorg/apache/httpcore/b/a/a;->h:Lorg/apache/httpcore/c;

    invoke-interface {v1, v0}, Lorg/apache/httpcore/c;->a(Ljava/lang/Exception;)V

    .line 152
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/httpcore/b/a/a;->j:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->interrupt()V

    :cond_1
    return-void
.end method
