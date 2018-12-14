.class Lorg/eclipse/jetty/server/handler/GzipHandler$1;
.super Ljava/lang/Object;
.source "GzipHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/handler/GzipHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

.field final synthetic val$wrappedResponse:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/GzipHandler;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$1;->val$wrappedResponse:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 1

    .line 278
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$1;->val$wrappedResponse:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-static {}, Lorg/eclipse/jetty/server/handler/GzipHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 0

    return-void
.end method
