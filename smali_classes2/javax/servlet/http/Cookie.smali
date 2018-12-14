.class public Ljavax/servlet/http/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.http.LocalStrings"

.field private static final TSPECIALS:Ljava/lang/String;

.field private static lStrings:Ljava/util/ResourceBundle; = null

.field private static final serialVersionUID:J = -0x59934cae21b11858L


# instance fields
.field private comment:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private isHttpOnly:Z

.field private maxAge:I

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private secure:Z

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "javax.servlet.http.LocalStrings"

    .line 111
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/http/Cookie;->lStrings:Ljava/util/ResourceBundle;

    const-string v0, "org.glassfish.web.rfc2109_cookie_names_enforced"

    const-string v1, "true"

    .line 115
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/()<>@,;:\\\"[]?={} \t"

    .line 118
    sput-object v0, Ljavax/servlet/http/Cookie;->TSPECIALS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ",; "

    .line 120
    sput-object v0, Ljavax/servlet/http/Cookie;->TSPECIALS:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Ljavax/servlet/http/Cookie;->maxAge:I

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Ljavax/servlet/http/Cookie;->version:I

    .line 142
    iput-boolean v0, p0, Ljavax/servlet/http/Cookie;->isHttpOnly:Z

    if-eqz p1, :cond_3

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    invoke-direct {p0, p1}, Ljavax/servlet/http/Cookie;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Comment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Discard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Domain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Expires"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Max-Age"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Path"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Secure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->name:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Ljavax/servlet/http/Cookie;->value:Ljava/lang/String;

    return-void

    .line 190
    :cond_2
    :goto_0
    sget-object p2, Ljavax/servlet/http/Cookie;->lStrings:Ljava/util/ResourceBundle;

    const-string v1, "err.cookie_name_is_token"

    invoke-virtual {p2, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    .line 191
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 193
    invoke-static {p2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 194
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 177
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljavax/servlet/http/Cookie;->lStrings:Ljava/util/ResourceBundle;

    const-string v0, "err.cookie_name_blank"

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isToken(Ljava/lang/String;)Z
    .locals 5

    .line 453
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 455
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    .line 456
    sget-object v4, Ljavax/servlet/http/Cookie;->TSPECIALS:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 470
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 472
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .line 298
    iget v0, p0, Ljavax/servlet/http/Cookie;->maxAge:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Ljavax/servlet/http/Cookie;->secure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 421
    iget v0, p0, Ljavax/servlet/http/Cookie;->version:I

    return v0
.end method

.method public isHttpOnly()Z
    .locals 1

    .line 505
    iget-boolean v0, p0, Ljavax/servlet/http/Cookie;->isHttpOnly:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->comment:Ljava/lang/String;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    .line 245
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/servlet/http/Cookie;->domain:Ljava/lang/String;

    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 0

    .line 493
    iput-boolean p1, p0, Ljavax/servlet/http/Cookie;->isHttpOnly:Z

    return-void
.end method

.method public setMaxAge(I)V
    .locals 0

    .line 282
    iput p1, p0, Ljavax/servlet/http/Cookie;->maxAge:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->path:Ljava/lang/String;

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    .line 350
    iput-boolean p1, p0, Ljavax/servlet/http/Cookie;->secure:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 393
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->value:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 440
    iput p1, p0, Ljavax/servlet/http/Cookie;->version:I

    return-void
.end method
