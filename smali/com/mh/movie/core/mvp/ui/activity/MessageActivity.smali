.class public Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "MessageActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/z$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/MessagePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/z$b;"
    }
.end annotation


# static fields
.field public static h:Z = false


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field g:Landroid/graphics/drawable/Drawable;

.field recyclerMessage:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02c3
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x0

    .line 78
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->h:Z

    .line 79
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->r:Landroid/content/Context;

    const-string v2, "user_message_time_system"

    invoke-static {v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->c:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->r:Landroid/content/Context;

    const-string v2, "user_message_time_comment"

    invoke-static {v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->d:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->r:Landroid/content/Context;

    const-string v2, "user_message_time_feed_back"

    invoke-static {v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->e:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->r:Landroid/content/Context;

    sget v2, Lcom/mh/movie/core/R$drawable;->red_point_bg:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->g:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/MHApplication;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->b()Ljava/util/List;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->recyclerMessage:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->r:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 90
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 143
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->recyclerMessage:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    sget p1, Lcom/mh/movie/core/R$layout;->activity_message:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-static {}, Lcom/mh/movie/core/a/a/am;->a()Lcom/mh/movie/core/a/a/am$a;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/am$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/am$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/br;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/br;-><init>(Lcom/mh/movie/core/mvp/a/z$b;)V

    .line 60
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/am$a;->a(Lcom/mh/movie/core/a/b/br;)Lcom/mh/movie/core/a/a/am$a;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/am$a;->a()Lcom/mh/movie/core/a/a/ck;

    move-result-object p1

    .line 62
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/ck;->a(Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 73
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->f()V

    .line 74
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->e()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 166
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 183
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onResume()V

    .line 149
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->h:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->e()V

    :cond_0
    return-void
.end method
