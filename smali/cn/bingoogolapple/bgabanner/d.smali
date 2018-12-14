.class public abstract Lcn/bingoogolapple/bgabanner/d;
.super Ljava/lang/Object;
.source "BGAOnNoDoubleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 11
    iput v0, p0, Lcn/bingoogolapple/bgabanner/d;->a:I

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcn/bingoogolapple/bgabanner/d;->b:J

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lcn/bingoogolapple/bgabanner/d;->b:J

    sub-long v4, v0, v2

    iget v2, p0, Lcn/bingoogolapple/bgabanner/d;->a:I

    int-to-long v2, v2

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 25
    iput-wide v0, p0, Lcn/bingoogolapple/bgabanner/d;->b:J

    .line 26
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/bgabanner/d;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
