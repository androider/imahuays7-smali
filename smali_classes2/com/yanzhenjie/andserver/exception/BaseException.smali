.class public Lcom/yanzhenjie/andserver/exception/BaseException;
.super Lorg/apache/httpcore/HttpException;
.source "BaseException.java"


# instance fields
.field private a:I

.field private b:Lorg/apache/httpcore/j;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Unknown exception occurred on server."

    const/16 v1, 0x1f4

    .line 32
    invoke-direct {p0, v1, v0}, Lcom/yanzhenjie/andserver/exception/BaseException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0, p2}, Lorg/apache/httpcore/HttpException;-><init>(Ljava/lang/String;)V

    .line 37
    iput p1, p0, Lcom/yanzhenjie/andserver/exception/BaseException;->a:I

    .line 38
    new-instance p1, Lorg/apache/httpcore/entity/f;

    sget-object v0, Lorg/apache/httpcore/entity/ContentType;->TEXT_PLAIN:Lorg/apache/httpcore/entity/ContentType;

    invoke-direct {p1, p2, v0}, Lorg/apache/httpcore/entity/f;-><init>(Ljava/lang/String;Lorg/apache/httpcore/entity/ContentType;)V

    iput-object p1, p0, Lcom/yanzhenjie/andserver/exception/BaseException;->b:Lorg/apache/httpcore/j;

    return-void
.end method


# virtual methods
.method public getHttpBody()Lorg/apache/httpcore/j;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yanzhenjie/andserver/exception/BaseException;->b:Lorg/apache/httpcore/j;

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/yanzhenjie/andserver/exception/BaseException;->a:I

    return v0
.end method
