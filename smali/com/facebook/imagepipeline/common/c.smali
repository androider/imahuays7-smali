.class public Lcom/facebook/imagepipeline/common/c;
.super Ljava/lang/Object;
.source "ImageDecodeOptionsBuilder.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/Bitmap$Config;

.field private h:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/facebook/imagepipeline/n/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 20
    iput v0, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    .line 26
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    return v0
.end method

.method public a(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->b:Z

    return-object p0
.end method

.method public b(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->d:Z

    return v0
.end method

.method public e()Lcom/facebook/imagepipeline/decoder/b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/c;->h:Lcom/facebook/imagepipeline/decoder/b;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    return v0
.end method

.method public g()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->f:Z

    return v0
.end method

.method public i()Lcom/facebook/imagepipeline/n/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/c;->i:Lcom/facebook/imagepipeline/n/a;

    return-object v0
.end method

.method public j()Lcom/facebook/imagepipeline/common/b;
    .locals 1

    .line 243
    new-instance v0, Lcom/facebook/imagepipeline/common/b;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/common/b;-><init>(Lcom/facebook/imagepipeline/common/c;)V

    return-object v0
.end method
