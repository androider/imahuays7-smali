.class Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SearchActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$4;->b:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$4;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$4;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
