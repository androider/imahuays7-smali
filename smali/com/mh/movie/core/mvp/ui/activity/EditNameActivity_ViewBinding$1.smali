.class Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EditNameActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding$1;->b:Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->onViewClicked()V

    return-void
.end method
