.class Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection$1;
.super Ljava/io/IOException;
.source "ConnectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->waitReady(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

.field final synthetic val$x:Ljava/lang/InterruptedException;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;Ljava/lang/InterruptedException;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection$1;->this$1:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection$1;->val$x:Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 681
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection$1;->val$x:Ljava/lang/InterruptedException;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection$1;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
