.class Lorg/eclipse/jetty/server/handler/GzipHandler$2$1;
.super Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;
.source "GzipHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/handler/GzipHandler$2;->newCompressedStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/jetty/server/handler/GzipHandler$2;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/GzipHandler$2;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2$1;->this$1:Lorg/eclipse/jetty/server/handler/GzipHandler$2;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;-><init>(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createStream()Ljava/util/zip/DeflaterOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2$1;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v1}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2$1;->this$1:Lorg/eclipse/jetty/server/handler/GzipHandler$2;

    iget-object v2, v2, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget v2, v2, Lorg/eclipse/jetty/server/handler/GzipHandler;->_bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method
