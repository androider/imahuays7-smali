.class public Lcom/zhy/autolayout/AutoLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AutoLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/autolayout/AutoLinearLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/zhy/autolayout/AutoLinearLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/zhy/autolayout/AutoLinearLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/zhy/autolayout/AutoLinearLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/zhy/autolayout/AutoLinearLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/zhy/autolayout/AutoLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/zhy/autolayout/AutoLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoLinearLayout$LayoutParams;
    .locals 2

    .line 57
    new-instance v0, Lcom/zhy/autolayout/AutoLinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zhy/autolayout/AutoLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zhy/autolayout/AutoLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 50
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/zhy/autolayout/AutoLinearLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/zhy/autolayout/AutoLinearLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-virtual {v0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->adjustChildren()V

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
