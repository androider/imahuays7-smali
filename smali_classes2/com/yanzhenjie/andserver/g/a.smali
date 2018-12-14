.class public Lcom/yanzhenjie/andserver/g/a;
.super Ljava/lang/Object;
.source "View.java"


# instance fields
.field private a:I

.field private b:Lorg/apache/httpcore/j;

.field private c:Lorg/apache/httpcore/message/HeaderGroup;


# direct methods
.method public constructor <init>(ILorg/apache/httpcore/j;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/yanzhenjie/andserver/g/a;->a:I

    .line 44
    iput-object p2, p0, Lcom/yanzhenjie/andserver/g/a;->b:Lorg/apache/httpcore/j;

    .line 45
    new-instance p1, Lorg/apache/httpcore/message/HeaderGroup;

    invoke-direct {p1}, Lorg/apache/httpcore/message/HeaderGroup;-><init>()V

    iput-object p1, p0, Lcom/yanzhenjie/andserver/g/a;->c:Lorg/apache/httpcore/message/HeaderGroup;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/yanzhenjie/andserver/g/a;->a:I

    return v0
.end method

.method public b()[Lorg/apache/httpcore/e;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/yanzhenjie/andserver/g/a;->c:Lorg/apache/httpcore/message/HeaderGroup;

    invoke-virtual {v0}, Lorg/apache/httpcore/message/HeaderGroup;->getAllHeaders()[Lorg/apache/httpcore/e;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/apache/httpcore/j;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/yanzhenjie/andserver/g/a;->b:Lorg/apache/httpcore/j;

    return-object v0
.end method
