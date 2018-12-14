.class public abstract Lcom/mh/movie/core/mvp/ui/widget/a/c;
.super Ljava/lang/Object;
.source "StaticListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:J


# instance fields
.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 8
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/widget/a/c;->b:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 8
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/widget/a/c;->b:J

    .line 10
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/ui/widget/a/c;->b:J

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 7

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 18
    sget-wide v2, Lcom/mh/movie/core/mvp/ui/widget/a/c;->a:J

    sub-long v4, v0, v2

    iget-wide v2, p0, Lcom/mh/movie/core/mvp/ui/widget/a/c;->b:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 19
    sput-wide v0, Lcom/mh/movie/core/mvp/ui/widget/a/c;->a:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
