.class Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$2;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->a(IIII)V

    return-void
.end method
