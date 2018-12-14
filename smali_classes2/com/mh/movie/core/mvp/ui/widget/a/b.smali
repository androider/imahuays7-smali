.class public abstract Lcom/mh/movie/core/mvp/ui/widget/a/b;
.super Ljava/lang/Object;
.source "NestScrollVIewLoadMoreListener.java"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;


# instance fields
.field private a:I

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/a/b;->b:Z

    .line 8
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/a/b;->a:I

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/a/b;->b:Z

    return-void
.end method

.method public onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 0

    .line 20
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/a/b;->a:I

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p2, p1

    if-ne p3, p2, :cond_0

    .line 33
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/a/b;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/a/b;->b:Z

    .line 35
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/a/b;->a()V

    :cond_0
    return-void
.end method
