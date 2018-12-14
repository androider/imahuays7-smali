.class Lorg/apache/httpcore/b/a/b;
.super Ljava/lang/Object;
.source "RequestListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/httpcore/a/c;

.field private final b:Ljava/net/ServerSocket;

.field private final c:Lorg/apache/httpcore/d/l;

.field private final d:Lorg/apache/httpcore/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/httpcore/i<",
            "+",
            "Lorg/apache/httpcore/t;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lorg/apache/httpcore/c;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/a/c;Ljava/net/ServerSocket;Lorg/apache/httpcore/d/l;Lorg/apache/httpcore/i;Lorg/apache/httpcore/c;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/httpcore/a/c;",
            "Ljava/net/ServerSocket;",
            "Lorg/apache/httpcore/d/l;",
            "Lorg/apache/httpcore/i<",
            "+",
            "Lorg/apache/httpcore/t;",
            ">;",
            "Lorg/apache/httpcore/c;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/httpcore/b/a/b;->a:Lorg/apache/httpcore/a/c;

    .line 62
    iput-object p2, p0, Lorg/apache/httpcore/b/a/b;->b:Ljava/net/ServerSocket;

    .line 63
    iput-object p4, p0, Lorg/apache/httpcore/b/a/b;->d:Lorg/apache/httpcore/i;

    .line 64
    iput-object p3, p0, Lorg/apache/httpcore/b/a/b;->c:Lorg/apache/httpcore/d/l;

    .line 65
    iput-object p5, p0, Lorg/apache/httpcore/b/a/b;->e:Lorg/apache/httpcore/c;

    .line 66
    iput-object p6, p0, Lorg/apache/httpcore/b/a/b;->f:Ljava/util/concurrent/ExecutorService;

    .line 67
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/httpcore/b/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/httpcore/b/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/httpcore/b/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/apache/httpcore/b/a/b;->b:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 73
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/httpcore/b/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    iget-object v0, p0, Lorg/apache/httpcore/b/a/b;->b:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lorg/apache/httpcore/b/a/b;->a:Lorg/apache/httpcore/a/c;

    invoke-virtual {v1}, Lorg/apache/httpcore/a/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 76
    iget-object v1, p0, Lorg/apache/httpcore/b/a/b;->a:Lorg/apache/httpcore/a/c;

    invoke-virtual {v1}, Lorg/apache/httpcore/a/c;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 77
    iget-object v1, p0, Lorg/apache/httpcore/b/a/b;->a:Lorg/apache/httpcore/a/c;

    invoke-virtual {v1}, Lorg/apache/httpcore/a/c;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 78
    iget-object v1, p0, Lorg/apache/httpcore/b/a/b;->a:Lorg/apache/httpcore/a/c;

    invoke-virtual {v1}, Lorg/apache/httpcore/a/c;->g()I

    move-result v1

    if-lez v1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/apache/httpcore/b/a/b;->a:Lorg/apache/httpcore/a/c;

    invoke-virtual {v1}, Lorg/apache/httpcore/a/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/apache/httpcore/b/a/b;->a:Lorg/apache/httpcore/a/c;

    invoke-virtual {v1}, Lorg/apache/httpcore/a/c;->f()I

    move-result v1

    if-lez v1, :cond_1

    .line 82
    iget-object v1, p0, Lorg/apache/httpcore/b/a/b;->a:Lorg/apache/httpcore/a/c;

    invoke-virtual {v1}, Lorg/apache/httpcore/a/c;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 84
    :cond_1
    iget-object v1, p0, Lorg/apache/httpcore/b/a/b;->a:Lorg/apache/httpcore/a/c;

    invoke-virtual {v1}, Lorg/apache/httpcore/a/c;->c()I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    .line 85
    iget-object v2, p0, Lorg/apache/httpcore/b/a/b;->a:Lorg/apache/httpcore/a/c;

    invoke-virtual {v2}, Lorg/apache/httpcore/a/c;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 87
    :cond_2
    iget-object v1, p0, Lorg/apache/httpcore/b/a/b;->d:Lorg/apache/httpcore/i;

    invoke-interface {v1, v0}, Lorg/apache/httpcore/i;->a(Ljava/net/Socket;)Lorg/apache/httpcore/h;

    move-result-object v0

    check-cast v0, Lorg/apache/httpcore/t;

    .line 88
    new-instance v1, Lorg/apache/httpcore/b/a/f;

    iget-object v2, p0, Lorg/apache/httpcore/b/a/b;->c:Lorg/apache/httpcore/d/l;

    iget-object v3, p0, Lorg/apache/httpcore/b/a/b;->e:Lorg/apache/httpcore/c;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/httpcore/b/a/f;-><init>(Lorg/apache/httpcore/d/l;Lorg/apache/httpcore/t;Lorg/apache/httpcore/c;)V

    .line 89
    iget-object v0, p0, Lorg/apache/httpcore/b/a/b;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    iget-object v1, p0, Lorg/apache/httpcore/b/a/b;->e:Lorg/apache/httpcore/c;

    invoke-interface {v1, v0}, Lorg/apache/httpcore/c;->a(Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method
