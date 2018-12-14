.class Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TestDaoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding$1;->b:Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;->onViewClicked()V

    return-void
.end method
