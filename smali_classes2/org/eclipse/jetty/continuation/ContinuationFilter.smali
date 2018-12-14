.class public Lorg/eclipse/jetty/continuation/ContinuationFilter;
.super Ljava/lang/Object;
.source "ContinuationFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    }
.end annotation


# static fields
.field static __debug:Z

.field static _initialized:Z


# instance fields
.field _context:Ljavax/servlet/ServletContext;

.field private _debug:Z

.field private _faux:Z

.field private _filtered:Z

.field private _jetty6:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 156
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz v0, :cond_1

    .line 158
    instance-of v0, p2, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_filtered:Z

    if-eqz v0, :cond_a

    const-string v0, "org.eclipse.jetty.continuation"

    .line 102
    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/Continuation;

    .line 104
    iget-boolean v1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/eclipse/jetty/continuation/FauxContinuation;

    if-nez v1, :cond_1

    .line 106
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/continuation/FauxContinuation;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/continuation/FauxContinuation;-><init>(Ljavax/servlet/ServletRequest;)V

    const-string v1, "org.eclipse.jetty.continuation"

    .line 107
    invoke-interface {p1, v1, v0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_1
    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    :goto_0
    const/4 v1, 0x0

    move-object v2, v0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-nez v0, :cond_b

    const/4 v0, 0x1

    if-eqz v2, :cond_4

    .line 117
    :try_start_0
    invoke-interface {v2, p2}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->enter(Ljavax/servlet/ServletResponse;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_3

    .line 118
    :cond_4
    :goto_2
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-nez v2, :cond_6

    const-string v2, "org.eclipse.jetty.continuation"

    .line 127
    invoke-interface {p1, v2}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    :cond_6
    if-eqz v2, :cond_3

    .line 129
    invoke-interface {v2}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->exit()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :goto_3
    :try_start_1
    const-string v4, "faux"

    .line 122
    invoke-direct {p0, v4, v3}, Lorg/eclipse/jetty/continuation/ContinuationFilter;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_7

    const-string v2, "org.eclipse.jetty.continuation"

    .line 127
    invoke-interface {p1, v2}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    :cond_7
    if-eqz v2, :cond_3

    .line 129
    invoke-interface {v2}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->exit()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :goto_4
    if-nez v2, :cond_8

    const-string p3, "org.eclipse.jetty.continuation"

    .line 127
    invoke-interface {p1, p3}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    :cond_8
    if-eqz v2, :cond_9

    .line 129
    invoke-interface {v2}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->exit()Z

    move-result p1

    :cond_9
    throw p2

    .line 137
    :cond_a
    :try_start_2
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_2
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    const-string p2, "caught"

    .line 141
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jetty/continuation/ContinuationFilter;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const-string v0, "org.eclipse.jetty.servlet"

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    const-string v1, "debug"

    .line 68
    invoke-interface {p1, v1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    .line 70
    iget-boolean v1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz v1, :cond_1

    .line 71
    sput-boolean v3, Lorg/eclipse/jetty/continuation/ContinuationFilter;->__debug:Z

    :cond_1
    const-string v1, "jetty6"

    .line 73
    invoke-interface {p1, v1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "partial"

    .line 75
    invoke-interface {p1, v1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    goto :goto_2

    .line 79
    :cond_3
    sget-boolean v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    :goto_2
    const-string v1, "faux"

    .line 81
    invoke-interface {p1, v1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    goto :goto_4

    :cond_5
    if-nez v0, :cond_6

    .line 85
    iget-boolean p1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    invoke-interface {p1}, Ljavax/servlet/ServletContext;->getMajorVersion()I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    .line 87
    :goto_4
    iget-boolean p1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    if-eqz p1, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    iput-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_filtered:Z

    .line 88
    iget-boolean p1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz p1, :cond_9

    .line 89
    iget-object p1, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContinuationFilter  jetty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " jetty6="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " faux="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " filtered="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_filtered:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " servlet3="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 95
    :cond_9
    sput-boolean v3, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_initialized:Z

    return-void
.end method
