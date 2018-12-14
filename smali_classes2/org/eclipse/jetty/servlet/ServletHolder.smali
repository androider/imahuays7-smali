.class public Lorg/eclipse/jetty/servlet/ServletHolder;
.super Lorg/eclipse/jetty/servlet/Holder;
.source "ServletHolder.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/eclipse/jetty/server/UserIdentity$Scope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;,
        Lorg/eclipse/jetty/servlet/ServletHolder$Registration;,
        Lorg/eclipse/jetty/servlet/ServletHolder$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder<",
        "Ljavax/servlet/Servlet;",
        ">;",
        "Ljava/lang/Comparable;",
        "Lorg/eclipse/jetty/server/UserIdentity$Scope;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final NO_MAPPED_ROLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient _config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

.field private transient _enabled:Z

.field private _forcedPath:Ljava/lang/String;

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private _initOnStartup:Z

.field private _initOrder:I

.field private _registration:Ljavax/servlet/ServletRegistration$Dynamic;

.field private _roleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _runAsRole:Ljava/lang/String;

.field private _runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

.field private transient _servlet:Ljavax/servlet/Servlet;

.field private transient _unavailable:J

.field private transient _unavailableEx:Ljavax/servlet/UnavailableException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->NO_MAPPED_ROLES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Servlet;",
            ">;)V"
        }
    .end annotation

    .line 138
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 139
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Servlet;",
            ">;)V"
        }
    .end annotation

    .line 118
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 119
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/servlet/Servlet;)V
    .locals 1

    .line 128
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 129
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/Servlet;)V
    .locals 1

    .line 109
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 110
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 66
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/servlet/ServletHolder;)Lorg/eclipse/jetty/servlet/ServletHolder$Config;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    return-object p0
.end method

.method private initServlet()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 515
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-nez v1, :cond_0

    .line 516
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->newInstance()Ljavax/servlet/Servlet;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 517
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    if-nez v1, :cond_1

    .line 518
    new-instance v1, Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 521
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2}, Lorg/eclipse/jetty/security/IdentityService;->getSystemUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 527
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isJspServlet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 529
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initJspServlet()V

    .line 532
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initMultiPart()V

    .line 534
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-interface {v2, v3}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V
    :try_end_1
    .catch Ljavax/servlet/UnavailableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_4

    .line 561
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_5

    :catch_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v2, v0

    .line 552
    :goto_1
    :try_start_2
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    .line 553
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 554
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 555
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception v1

    move-object v2, v0

    .line 545
    :goto_2
    invoke-virtual {v1}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v3, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    :goto_3
    invoke-direct {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    .line 546
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 547
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 548
    throw v1

    :catch_5
    move-exception v1

    move-object v2, v0

    .line 538
    :goto_4
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 539
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 540
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 541
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    .line 560
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_6

    .line 561
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    :cond_6
    throw v1
.end method

.method private isJspServlet()Z
    .locals 2

    .line 712
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 715
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 720
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->isJspServlet(Ljava/lang/String;)Z

    move-result v1

    .line 721
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isJspServlet(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "org.apache.jasper.servlet.JspServlet"

    .line 733
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private makeUnavailable(Ljava/lang/Throwable;)V
    .locals 3

    .line 489
    instance-of v0, p1, Ljavax/servlet/UnavailableException;

    if-eqz v0, :cond_0

    .line 490
    check-cast p1, Ljavax/servlet/UnavailableException;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    goto :goto_1

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 495
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "unavailable"

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v1, "unavailable"

    .line 497
    invoke-interface {v0, v1, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    :goto_0
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder$1;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/eclipse/jetty/servlet/ServletHolder$1;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;ILjava/lang/Throwable;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    const-wide/16 v0, -0x1

    .line 504
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    :goto_1
    return-void
.end method

.method private makeUnavailable(Ljavax/servlet/UnavailableException;)V
    .locals 6

    .line 467
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    const-string v1, "unavailable"

    invoke-interface {v0, v1, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    const-wide/16 v0, -0x1

    .line 473
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    .line 474
    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 475
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 478
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    move-result p1

    if-lez p1, :cond_2

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 481
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    :goto_0
    return-void
.end method


# virtual methods
.method public checkServletType()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-eqz v0, :cond_1

    const-class v0, Ljavax/servlet/Servlet;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 440
    :cond_1
    :goto_0
    new-instance v0, Ljavax/servlet/UnavailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Servlet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a javax.servlet.Servlet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 192
    instance-of v0, p1, Lorg/eclipse/jetty/servlet/ServletHolder;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 194
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    return v2

    .line 197
    :cond_0
    iget v3, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    iget v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    if-ge v3, v4, :cond_1

    return v1

    .line 199
    :cond_1
    iget v3, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    iget v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    const/4 v5, -0x1

    if-le v3, v4, :cond_2

    return v5

    .line 202
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    iget-object v3, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :cond_3
    if-nez v2, :cond_4

    .line 204
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :cond_4
    if-nez v2, :cond_6

    .line 206
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-le v0, p1, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, -0x1

    :cond_6
    :goto_0
    return v2

    :cond_7
    return v1
.end method

.method public destroyInstance(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 395
    :cond_0
    check-cast p1, Ljavax/servlet/Servlet;

    .line 396
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->destroyServlet(Ljavax/servlet/Servlet;)V

    .line 397
    invoke-interface {p1}, Ljavax/servlet/Servlet;->destroy()V

    return-void
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 292
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    .line 293
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->doStart()V
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_2

    .line 318
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->checkServletType()V
    :try_end_1
    .catch Ljavax/servlet/UnavailableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 334
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/IdentityService;->newRunAsToken(Ljava/lang/String;)Lorg/eclipse/jetty/security/RunAsToken;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    .line 337
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-eqz v0, :cond_2

    const-class v0, Ljavax/servlet/SingleThreadModel;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;Lorg/eclipse/jetty/servlet/ServletHolder$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 342
    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-eqz v0, :cond_4

    .line 346
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initServlet()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 350
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStartWithUnavailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 351
    sget-object v1, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void

    .line 353
    :cond_5
    throw v0

    :catch_1
    move-exception v0

    .line 322
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 323
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStartWithUnavailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 325
    sget-object v1, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    return-void

    .line 329
    :cond_6
    throw v0

    :catch_2
    move-exception v0

    .line 304
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 305
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStartWithUnavailable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 307
    sget-object v1, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    return-void

    .line 311
    :cond_7
    throw v0
.end method

.method public doStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 367
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2}, Lorg/eclipse/jetty/security/IdentityService;->getSystemUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 370
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->destroyInstance(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_2

    .line 379
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 374
    :goto_1
    :try_start_2
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 378
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    .line 378
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_1

    .line 379
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    :cond_1
    throw v0

    .line 383
    :cond_2
    :goto_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    if-nez v0, :cond_3

    .line 384
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 386
    :cond_3
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 215
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForcedPath()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInitOrder()I
    .locals 1

    .line 167
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    return v0
.end method

.method public getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 1

    .line 851
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Ljavax/servlet/ServletRegistration$Dynamic;

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Ljavax/servlet/ServletRegistration$Dynamic;

    .line 853
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Ljavax/servlet/ServletRegistration$Dynamic;

    return-object v0
.end method

.method public getRoleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->NO_MAPPED_ROLES:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    :goto_0
    return-object v0
.end method

.method public getRoleRefMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRunAsRole()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getServlet()Ljavax/servlet/Servlet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    monitor-enter p0

    .line 408
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 410
    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    iput-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    goto :goto_1

    .line 411
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    throw v0

    .line 416
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-nez v0, :cond_3

    .line 417
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initServlet()V

    .line 418
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 407
    monitor-exit p0

    throw v0
.end method

.method public getServletInstance()Ljavax/servlet/Servlet;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    return-object v0
.end method

.method public getUnavailableException()Ljavax/servlet/UnavailableException;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    return-object v0
.end method

.method public getUserRoleLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-object p1

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljavax/servlet/UnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 651
    new-instance p1, Ljavax/servlet/UnavailableException;

    const-string p2, "Servlet Not Initialized"

    invoke-direct {p1, p2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 653
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 654
    monitor-enter p0

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 657
    new-instance p1, Ljavax/servlet/UnavailableException;

    const-string p2, "Servlet not initialized"

    const/4 p3, -0x1

    invoke-direct {p1, p2, p3}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 658
    :cond_1
    iget-wide v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-nez v1, :cond_3

    .line 659
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 661
    new-instance p1, Ljavax/servlet/UnavailableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not instantiate "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 662
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 667
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->isAsyncSupported()Z

    move-result v2

    .line 671
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v3, "org.apache.catalina.jsp_file"

    .line 673
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    invoke-interface {p2, v3, v4}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 676
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v3, :cond_6

    .line 677
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getResolvedUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 679
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isAsyncSupported()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    .line 680
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 682
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->getMultipartConfig()Ljavax/servlet/MultipartConfigElement;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v4, "org.eclipse.multipartConfig"

    .line 684
    invoke-interface {p2, v4, v3}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    :cond_8
    invoke-interface {v0, p2, p3}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_1
    .catch Ljavax/servlet/UnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 699
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz p1, :cond_9

    .line 700
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {p1, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    :cond_9
    return-void

    :catchall_0
    move-exception p3

    goto :goto_0

    :catch_0
    move-exception p3

    .line 691
    :try_start_2
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 692
    iget-object p3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    :goto_0
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 699
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz p1, :cond_a

    .line 700
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {p1, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    :cond_a
    const-string p1, "javax.servlet.error.servlet_name"

    .line 704
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    throw p3

    :catchall_1
    move-exception p1

    .line 662
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected initJspServlet()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    const-string v1, "org.apache.catalina.jsp_classpath"

    .line 575
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "com.sun.appserv.jsp.classpath"

    .line 578
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/Loader;->getClassPath(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "?"

    const-string v2, "classpath"

    .line 581
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassPath()Ljava/lang/String;

    move-result-object v0

    .line 584
    sget-object v1, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "classpath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    const-string v1, "classpath"

    .line 586
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected initMultiPart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 601
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->getMultipartConfig()Ljavax/servlet/MultipartConfigElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    .line 606
    new-instance v1, Lorg/eclipse/jetty/server/Request$MultiPartCleanerListener;

    invoke-direct {v1}, Lorg/eclipse/jetty/server/Request$MultiPartCleanerListener;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addEventListener(Ljava/util/EventListener;)V

    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 6

    .line 450
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    return v1

    .line 454
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 458
    sget-object v4, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 461
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isEnabled()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    return v0
.end method

.method public isSetInitOrder()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    return v0
.end method

.method protected newInstance()Ljavax/servlet/Servlet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 956
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Servlet;

    return-object v0

    .line 959
    :cond_0
    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->createServlet(Ljava/lang/Class;)Ljavax/servlet/Servlet;

    move-result-object v0
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 963
    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 964
    instance-of v2, v1, Ljava/lang/InstantiationException;

    if-eqz v2, :cond_1

    .line 965
    check-cast v1, Ljava/lang/InstantiationException;

    throw v1

    .line 966
    :cond_1
    instance-of v2, v1, Ljava/lang/IllegalAccessException;

    if-eqz v2, :cond_2

    .line 967
    check-cast v1, Ljava/lang/IllegalAccessException;

    throw v1

    .line 968
    :cond_2
    throw v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    return-void
.end method

.method public setForcedPath(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    return-void
.end method

.method public setInitOrder(I)V
    .locals 1

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 179
    iput p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    return-void
.end method

.method public setRunAsRole(Ljava/lang/String;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setServlet(Ljavax/servlet/Servlet;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 154
    :try_start_0
    instance-of v0, p1, Ljavax/servlet/SingleThreadModel;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    .line 158
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 160
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 155
    :cond_2
    :goto_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 232
    monitor-exit p0

    throw p1
.end method
