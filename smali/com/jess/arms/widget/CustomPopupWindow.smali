.class public Lcom/jess/arms/widget/CustomPopupWindow;
.super Landroid/widget/PopupWindow;
.source "CustomPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;,
        Lcom/jess/arms/widget/CustomPopupWindow$Builder;
    }
.end annotation


# instance fields
.field private isFocus:Z

.field private isOutsideTouch:Z

.field private isWrap:Z

.field private mAnimationStyle:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentView:Landroid/view/View;

.field private mListener:Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;

.field private mParentView:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->access$000(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mContentView:Landroid/view/View;

    .line 51
    invoke-static {p1}, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->access$100(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mParentView:Landroid/view/View;

    .line 52
    invoke-static {p1}, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->access$200(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mListener:Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;

    .line 53
    invoke-static {p1}, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->access$300(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->isOutsideTouch:Z

    .line 54
    invoke-static {p1}, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->access$400(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->isFocus:Z

    .line 55
    invoke-static {p1}, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->access$500(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-static {p1}, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->access$600(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)I

    move-result v0

    iput v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mAnimationStyle:I

    .line 57
    invoke-static {p1}, Lcom/jess/arms/widget/CustomPopupWindow$Builder;->access$700(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jess/arms/widget/CustomPopupWindow;->isWrap:Z

    .line 58
    invoke-direct {p0}, Lcom/jess/arms/widget/CustomPopupWindow;->initLayout()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jess/arms/widget/CustomPopupWindow$Builder;Lcom/jess/arms/widget/CustomPopupWindow$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/jess/arms/widget/CustomPopupWindow;-><init>(Lcom/jess/arms/widget/CustomPopupWindow$Builder;)V

    return-void
.end method

.method public static builder()Lcom/jess/arms/widget/CustomPopupWindow$Builder;
    .locals 2

    .line 62
    new-instance v0, Lcom/jess/arms/widget/CustomPopupWindow$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jess/arms/widget/CustomPopupWindow$Builder;-><init>(Lcom/jess/arms/widget/CustomPopupWindow$1;)V

    return-object v0
.end method

.method public static inflateView(Landroid/view/ContextThemeWrapper;I)Landroid/view/View;
    .locals 1

    .line 94
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private initLayout()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mListener:Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;

    iget-object v1, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/jess/arms/widget/CustomPopupWindow$CustomPopupWindowListener;->initPopupView(Landroid/view/View;)V

    .line 67
    iget-boolean v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->isWrap:Z

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/jess/arms/widget/CustomPopupWindow;->setWidth(I)V

    .line 68
    iget-boolean v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->isWrap:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/jess/arms/widget/CustomPopupWindow;->setHeight(I)V

    .line 69
    iget-boolean v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->isFocus:Z

    invoke-virtual {p0, v0}, Lcom/jess/arms/widget/CustomPopupWindow;->setFocusable(Z)V

    .line 70
    iget-boolean v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->isOutsideTouch:Z

    invoke-virtual {p0, v0}, Lcom/jess/arms/widget/CustomPopupWindow;->setOutsideTouchable(Z)V

    .line 71
    iget-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/jess/arms/widget/CustomPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mAnimationStyle:I

    if-eq v0, v2, :cond_2

    .line 73
    iget v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mAnimationStyle:I

    invoke-virtual {p0, v0}, Lcom/jess/arms/widget/CustomPopupWindow;->setAnimationStyle(I)V

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jess/arms/widget/CustomPopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public show()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mParentView:Landroid/view/View;

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/jess/arms/widget/CustomPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/widget/CustomPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/jess/arms/widget/CustomPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void
.end method
