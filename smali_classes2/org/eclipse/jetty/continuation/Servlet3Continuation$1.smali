.class Lorg/eclipse/jetty/continuation/Servlet3Continuation$1;
.super Ljava/lang/Object;
.source "Servlet3Continuation.java"

# interfaces
.implements Ljavax/servlet/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/continuation/Servlet3Continuation;-><init>(Ljavax/servlet/ServletRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/continuation/Servlet3Continuation;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$1;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljavax/servlet/AsyncEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onError(Ljavax/servlet/AsyncEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onStartAsync(Ljavax/servlet/AsyncEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljavax/servlet/AsyncEvent;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object p1

    invoke-interface {p1, p0}, Ljavax/servlet/AsyncContext;->addListener(Ljavax/servlet/AsyncListener;)V

    return-void
.end method

.method public onTimeout(Ljavax/servlet/AsyncEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$1;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->access$002(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Z)Z

    .line 79
    invoke-virtual {p1}, Ljavax/servlet/AsyncEvent;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object p1

    invoke-interface {p1}, Ljavax/servlet/AsyncContext;->dispatch()V

    return-void
.end method
