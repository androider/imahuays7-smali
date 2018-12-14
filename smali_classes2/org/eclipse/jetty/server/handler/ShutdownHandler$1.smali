.class Lorg/eclipse/jetty/server/handler/ShutdownHandler$1;
.super Ljava/lang/Thread;
.source "ShutdownHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/handler/ShutdownHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/ShutdownHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/ShutdownHandler;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/ShutdownHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/ShutdownHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->access$000(Lorg/eclipse/jetty/server/handler/ShutdownHandler;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Shutting down server"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 130
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
