.class public Lorg/eclipse/jetty/server/Request$MultiPartCleanerListener;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljavax/servlet/ServletRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiPartCleanerListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V
    .locals 3

    .line 146
    invoke-virtual {p1}, Ljavax/servlet/ServletRequestEvent;->getServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    const-string v1, "org.eclipse.multiPartInputStream"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/MultiPartInputStream;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1}, Ljavax/servlet/ServletRequestEvent;->getServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v1

    const-string v2, "org.eclipse.multiPartContext"

    invoke-interface {v1, v2}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 152
    invoke-virtual {p1}, Ljavax/servlet/ServletRequestEvent;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->deleteParts()V
    :try_end_0
    .catch Lorg/eclipse/jetty/util/MultiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {p1}, Ljavax/servlet/ServletRequestEvent;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p1

    const-string v1, "Errors deleting multipart tmp files"

    invoke-interface {p1, v1, v0}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public requestInitialized(Ljavax/servlet/ServletRequestEvent;)V
    .locals 0

    return-void
.end method
