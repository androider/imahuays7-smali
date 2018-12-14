.class Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;
.super Lorg/eclipse/jetty/http/HttpParser$EventHandler;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AbstractHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 0

    .line 983
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;Lorg/eclipse/jetty/server/AbstractHttpConnection$1;)V
    .locals 0

    .line 983
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    return-void
.end method


# virtual methods
.method public content(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->content(Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public earlyEOF()V
    .locals 1

    .line 1059
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->earlyEOF()V

    return-void
.end method

.method public headerComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->headerComplete()V

    return-void
.end method

.method public messageComplete(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1033
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->messageComplete(J)V

    return-void
.end method

.method public parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 3

    .line 1046
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad request!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
