.class Lorg/eclipse/jetty/server/AsyncContinuation$1;
.super Ljava/lang/Object;
.source "AsyncContinuation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/AsyncContinuation;->start(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

.field final synthetic val$event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

.field final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AsyncContinuation;Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/Runnable;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$1;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncContinuation$1;->val$event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    iput-object p3, p0, Lorg/eclipse/jetty/server/AsyncContinuation$1;->val$run:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 885
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$1;->val$event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$1;->val$run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/Runnable;)V

    return-void
.end method
