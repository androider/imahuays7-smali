.class public Lcom/shuyu/gsyvideoplayer/d/a;
.super Ljava/lang/Object;
.source "GSYModel.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/io/File;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:F

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/d/a;->d:F

    .line 26
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/d/a;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/d/a;->c:Ljava/util/Map;

    .line 28
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/d/a;->e:Z

    .line 29
    iput p4, p0, Lcom/shuyu/gsyvideoplayer/d/a;->d:F

    .line 30
    iput-boolean p5, p0, Lcom/shuyu/gsyvideoplayer/d/a;->f:Z

    .line 31
    iput-object p6, p0, Lcom/shuyu/gsyvideoplayer/d/a;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Map;
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

    .line 43
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/d/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/d/a;->e:Z

    return v0
.end method

.method public d()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/d/a;->d:F

    return v0
.end method

.method public e()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/d/a;->f:Z

    return v0
.end method

.method public f()Ljava/io/File;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/d/a;->b:Ljava/io/File;

    return-object v0
.end method
