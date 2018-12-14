.class Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MainFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$4;->b:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->gotoMoreMovie()V

    return-void
.end method
