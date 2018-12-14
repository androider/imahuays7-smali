.class Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$2;
.super Ljava/lang/Object;
.source "SelectBankActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/SideBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->rv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;

    invoke-virtual {v1, p1}, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->b(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->MoveToPosition(Landroid/support/v7/widget/LinearLayoutManager;I)V

    :cond_0
    return-void
.end method
