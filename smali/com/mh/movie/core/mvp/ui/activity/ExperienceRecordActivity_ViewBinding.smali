.class public Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ExperienceRecordActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->wrapper:I

    const-string v1, "field \'wrapper\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->wrapper:Landroid/support/v7/widget/RecyclerView;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->ll_operator:I

    const-string v1, "field \'llOperator\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->llOperator:Landroid/widget/LinearLayout;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    const-string v1, "field \'svState\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;

    .line 42
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 43
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->wrapper:Landroid/support/v7/widget/RecyclerView;

    .line 44
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->llOperator:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method
