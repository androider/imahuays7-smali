.class public Lorg/fourthline/cling/model/message/UpnpRequest;
.super Lorg/fourthline/cling/model/message/UpnpOperation;
.source "UpnpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/model/message/UpnpRequest$Method;
    }
.end annotation


# instance fields
.field private method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/UpnpOperation;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/UpnpOperation;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 74
    iput-object p2, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/UpnpOperation;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    if-eqz p2, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getHttpMethodName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getHttpName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
