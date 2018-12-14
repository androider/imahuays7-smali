.class public Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MyMeasureLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout$a;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->b:I

    .line 15
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->c:I

    return-void
.end method

.method private a(II)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->a:Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout$a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->a:Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout$a;

    invoke-interface {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout$a;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 33
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    const-string p3, "MeasureLinearLayout"

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " changed  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->b:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->c:I

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "MeasureLinearLayout"

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " height "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " width "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " initBottom "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " initLeft "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->b:I

    sub-int/2addr p5, p1

    .line 44
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->c:I

    sub-int/2addr p4, p1

    .line 45
    invoke-direct {p0, p4, p5}, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->a(II)V

    :cond_1
    return-void

    .line 36
    :cond_2
    :goto_0
    iput p5, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->b:I

    .line 37
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;->c:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method
