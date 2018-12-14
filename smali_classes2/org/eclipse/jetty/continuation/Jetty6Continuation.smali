.class public Lorg/eclipse/jetty/continuation/Jetty6Continuation;
.super Ljava/lang/Object;
.source "Jetty6Continuation.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;


# static fields
.field private static final LOG:Lorg/mortbay/log/Logger;

.field private static final __exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field private volatile _completed:Z

.field private volatile _expired:Z

.field private _initial:Z

.field private final _j6Continuation:Lorg/mortbay/util/ajax/Continuation;

.field private _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/continuation/ContinuationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final _request:Ljavax/servlet/ServletRequest;

.field private _response:Ljavax/servlet/ServletResponse;

.field private _responseWrapped:Z

.field private volatile _resumed:Z

.field private _retry:Ljava/lang/Throwable;

.field private _timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->LOG:Lorg/mortbay/log/Logger;

    .line 43
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletRequest;Lorg/mortbay/util/ajax/Continuation;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 53
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 54
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 55
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    .line 60
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_initialized:Z

    if-nez v0, :cond_0

    .line 62
    sget-object p1, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->LOG:Lorg/mortbay/log/Logger;

    const-string p2, "!ContinuationFilter installed"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "!ContinuationFilter installed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Ljavax/servlet/ServletRequest;

    .line 66
    iput-object p2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    return-void
.end method


# virtual methods
.method public addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public complete()V
    .locals 1

    .line 78
    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->resume()V

    .line 85
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enter(Ljavax/servlet/ServletResponse;)Z
    .locals 2

    .line 227
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Ljavax/servlet/ServletResponse;

    .line 228
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {p1}, Lorg/mortbay/util/ajax/Continuation;->isResumed()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 230
    iget-boolean p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    if-eqz p1, :cond_0

    return v0

    .line 233
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {p1}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 235
    iget-boolean p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 240
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-boolean p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method public exit()Z
    .locals 2

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    .line 252
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    const/4 v1, 0x0

    .line 253
    iput-object v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    .line 254
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 255
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 256
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 257
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 262
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    return v0
.end method

.method public isInitial()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    return v0
.end method

.method public isResponseWrapped()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 148
    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->resume()V

    .line 155
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTimeout(J)V
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    .line 161
    :goto_0
    iput p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_timeout:I

    return-void
.end method

.method public suspend()V
    .locals 3

    const/4 v0, 0x0

    .line 190
    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Ljavax/servlet/ServletResponse;

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    .line 192
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 193
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 194
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    iget v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_timeout:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/mortbay/util/ajax/Continuation;->suspend(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 199
    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method public suspend(Ljavax/servlet/ServletResponse;)V
    .locals 2

    .line 172
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Ljavax/servlet/ServletResponse;

    .line 173
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Ljavax/servlet/ServletResponse;

    instance-of p1, p1, Ljavax/servlet/ServletResponseWrapper;

    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 175
    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 176
    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 177
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    iget v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_timeout:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/mortbay/util/ajax/Continuation;->suspend(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method public undispatch()V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->__debug:Z

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 219
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
