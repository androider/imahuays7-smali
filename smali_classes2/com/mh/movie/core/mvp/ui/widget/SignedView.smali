.class public Lcom/mh/movie/core/mvp/ui/widget/SignedView;
.super Landroid/view/View;
.source "SignedView.java"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field c:Landroid/graphics/Paint;

.field d:Landroid/graphics/Paint;

.field e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->p:I

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->q:I

    const/16 p1, 0x14

    .line 51
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->r:I

    .line 63
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$color;->grey_e3:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->g:I

    .line 64
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->i:I

    .line 65
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$color;->grey_99:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->h:I

    .line 66
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42200000    # 40.0f

    invoke-static {p1, p2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    .line 67
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p3, 0x40c00000    # 6.0f

    invoke-static {p1, p3}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->k:I

    .line 68
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->l:I

    .line 69
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41c80000    # 25.0f

    invoke-static {p1, p2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->n:I

    .line 70
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41d80000    # 27.0f

    invoke-static {p1, p2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->m:I

    .line 71
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$mipmap;->beijingkuang_missioncenter_jiaqian:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->e:Landroid/graphics/Bitmap;

    .line 72
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->q:I

    .line 73
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p1, p2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->o:I

    .line 74
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->a:Landroid/graphics/Paint;

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->a:Landroid/graphics/Paint;

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->g:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->a:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->b:Landroid/graphics/Paint;

    .line 79
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p3, v0}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->b:Landroid/graphics/Paint;

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->g:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    .line 84
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->o:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->d:Landroid/graphics/Paint;

    .line 88
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->d:Landroid/graphics/Paint;

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->o:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/mh/movie/core/R$color;->yellow_38:I

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 106
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 107
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->p:I

    if-lez v0, :cond_3

    .line 108
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->f:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    .line 109
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->i:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    int-to-float v1, v1

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->l:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->g:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const-string v1, "1\u5929"

    .line 114
    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->k:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->l:I

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->n:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 115
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->h:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    .line 118
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->p:I

    sub-int/2addr v5, v1

    if-gt v4, v5, :cond_0

    .line 119
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->a:Landroid/graphics/Paint;

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->i:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->b:Landroid/graphics/Paint;

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->i:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->a:Landroid/graphics/Paint;

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->g:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->b:Landroid/graphics/Paint;

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->g:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->h:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    add-int/lit8 v5, v4, -0x1

    mul-int v5, v5, v0

    .line 127
    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->k:I

    add-int/2addr v5, v6

    int-to-float v7, v5

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->l:I

    int-to-float v8, v5

    mul-int v5, v0, v4

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    add-int/2addr v6, v5

    int-to-float v9, v6

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->l:I

    int-to-float v10, v6

    iget-object v11, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->b:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    add-int/2addr v6, v5

    int-to-float v6, v6

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->l:I

    int-to-float v7, v7

    iget v8, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->k:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\u5929"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->k:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->l:I

    iget v8, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->n:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->e:Landroid/graphics/Bitmap;

    mul-int/lit8 v4, v0, 0x6

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->k:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->q:I

    iget v8, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->k:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    div-int/2addr v7, v2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->l:I

    iget v8, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->m:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 133
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->h:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->p:I

    const/4 v6, 0x0

    if-eq v3, v5, :cond_2

    const-string v3, "\u7b2c%s\u5929\u7b7e\u5230\u6210\u529f\uff0c\u518d\u8fde\u7eed\u767b\u9646%s\u5929\u53ef\u83b7\u5f97"

    .line 138
    new-array v7, v2, [Ljava/lang/Object;

    iget v8, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->p:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->p:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->r:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u9ebb\u82b1\u5e01!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v3, "\u7b2c%s\u5929\u7b7e\u5230\u6210\u529f\uff0c\u60a8\u5df2\u83b7\u5f97"

    .line 141
    new-array v5, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->p:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->r:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u9ebb\u82b1\u5e01\u5956\u52b1!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    mul-int/lit8 v0, v0, 0x1

    .line 144
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    add-int/2addr v1, v0

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->o:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->l:I

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->m:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->o:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 146
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->o:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->l:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->m:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->o:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 150
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->j:I

    add-int/2addr v4, v3

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->k:I

    sub-int/2addr v4, v3

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->k:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    div-int/2addr v1, v2

    sub-int/2addr v4, v1

    int-to-float v1, v4

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->l:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->m:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->o:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 101
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SignedView;->f:I

    return-void
.end method
