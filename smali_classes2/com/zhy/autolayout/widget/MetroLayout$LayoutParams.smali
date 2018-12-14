.class public Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "MetroLayout.java"

# interfaces
.implements Lcom/zhy/autolayout/utils/AutoLayoutHelper$AutoLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhy/autolayout/widget/MetroLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private mAutoLayoutInfo:Lcom/zhy/autolayout/AutoLayoutInfo;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 205
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 200
    invoke-static {p1, p2}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->getAutoLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoLayoutInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;->mAutoLayoutInfo:Lcom/zhy/autolayout/AutoLayoutInfo;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object p1, p1, Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;->mAutoLayoutInfo:Lcom/zhy/autolayout/AutoLayoutInfo;

    iput-object p1, p0, Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;->mAutoLayoutInfo:Lcom/zhy/autolayout/AutoLayoutInfo;

    return-void
.end method


# virtual methods
.method public getAutoLayoutInfo()Lcom/zhy/autolayout/AutoLayoutInfo;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;->mAutoLayoutInfo:Lcom/zhy/autolayout/AutoLayoutInfo;

    return-object v0
.end method
