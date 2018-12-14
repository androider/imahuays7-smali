.class Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TvplayDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding$2;->b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding$2;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding$2;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
