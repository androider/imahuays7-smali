.class public Lcom/shuyu/gsyvideoplayer/d/c;
.super Ljava/lang/Object;
.source "VideoOptionModel.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/d/c;->a:I

    .line 26
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/d/c;->b:I

    .line 27
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/d/c;->d:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/d/c;->c:I

    .line 29
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/d/c;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/d/c;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/d/c;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/d/c;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/d/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/d/c;->e:Ljava/lang/String;

    return-object v0
.end method
