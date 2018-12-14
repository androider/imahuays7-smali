.class public Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "FormAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/authentication/FormAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FormResponse"
.end annotation


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method private notIgnored(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Cache-Control"

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Pragma"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ETag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Expires"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Last-Modified"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addDateHeader(Ljava/lang/String;J)V
    .locals 1

    .line 446
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-super {p0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponseWrapper;->addDateHeader(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 453
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 1

    .line 460
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-super {p0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponseWrapper;->setDateHeader(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 467
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
