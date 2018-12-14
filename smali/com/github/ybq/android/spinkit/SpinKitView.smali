.class public Lcom/github/ybq/android/spinkit/SpinKitView;
.super Landroid/widget/ProgressBar;
.source "SpinKitView.java"


# instance fields
.field private a:Lcom/github/ybq/android/spinkit/Style;

.field private b:I

.field private c:Lcom/github/ybq/android/spinkit/b/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/github/ybq/android/spinkit/SpinKitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    sget v0, Lcom/github/ybq/android/spinkit/R$attr;->SpinKitViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/github/ybq/android/spinkit/SpinKitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 33
    sget v0, Lcom/github/ybq/android/spinkit/R$style;->SpinKitView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/github/ybq/android/spinkit/SpinKitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    sget-object v0, Lcom/github/ybq/android/spinkit/R$styleable;->SpinKitView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    invoke-static {}, Lcom/github/ybq/android/spinkit/Style;->values()[Lcom/github/ybq/android/spinkit/Style;

    move-result-object p2

    sget p3, Lcom/github/ybq/android/spinkit/R$styleable;->SpinKitView_SpinKit_Style:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->a:Lcom/github/ybq/android/spinkit/Style;

    .line 42
    sget p2, Lcom/github/ybq/android/spinkit/R$styleable;->SpinKitView_SpinKit_Color:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->b:I

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/SpinKitView;->a()V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/SpinKitView;->setIndeterminate(Z)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->a:Lcom/github/ybq/android/spinkit/Style;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/a;->a(Lcom/github/ybq/android/spinkit/Style;)Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/SpinKitView;->setIndeterminateDrawable(Lcom/github/ybq/android/spinkit/b/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/SpinKitView;->getIndeterminateDrawable()Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v0

    return-object v0
.end method

.method public getIndeterminateDrawable()Lcom/github/ybq/android/spinkit/b/f;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->c:Lcom/github/ybq/android/spinkit/b/f;

    return-object v0
.end method

.method public onScreenStateChanged(I)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onScreenStateChanged(I)V

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->c:Lcom/github/ybq/android/spinkit/b/f;

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->c:Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/b/f;->stop()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->c:Lcom/github/ybq/android/spinkit/b/f;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/SpinKitView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->c:Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/b/f;->start()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 79
    iput p1, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->b:I

    .line 80
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->c:Lcom/github/ybq/android/spinkit/b/f;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->c:Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {v0, p1}, Lcom/github/ybq/android/spinkit/b/f;->a(I)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/SpinKitView;->invalidate()V

    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 55
    instance-of v0, p1, Lcom/github/ybq/android/spinkit/b/f;

    if-nez v0, :cond_0

    .line 56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "this d must be instanceof Sprite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_0
    check-cast p1, Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/SpinKitView;->setIndeterminateDrawable(Lcom/github/ybq/android/spinkit/b/f;)V

    return-void
.end method

.method public setIndeterminateDrawable(Lcom/github/ybq/android/spinkit/b/f;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->c:Lcom/github/ybq/android/spinkit/b/f;

    .line 64
    iget-object p1, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->c:Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/b/f;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->c:Lcom/github/ybq/android/spinkit/b/f;

    iget v0, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->b:I

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/b/f;->a(I)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/SpinKitView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/SpinKitView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/SpinKitView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/SpinKitView;->getHeight()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/github/ybq/android/spinkit/SpinKitView;->onSizeChanged(IIII)V

    .line 68
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/SpinKitView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/github/ybq/android/spinkit/SpinKitView;->c:Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/b/f;->start()V

    :cond_1
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    instance-of v0, p1, Lcom/github/ybq/android/spinkit/b/f;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/b/f;->stop()V

    :cond_0
    return-void
.end method
