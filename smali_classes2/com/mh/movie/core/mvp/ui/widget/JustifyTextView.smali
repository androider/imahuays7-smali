.class public Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "JustifyTextView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->a:Landroid/graphics/Paint;

    return-void
.end method

.method private a(FFLandroid/graphics/Canvas;)V
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->getTextSize()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aget-char v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p3, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 51
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    add-float v3, p1, p2

    add-float/2addr v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 41
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    div-int v1, v0, v1

    int-to-float v1, v1

    .line 42
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->b:I

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v2, v0

    int-to-float v0, v2

    .line 43
    invoke-direct {p0, v1, v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->a(FFLandroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/JustifyTextView;->b:I

    return-void
.end method
