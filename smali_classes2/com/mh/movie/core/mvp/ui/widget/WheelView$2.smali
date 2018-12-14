.class Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;
.super Landroid/graphics/drawable/Drawable;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setBackground(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 347
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->b(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->c:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->b(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)[I

    move-result-object v0

    aget v0, v0, v1

    int-to-float v6, v0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget-object v7, v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->m:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 348
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->b(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->c:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->b(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)[I

    move-result-object v0

    aget v0, v0, v1

    int-to-float v6, v0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget-object v7, v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->m:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
