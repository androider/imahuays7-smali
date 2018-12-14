.class public abstract Ljavax/servlet/GenericServlet;
.super Ljava/lang/Object;
.source "GenericServlet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/servlet/Servlet;
.implements Ljavax/servlet/ServletConfig;


# static fields
.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.LocalStrings"

.field private static lStrings:Ljava/util/ResourceBundle;


# instance fields
.field private transient config:Ljavax/servlet/ServletConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "javax.servlet.LocalStrings"

    .line 95
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 137
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v1, "err.servlet_config_not_initialized"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_0
    invoke-interface {v0, p1}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v2, "err.servlet_config_not_initialized"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getServletConfig()Ljavax/servlet/ServletConfig;
    .locals 1

    .line 180
    iget-object v0, p0, Ljavax/servlet/GenericServlet;->config:Ljavax/servlet/ServletConfig;

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 3

    .line 197
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v2, "err.servlet_config_not_initialized"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    return-object v0
.end method

.method public getServletInfo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 3

    .line 329
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v2, "err.servlet_config_not_initialized"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getServletName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    return-void
.end method

.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 243
    iput-object p1, p0, Ljavax/servlet/GenericServlet;->config:Ljavax/servlet/ServletConfig;

    .line 244
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->init()V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 3

    .line 275
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 293
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
