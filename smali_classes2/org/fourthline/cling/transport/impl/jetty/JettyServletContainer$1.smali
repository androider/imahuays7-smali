.class Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer$1;
.super Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;
.source "JettyServletContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->setExecutorService(Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer$1;->this$0:Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;

    invoke-direct {p0, p2}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
