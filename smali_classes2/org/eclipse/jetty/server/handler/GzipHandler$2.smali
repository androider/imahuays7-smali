.class Lorg/eclipse/jetty/server/handler/GzipHandler$2;
.super Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;
.source "GzipHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/handler/GzipHandler;->newGzipResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/GzipHandler;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 318
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget-object p1, p1, Lorg/eclipse/jetty/server/handler/GzipHandler;->_mimeTypes:Ljava/util/Set;

    invoke-super {p0, p1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setMimeTypes(Ljava/util/Set;)V

    .line 319
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget p1, p1, Lorg/eclipse/jetty/server/handler/GzipHandler;->_bufferSize:I

    invoke-super {p0, p1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setBufferSize(I)V

    .line 320
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget p1, p1, Lorg/eclipse/jetty/server/handler/GzipHandler;->_minGzipSize:I

    invoke-super {p0, p1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setMinCompressSize(I)V

    return-void
.end method


# virtual methods
.method protected newCompressedStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    new-instance p2, Lorg/eclipse/jetty/server/handler/GzipHandler$2$1;

    const-string v2, "gzip"

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget-object v5, v0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_vary:Ljava/lang/String;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/GzipHandler$2$1;-><init>(Lorg/eclipse/jetty/server/handler/GzipHandler$2;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;Ljava/lang/String;)V

    return-object p2
.end method

.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/handler/GzipHandler;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method
