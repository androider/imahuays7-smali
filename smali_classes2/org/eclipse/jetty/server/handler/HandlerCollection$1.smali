.class Lorg/eclipse/jetty/server/handler/HandlerCollection$1;
.super Ljava/lang/Object;
.source "HandlerCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/handler/HandlerCollection;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/HandlerCollection;

.field final synthetic val$h:I

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$loader:Ljava/lang/ClassLoader;

.field final synthetic val$mex:Lorg/eclipse/jetty/util/MultiException;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/HandlerCollection;Ljava/lang/ClassLoader;ILorg/eclipse/jetty/util/MultiException;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->this$0:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$loader:Ljava/lang/ClassLoader;

    iput p3, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$h:I

    iput-object p4, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$mex:Lorg/eclipse/jetty/util/MultiException;

    iput-object p5, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 207
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 208
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->this$0:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->access$000(Lorg/eclipse/jetty/server/handler/HandlerCollection;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$h:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Handler;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 212
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$mex:Lorg/eclipse/jetty/util/MultiException;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 217
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 216
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 217
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1
.end method
