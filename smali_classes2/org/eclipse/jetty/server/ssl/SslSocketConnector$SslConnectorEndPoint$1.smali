.class Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;
.super Ljava/lang/Object;
.source "SslSocketConnector.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field handshook:Z

.field final synthetic this$1:Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;

.field final synthetic val$ssl:Ljavax/net/ssl/SSLSocket;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->this$1:Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;

    iput-object p2, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 650
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->handshook:Z

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 2

    .line 653
    iget-boolean p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->handshook:Z

    if-eqz p1, :cond_0

    .line 655
    iget-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->this$1:Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;

    iget-object p1, p1, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/ssl/SslSocketConnector;

    invoke-static {p1}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$000(Lorg/eclipse/jetty/server/ssl/SslSocketConnector;)Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isAllowRenegotiate()Z

    move-result p1

    if-nez p1, :cond_1

    .line 657
    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSL renegotiate denied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 662
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->handshook:Z

    :cond_1
    :goto_0
    return-void
.end method
