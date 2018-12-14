.class public Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
.super Ljavax/servlet/AsyncEvent;
.source "AsyncContinuation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AsyncContinuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncEventState"
.end annotation


# instance fields
.field private _dispatchContext:Ljavax/servlet/ServletContext;

.field private _pathInContext:Ljava/lang/String;

.field private final _suspendedContext:Ljavax/servlet/ServletContext;

.field private _timeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field final synthetic this$0:Lorg/eclipse/jetty/server/AsyncContinuation;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AsyncContinuation;Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    .line 1073
    invoke-direct {p0, p1, p3, p4}, Ljavax/servlet/AsyncEvent;-><init>(Ljavax/servlet/AsyncContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 1069
    new-instance p3, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;

    iget-object p4, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {p3, p4}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;-><init>(Lorg/eclipse/jetty/server/AsyncContinuation;)V

    iput-object p3, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 1074
    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Ljavax/servlet/ServletContext;

    .line 1076
    iget-object p1, p1, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p1

    const-string p2, "javax.servlet.async.request_uri"

    .line 1079
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "javax.servlet.forward.request_uri"

    .line 1085
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p3, "javax.servlet.async.request_uri"

    .line 1088
    invoke-virtual {p1, p3, p2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "javax.servlet.async.context_path"

    const-string p3, "javax.servlet.forward.context_path"

    .line 1089
    invoke-virtual {p1, p3}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "javax.servlet.async.servlet_path"

    const-string p3, "javax.servlet.forward.servlet_path"

    .line 1090
    invoke-virtual {p1, p3}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "javax.servlet.async.path_info"

    const-string p3, "javax.servlet.forward.path_info"

    .line 1091
    invoke-virtual {p1, p3}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "javax.servlet.async.query_string"

    const-string p3, "javax.servlet.forward.query_string"

    .line 1092
    invoke-virtual {p1, p3}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "javax.servlet.async.request_uri"

    .line 1096
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "javax.servlet.async.context_path"

    .line 1097
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "javax.servlet.async.servlet_path"

    .line 1098
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "javax.servlet.async.path_info"

    .line 1099
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "javax.servlet.async.query_string"

    .line 1100
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljavax/servlet/ServletContext;)Ljavax/servlet/ServletContext;
    .locals 0

    .line 1064
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    return-object p1
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1064
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_pathInContext:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;)Lorg/eclipse/jetty/util/thread/Timeout$Task;
    .locals 0

    .line 1064
    iget-object p0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    return-object p0
.end method


# virtual methods
.method public getDispatchContext()Ljavax/servlet/ServletContext;
    .locals 1

    .line 1112
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1126
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_pathInContext:Ljava/lang/String;

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .line 1117
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Ljavax/servlet/ServletContext;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    :goto_0
    return-object v0
.end method

.method public getSuspendedContext()Ljavax/servlet/ServletContext;
    .locals 1

    .line 1107
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Ljavax/servlet/ServletContext;

    return-object v0
.end method
