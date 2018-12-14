.class public Lcom/facebook/imagepipeline/k/t;
.super Ljava/lang/Object;
.source "FetchState.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/k/al;

.field private c:J

.field private d:I

.field private e:Lcom/facebook/imagepipeline/common/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/t;->a:Lcom/facebook/imagepipeline/k/k;

    .line 32
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/t;->b:Lcom/facebook/imagepipeline/k/al;

    const-wide/16 p1, 0x0

    .line 33
    iput-wide p1, p0, Lcom/facebook/imagepipeline/k/t;->c:J

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/k/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->a:Lcom/facebook/imagepipeline/k/k;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/facebook/imagepipeline/k/t;->d:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/facebook/imagepipeline/k/t;->c:J

    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/common/a;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/t;->e:Lcom/facebook/imagepipeline/common/a;

    return-void
.end method

.method public b()Lcom/facebook/imagepipeline/k/al;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->b:Lcom/facebook/imagepipeline/k/al;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->b:Lcom/facebook/imagepipeline/k/al;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/al;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/k/an;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->b:Lcom/facebook/imagepipeline/k/al;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/al;->c()Lcom/facebook/imagepipeline/k/an;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->b:Lcom/facebook/imagepipeline/k/al;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/al;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/facebook/imagepipeline/k/t;->c:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/facebook/imagepipeline/k/t;->d:I

    return v0
.end method

.method public h()Lcom/facebook/imagepipeline/common/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->e:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method
