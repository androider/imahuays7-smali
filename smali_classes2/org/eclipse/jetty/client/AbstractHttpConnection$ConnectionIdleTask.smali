.class Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;
.super Lorg/eclipse/jetty/util/thread/Timeout$Task;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/AbstractHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionIdleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/AbstractHttpConnection$1;)V
    .locals 0

    .line 475
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    return-void
.end method


# virtual methods
.method public expired()V
    .locals 3

    .line 482
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->access$400(Lorg/eclipse/jetty/client/AbstractHttpConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->returnIdleConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    :cond_0
    return-void
.end method
