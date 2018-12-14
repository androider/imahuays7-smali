.class public Lorg/eclipse/jetty/continuation/Servlet3Continuation;
.super Ljava/lang/Object;
.source "Servlet3Continuation.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/Continuation;


# static fields
.field private static final __exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field private _context:Ljavax/servlet/AsyncContext;

.field private volatile _expired:Z

.field private volatile _initial:Z

.field private _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/servlet/AsyncListener;",
            ">;"
        }
    .end annotation
.end field

.field private final _request:Ljavax/servlet/ServletRequest;

.field private _response:Ljavax/servlet/ServletResponse;

.field private volatile _responseWrapped:Z

.field private volatile _resumed:Z

.field private _timeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletRequest;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_initial:Z

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_resumed:Z

    .line 51
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_expired:Z

    .line 52
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_responseWrapped:Z

    const-wide/16 v0, -0x1

    .line 54
    iput-wide v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_timeoutMs:J

    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Ljavax/servlet/ServletRequest;

    .line 61
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    new-instance v0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/continuation/Servlet3Continuation$1;-><init>(Lorg/eclipse/jetty/continuation/Servlet3Continuation;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$002(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_initial:Z

    return p1
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_expired:Z

    return p1
.end method


# virtual methods
.method public addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 1

    .line 87
    new-instance v0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;-><init>(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Lorg/eclipse/jetty/continuation/ContinuationListener;)V

    .line 111
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    invoke-interface {p1, v0}, Ljavax/servlet/AsyncContext;->addListener(Ljavax/servlet/AsyncListener;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public complete()V
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    invoke-interface {v0}, Ljavax/servlet/AsyncContext;->complete()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_response:Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_expired:Z

    return v0
.end method

.method public isInitial()Z
    .locals 2

    .line 142
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_initial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v0

    sget-object v1, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResponseWrapped()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_responseWrapped:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_resumed:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->isAsyncStarted()Z

    move-result v0

    return v0
.end method

.method public keepWrappers()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_responseWrapped:Z

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_resumed:Z

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    invoke-interface {v0}, Ljavax/servlet/AsyncContext;->dispatch()V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTimeout(J)V
    .locals 1

    .line 176
    iput-wide p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_timeoutMs:J

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/AsyncContext;->setTimeout(J)V

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 3

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_resumed:Z

    .line 200
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_expired:Z

    .line 201
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->startAsync()Ljavax/servlet/AsyncContext;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    iget-wide v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_timeoutMs:J

    invoke-interface {v0, v1, v2}, Ljavax/servlet/AsyncContext;->setTimeout(J)V

    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/AsyncListener;

    .line 205
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    invoke-interface {v2, v1}, Ljavax/servlet/AsyncContext;->addListener(Ljavax/servlet/AsyncListener;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public suspend(Ljavax/servlet/ServletResponse;)V
    .locals 2

    .line 184
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_response:Ljavax/servlet/ServletResponse;

    .line 185
    instance-of p1, p1, Ljavax/servlet/ServletResponseWrapper;

    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_responseWrapped:Z

    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_resumed:Z

    .line 187
    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_expired:Z

    .line 188
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->startAsync()Ljavax/servlet/AsyncContext;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    .line 189
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    iget-wide v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_timeoutMs:J

    invoke-interface {p1, v0, v1}, Ljavax/servlet/AsyncContext;->setTimeout(J)V

    .line 191
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/AsyncListener;

    .line 192
    iget-object v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Ljavax/servlet/AsyncContext;

    invoke-interface {v1, v0}, Ljavax/servlet/AsyncContext;->addListener(Ljavax/servlet/AsyncListener;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public undispatch()V
    .locals 2

    .line 248
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->__debug:Z

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 252
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
