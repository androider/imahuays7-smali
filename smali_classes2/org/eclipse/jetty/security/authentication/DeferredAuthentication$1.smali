.class final Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$1;
.super Ljava/lang/Object;
.source "DeferredAuthentication.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 0

    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public flushBuffer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getBufferSize()I
    .locals 1

    const/16 v0, 0x400

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-static {}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->access$000()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-static {}, Lorg/eclipse/jetty/util/IO;->getNullPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public resetBuffer()V
    .locals 0

    return-void
.end method

.method public sendError(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setContentLength(I)V
    .locals 0

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
