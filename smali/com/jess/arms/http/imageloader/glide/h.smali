.class public Lcom/jess/arms/http/imageloader/glide/h;
.super Lcom/jess/arms/http/imageloader/b;
.source "ImageConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/http/imageloader/glide/h$a;
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private j:[Landroid/widget/ImageView;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method private constructor <init>(Lcom/jess/arms/http/imageloader/glide/h$a;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/jess/arms/http/imageloader/b;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->a(Lcom/jess/arms/http/imageloader/glide/h$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->a:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->b(Lcom/jess/arms/http/imageloader/glide/h$a;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->b:Landroid/widget/ImageView;

    .line 56
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->c(Lcom/jess/arms/http/imageloader/glide/h$a;)I

    move-result v0

    iput v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->c:I

    .line 57
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->d(Lcom/jess/arms/http/imageloader/glide/h$a;)I

    move-result v0

    iput v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->d:I

    .line 58
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->e(Lcom/jess/arms/http/imageloader/glide/h$a;)I

    move-result v0

    iput v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->f:I

    .line 59
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->f(Lcom/jess/arms/http/imageloader/glide/h$a;)I

    move-result v0

    iput v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->e:I

    .line 60
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->g(Lcom/jess/arms/http/imageloader/glide/h$a;)I

    move-result v0

    iput v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->g:I

    .line 61
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->h(Lcom/jess/arms/http/imageloader/glide/h$a;)I

    move-result v0

    iput v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->h:I

    .line 62
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->i(Lcom/jess/arms/http/imageloader/glide/h$a;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->i:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    .line 63
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->j(Lcom/jess/arms/http/imageloader/glide/h$a;)[Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->j:[Landroid/widget/ImageView;

    .line 64
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->k(Lcom/jess/arms/http/imageloader/glide/h$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->k:Z

    .line 65
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->l(Lcom/jess/arms/http/imageloader/glide/h$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->l:Z

    .line 66
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->m(Lcom/jess/arms/http/imageloader/glide/h$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->m:Z

    .line 67
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->n(Lcom/jess/arms/http/imageloader/glide/h$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->n:Z

    .line 68
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->o(Lcom/jess/arms/http/imageloader/glide/h$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jess/arms/http/imageloader/glide/h;->o:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/jess/arms/http/imageloader/glide/h$a;Lcom/jess/arms/http/imageloader/glide/h$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/jess/arms/http/imageloader/glide/h;-><init>(Lcom/jess/arms/http/imageloader/glide/h$a;)V

    return-void
.end method

.method public static r()Lcom/jess/arms/http/imageloader/glide/h$a;
    .locals 2

    .line 124
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jess/arms/http/imageloader/glide/h$a;-><init>(Lcom/jess/arms/http/imageloader/glide/h$1;)V

    return-object v0
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->e:I

    return v0
.end method

.method public f()Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->i:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    return-object v0
.end method

.method public g()[Landroid/widget/ImageView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->j:[Landroid/widget/ImageView;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->n:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->o:Z

    return v0
.end method

.method public j()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->f:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->h:I

    return v0
.end method

.method public l()Z
    .locals 1

    .line 100
    iget v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->g:I

    return v0
.end method

.method public n()Z
    .locals 1

    .line 108
    iget v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->g:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->k:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->l:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/jess/arms/http/imageloader/glide/h;->m:Z

    return v0
.end method
