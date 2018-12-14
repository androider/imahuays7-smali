.class Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MainActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding$1;->b:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->onClick()V

    return-void
.end method
