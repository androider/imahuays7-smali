.class public Lorg/eclipse/jetty/client/RedirectListener;
.super Lorg/eclipse/jetty/client/HttpEventListenerWrapper;
.source "RedirectListener.java"


# instance fields
.field private _attempts:I

.field private _destination:Lorg/eclipse/jetty/client/HttpDestination;

.field private final _exchange:Lorg/eclipse/jetty/client/HttpExchange;

.field private _location:Ljava/lang/String;

.field private _redirected:Z

.field private _requestComplete:Z

.field private _responseComplete:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2

    .line 47
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;-><init>(Lorg/eclipse/jetty/client/HttpEventListener;Z)V

    .line 49
    iput-object p1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    .line 50
    iput-object p2, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    return-void
.end method


# virtual methods
.method public checkExchangeComplete()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_redirected:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_requestComplete:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_responseComplete:Z

    if-eqz v0, :cond_7

    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_location:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_location:Ljava/lang/String;

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v2, p0, Lorg/eclipse/jetty/client/RedirectListener;->_location:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/client/HttpExchange;->setURL(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v2, p0, Lorg/eclipse/jetty/client/RedirectListener;->_location:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/client/HttpExchange;->setRequestURI(Ljava/lang/String;)V

    :goto_0
    const-string v0, "https"

    .line 127
    iget-object v2, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getScheme()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    iget-object v2, p0, Lorg/eclipse/jetty/client/RedirectListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jetty/client/HttpClient;->getDestination(Lorg/eclipse/jetty/client/Address;Z)Lorg/eclipse/jetty/client/HttpDestination;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lorg/eclipse/jetty/client/RedirectListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-ne v3, v2, :cond_1

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v2, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/client/HttpDestination;->resend(Lorg/eclipse/jetty/client/HttpExchange;)V

    goto :goto_2

    :cond_1
    move-object v3, p0

    .line 138
    :goto_1
    instance-of v4, v3, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;

    if-eqz v4, :cond_2

    .line 140
    check-cast v3, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v3

    goto :goto_1

    .line 144
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/client/HttpEventListener;->onRetry()V

    .line 145
    iget-object v4, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->reset()V

    .line 146
    iget-object v4, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 149
    iget-object v3, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 152
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    if-ne v4, v3, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    const/16 v3, 0x1bb

    if-ne v4, v3, :cond_4

    if-nez v0, :cond_5

    :cond_4
    const/16 v0, 0x3a

    .line 155
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const-string v3, "Host"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/client/HttpExchange;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    :goto_2
    return v1

    .line 168
    :cond_6
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegationResult(Z)V

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingRequests(Z)V

    .line 196
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingResponses(Z)V

    .line 198
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onConnectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingRequests(Z)V

    .line 208
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingResponses(Z)V

    .line 210
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRequestComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_requestComplete:Z

    .line 93
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/RedirectListener;->checkExchangeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    :cond_0
    return-void
.end method

.method public onResponseComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_responseComplete:Z

    .line 104
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/RedirectListener;->checkExchangeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    :cond_0
    return-void
.end method

.method public onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_redirected:Z

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_location:Ljava/lang/String;

    .line 85
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x12d

    if-eq p2, v1, :cond_0

    const/16 v1, 0x12e

    if-ne p2, v1, :cond_1

    .line 57
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_attempts:I

    iget-object v2, p0, Lorg/eclipse/jetty/client/RedirectListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpClient;->maxRedirects()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_redirected:Z

    .line 61
    iget-boolean v1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_redirected:Z

    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingRequests(Z)V

    .line 64
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingResponses(Z)V

    .line 67
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public onRetry()V
    .locals 3

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_redirected:Z

    .line 178
    iget v1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_attempts:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_attempts:I

    .line 180
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingRequests(Z)V

    .line 181
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingResponses(Z)V

    .line 183
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_requestComplete:Z

    .line 184
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_responseComplete:Z

    .line 186
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRetry()V

    return-void
.end method
