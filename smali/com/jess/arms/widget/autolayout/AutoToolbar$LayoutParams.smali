.class public Lcom/jess/arms/widget/autolayout/AutoToolbar$LayoutParams;
.super Landroid/support/v7/widget/Toolbar$LayoutParams;
.source "AutoToolbar.java"

# interfaces
.implements Lcom/zhy/autolayout/utils/AutoLayoutHelper$AutoLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jess/arms/widget/autolayout/AutoToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private mDimenLayoutInfo:Lcom/zhy/autolayout/AutoLayoutInfo;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    invoke-static {p1, p2}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->getAutoLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoLayoutInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/widget/autolayout/AutoToolbar$LayoutParams;->mDimenLayoutInfo:Lcom/zhy/autolayout/AutoLayoutInfo;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method


# virtual methods
.method public getAutoLayoutInfo()Lcom/zhy/autolayout/AutoLayoutInfo;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/jess/arms/widget/autolayout/AutoToolbar$LayoutParams;->mDimenLayoutInfo:Lcom/zhy/autolayout/AutoLayoutInfo;

    return-object v0
.end method
