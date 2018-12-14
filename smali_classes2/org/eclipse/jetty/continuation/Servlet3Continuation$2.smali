.class Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;
.super Ljava/lang/Object;
.source "Servlet3Continuation.java"

# interfaces
.implements Ljavax/servlet/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/continuation/Servlet3Continuation;->addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

.field final synthetic val$listener:Lorg/eclipse/jetty/continuation/ContinuationListener;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    iput-object p2, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->val$listener:Lorg/eclipse/jetty/continuation/ContinuationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljavax/servlet/AsyncEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->val$listener:Lorg/eclipse/jetty/continuation/ContinuationListener;

    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    return-void
.end method

.method public onError(Ljavax/servlet/AsyncEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->val$listener:Lorg/eclipse/jetty/continuation/ContinuationListener;

    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    return-void
.end method

.method public onStartAsync(Ljavax/servlet/AsyncEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Ljavax/servlet/AsyncEvent;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object p1

    invoke-interface {p1, p0}, Ljavax/servlet/AsyncContext;->addListener(Ljavax/servlet/AsyncListener;)V

    return-void
.end method

.method public onTimeout(Ljavax/servlet/AsyncEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->access$102(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Z)Z

    .line 107
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->val$listener:Lorg/eclipse/jetty/continuation/ContinuationListener;

    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V

    return-void
.end method
