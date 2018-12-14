.class Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;
.super Ljava/lang/Object;
.source "RequestLogHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/handler/RequestLogHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/RequestLogHandler;

.field final synthetic val$baseRequest:Lorg/eclipse/jetty/server/Request;

.field final synthetic val$response:Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/RequestLogHandler;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/RequestLogHandler;

    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;->val$baseRequest:Lorg/eclipse/jetty/server/Request;

    iput-object p3, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;->val$response:Ljavax/servlet/http/HttpServletResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/RequestLogHandler;

    invoke-static {p1}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->access$000(Lorg/eclipse/jetty/server/handler/RequestLogHandler;)Lorg/eclipse/jetty/server/RequestLog;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;->val$baseRequest:Lorg/eclipse/jetty/server/Request;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;->val$response:Ljavax/servlet/http/HttpServletResponse;

    check-cast v1, Lorg/eclipse/jetty/server/Response;

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/server/RequestLog;->log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V

    return-void
.end method

.method public onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 0

    return-void
.end method
