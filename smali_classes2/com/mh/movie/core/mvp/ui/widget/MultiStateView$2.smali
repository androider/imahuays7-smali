.class Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$2;
.super Ljava/lang/Object;
.source "MultiStateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 474
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->b(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;)Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$a;->a()V

    return-void
.end method
