.class public Lcom/zhy/autolayout/AutoFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AutoFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/autolayout/AutoFrameLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private final mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/zhy/autolayout/AutoFrameLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/zhy/autolayout/AutoFrameLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/zhy/autolayout/AutoFrameLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/zhy/autolayout/AutoFrameLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/zhy/autolayout/AutoFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/zhy/autolayout/AutoFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoFrameLayout$LayoutParams;
    .locals 2

    .line 54
    new-instance v0, Lcom/zhy/autolayout/AutoFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zhy/autolayout/AutoFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zhy/autolayout/AutoFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 70
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/zhy/autolayout/AutoFrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/zhy/autolayout/AutoFrameLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-virtual {v0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->adjustChildren()V

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
