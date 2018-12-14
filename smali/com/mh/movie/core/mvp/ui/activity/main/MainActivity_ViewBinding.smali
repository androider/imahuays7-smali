.class public Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->air_playing:I

    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;->b:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    .line 46
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
