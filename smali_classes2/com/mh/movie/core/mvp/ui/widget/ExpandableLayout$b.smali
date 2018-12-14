.class public Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$b;
.super Ljava/lang/Object;
.source "ExpandableLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$b;->a:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$b;->a:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->clearAnimation()V

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$b;->a:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->a(Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$b;->a:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->a()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$b;->a:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->b()V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$b;->a:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->b(Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;)Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$b;->a:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->b(Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;)Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$c;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method
