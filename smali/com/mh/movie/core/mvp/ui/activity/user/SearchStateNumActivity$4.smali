.class Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$4;
.super Ljava/lang/Object;
.source "SearchStateNumActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/SideBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 213
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->MoveToPosition(Landroid/support/v7/widget/LinearLayoutManager;I)V

    :cond_0
    return-void
.end method
