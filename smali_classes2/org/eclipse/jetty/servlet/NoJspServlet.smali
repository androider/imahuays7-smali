.class public Lorg/eclipse/jetty/servlet/NoJspServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "NoJspServlet.java"


# instance fields
.field private _warned:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method


# virtual methods
.method protected doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-boolean p1, p0, Lorg/eclipse/jetty/servlet/NoJspServlet;->_warned:Z

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/NoJspServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p1

    const-string v0, "No JSP support.  Check that JSP jars are in lib/jsp and that the JSP option has been specified to start.jar"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/NoJspServlet;->_warned:Z

    const/16 p1, 0x1f4

    const-string v0, "JSP support not configured"

    .line 42
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    return-void
.end method
