.class Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
.super Ljava/lang/Object;
.source "ErrorPageErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorCodeRange"
.end annotation


# instance fields
.field private _from:I

.field private _to:I

.field private _uri:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->this$0:Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-le p2, p3, :cond_0

    .line 260
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "from>to"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_0
    iput p2, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_from:I

    .line 263
    iput p3, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_to:I

    .line 264
    iput-object p4, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getUri()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_uri:Ljava/lang/String;

    return-object v0
.end method

.method isInRange(I)Z
    .locals 1

    .line 269
    iget v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_from:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_to:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_from:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_to:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
