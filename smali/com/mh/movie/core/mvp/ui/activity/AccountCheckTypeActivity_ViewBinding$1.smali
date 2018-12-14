.class Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AccountCheckTypeActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity_ViewBinding$1;->b:Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;->onClick()V

    return-void
.end method
