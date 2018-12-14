.class public Lorg/eclipse/jetty/servlet/FilterHolder;
.super Lorg/eclipse/jetty/servlet/Holder;
.source "FilterHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/FilterHolder$Config;,
        Lorg/eclipse/jetty/servlet/FilterHolder$Registration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder<",
        "Ljavax/servlet/Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private transient _config:Lorg/eclipse/jetty/servlet/FilterHolder$Config;

.field private transient _filter:Ljavax/servlet/Filter;

.field private transient _registration:Ljavax/servlet/FilterRegistration$Dynamic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/FilterHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Filter;",
            ">;)V"
        }
    .end annotation

    .line 72
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 73
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/Filter;)V
    .locals 1

    .line 81
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 82
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setFilter(Ljavax/servlet/Filter;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    return-void
.end method


# virtual methods
.method public destroyInstance(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    check-cast p1, Ljavax/servlet/Filter;

    .line 152
    invoke-interface {p1}, Ljavax/servlet/Filter;->destroy()V

    .line 153
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->destroyFilter(Ljavax/servlet/Filter;)V

    return-void
.end method

.method public doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->doStart()V

    .line 92
    const-class v0, Ljavax/servlet/Filter;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a javax.servlet.Filter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->stop()V

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    if-nez v0, :cond_3

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->createFilter(Ljava/lang/Class;)Ljavax/servlet/Filter;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 109
    instance-of v2, v1, Ljava/lang/InstantiationException;

    if-eqz v2, :cond_1

    .line 110
    check-cast v1, Ljava/lang/InstantiationException;

    throw v1

    .line 111
    :cond_1
    instance-of v2, v1, Ljava/lang/IllegalAccessException;

    if-eqz v2, :cond_2

    .line 112
    check-cast v1, Ljava/lang/IllegalAccessException;

    throw v1

    .line 113
    :cond_2
    throw v0

    .line 117
    :cond_3
    :goto_0
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterHolder$Config;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/FilterHolder$Config;-><init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_config:Lorg/eclipse/jetty/servlet/FilterHolder$Config;

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_config:Lorg/eclipse/jetty/servlet/FilterHolder$Config;

    invoke-interface {v0, v1}, Ljavax/servlet/Filter;->init(Ljavax/servlet/FilterConfig;)V

    return-void
.end method

.method public doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->destroyInstance(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Lorg/eclipse/jetty/servlet/FilterHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 137
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_extInstance:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 138
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    .line 140
    :cond_1
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_config:Lorg/eclipse/jetty/servlet/FilterHolder$Config;

    .line 141
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->doStop()V

    return-void
.end method

.method public getFilter()Ljavax/servlet/Filter;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    return-object v0
.end method

.method public getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_registration:Ljavax/servlet/FilterRegistration$Dynamic;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;-><init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_registration:Ljavax/servlet/FilterRegistration$Dynamic;

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_registration:Ljavax/servlet/FilterRegistration$Dynamic;

    return-object v0
.end method

.method public declared-synchronized setFilter(Ljavax/servlet/Filter;)V
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_extInstance:Z

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 162
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 158
    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
