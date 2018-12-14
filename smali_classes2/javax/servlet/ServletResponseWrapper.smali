.class public Ljavax/servlet/ServletResponseWrapper;
.super Ljava/lang/Object;
.source "ServletResponseWrapper.java"

# interfaces
.implements Ljavax/servlet/ServletResponse;


# instance fields
.field private response:Ljavax/servlet/ServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletResponse;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Response cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_0
    iput-object p1, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    return-void
.end method


# virtual methods
.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 197
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 249
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .line 99
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    .line 214
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 3

    .line 291
    const-class v0, Ljavax/servlet/ServletResponse;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not a subinterface of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Ljavax/servlet/ServletResponse;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 298
    :cond_1
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    instance-of v0, v0, Ljavax/servlet/ServletResponseWrapper;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    check-cast v0, Ljavax/servlet/ServletResponseWrapper;

    invoke-virtual {v0, p1}, Ljavax/servlet/ServletResponseWrapper;->isWrapperFor(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isWrapperFor(Ljavax/servlet/ServletResponse;)Z
    .locals 1

    .line 265
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 267
    :cond_0
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    instance-of v0, v0, Ljavax/servlet/ServletResponseWrapper;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    check-cast v0, Ljavax/servlet/ServletResponseWrapper;

    invoke-virtual {v0, p1}, Ljavax/servlet/ServletResponseWrapper;->isWrapperFor(Ljavax/servlet/ServletResponse;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 1

    .line 223
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->reset()V

    return-void
.end method

.method public resetBuffer()V
    .locals 1

    .line 232
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->resetBuffer()V

    return-void
.end method

.method public setBufferSize(I)V
    .locals 1

    .line 189
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setBufferSize(I)V

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setContentLength(I)V
    .locals 1

    .line 161
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 241
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setResponse(Ljavax/servlet/ServletResponse;)V
    .locals 1

    if-nez p1, :cond_0

    .line 110
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Response cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_0
    iput-object p1, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    return-void
.end method
