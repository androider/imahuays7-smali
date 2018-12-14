.class Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SubscribeActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$4;->b:Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$4;->a:Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$4;->a:Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
