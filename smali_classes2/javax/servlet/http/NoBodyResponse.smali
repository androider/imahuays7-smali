.class Ljavax/servlet/http/NoBodyResponse;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "HttpServlet.java"


# static fields
.field private static final lStrings:Ljava/util/ResourceBundle;


# instance fields
.field private didSetContentLength:Z

.field private noBody:Ljavax/servlet/http/NoBodyOutputStream;

.field private usingOutputStream:Z

.field private writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "javax.servlet.http.LocalStrings"

    .line 864
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/http/NoBodyResponse;->lStrings:Ljava/util/ResourceBundle;

    return-void
.end method

.method constructor <init>(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    .line 874
    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    .line 875
    new-instance p1, Ljavax/servlet/http/NoBodyOutputStream;

    invoke-direct {p1}, Ljavax/servlet/http/NoBodyOutputStream;-><init>()V

    iput-object p1, p0, Ljavax/servlet/http/NoBodyResponse;->noBody:Ljavax/servlet/http/NoBodyOutputStream;

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 896
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljavax/servlet/http/NoBodyResponse;->lStrings:Ljava/util/ResourceBundle;

    const-string v2, "err.ise.getOutputStream"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 899
    iput-boolean v0, p0, Ljavax/servlet/http/NoBodyResponse;->usingOutputStream:Z

    .line 901
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->noBody:Ljavax/servlet/http/NoBodyOutputStream;

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 906
    iget-boolean v0, p0, Ljavax/servlet/http/NoBodyResponse;->usingOutputStream:Z

    if-eqz v0, :cond_0

    .line 907
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljavax/servlet/http/NoBodyResponse;->lStrings:Ljava/util/ResourceBundle;

    const-string v2, "err.ise.getWriter"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_0
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->writer:Ljava/io/PrintWriter;

    if-nez v0, :cond_1

    .line 912
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljavax/servlet/http/NoBodyResponse;->noBody:Ljavax/servlet/http/NoBodyOutputStream;

    invoke-virtual {p0}, Ljavax/servlet/http/NoBodyResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 914
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Ljavax/servlet/http/NoBodyResponse;->writer:Ljava/io/PrintWriter;

    .line 917
    :cond_1
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->writer:Ljava/io/PrintWriter;

    return-object v0
.end method

.method setContentLength()V
    .locals 1

    .line 880
    iget-boolean v0, p0, Ljavax/servlet/http/NoBodyResponse;->didSetContentLength:Z

    if-nez v0, :cond_1

    .line 881
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 884
    :cond_0
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->noBody:Ljavax/servlet/http/NoBodyOutputStream;

    invoke-virtual {v0}, Ljavax/servlet/http/NoBodyOutputStream;->getContentLength()I

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/servlet/http/NoBodyResponse;->setContentLength(I)V

    :cond_1
    return-void
.end method

.method public setContentLength(I)V
    .locals 0

    .line 889
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setContentLength(I)V

    const/4 p1, 0x1

    .line 890
    iput-boolean p1, p0, Ljavax/servlet/http/NoBodyResponse;->didSetContentLength:Z

    return-void
.end method
