.class Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;
.super Landroid/view/animation/Animation;
.source "ExpandableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;Landroid/view/View;IZ)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;->a:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;->c:Landroid/view/View;

    .line 116
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;->b:I

    .line 117
    iput-boolean p4, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;->d:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 123
    iget-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;->d:Z

    if-eqz p2, :cond_0

    .line 124
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;->b:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    goto :goto_0

    .line 126
    :cond_0
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;->b:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float p2, p2, v0

    float-to-int p1, p2

    .line 128
    :goto_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 130
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    .line 131
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;->c:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
