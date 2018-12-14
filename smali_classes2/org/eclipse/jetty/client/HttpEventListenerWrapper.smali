.class public Lorg/eclipse/jetty/client/HttpEventListenerWrapper;
.super Ljava/lang/Object;
.source "HttpEventListenerWrapper.java"

# interfaces
.implements Lorg/eclipse/jetty/client/HttpEventListener;


# instance fields
.field _delegatingRequests:Z

.field _delegatingResponses:Z

.field _delegationResult:Z

.field _listener:Lorg/eclipse/jetty/client/HttpEventListener;

.field private _reason:Lorg/eclipse/jetty/io/Buffer;

.field private _status:I

.field private _version:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    .line 40
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/client/HttpEventListener;Z)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    .line 45
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 46
    iput-boolean p2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    .line 47
    iput-boolean p2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    return-void
.end method


# virtual methods
.method public getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    return-object v0
.end method

.method public isDelegatingRequests()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    return v0
.end method

.method public isDelegatingResponses()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    return v0
.end method

.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onExpire()V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onExpire()V

    :cond_1
    return-void
.end method

.method public onRequestCommitted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestCommitted()V

    :cond_0
    return-void
.end method

.method public onRequestComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestComplete()V

    :cond_0
    return-void
.end method

.method public onResponseComplete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_1

    .line 119
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_version:Lorg/eclipse/jetty/io/Buffer;

    iget v2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_status:I

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_reason:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseComplete()V

    :cond_1
    return-void
.end method

.method public onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V

    :cond_0
    return-void
.end method

.method public onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    :cond_0
    return-void
.end method

.method public onResponseHeaderComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeaderComplete()V

    :cond_0
    return-void
.end method

.method public onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 153
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_version:Lorg/eclipse/jetty/io/Buffer;

    .line 154
    iput p2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_status:I

    .line 155
    iput-object p3, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_reason:Lorg/eclipse/jetty/io/Buffer;

    :goto_0
    return-void
.end method

.method public onRetry()V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRetry()V

    :cond_0
    return-void
.end method

.method public setDelegatingRequests(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    return-void
.end method

.method public setDelegatingResponses(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    return-void
.end method

.method public setDelegationResult(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    return-void
.end method

.method public setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    return-void
.end method
