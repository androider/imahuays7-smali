.class public Lcom/mh/movie/core/mvp/ui/activity/user/UserInfoActivity;
.super Lcom/jess/arms/a/b;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/c/c$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/b<",
        "Lcom/mh/movie/core/mvp/presenter/user/UserInfoPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/c/c$b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/jess/arms/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    sget p1, Lcom/mh/movie/core/R$layout;->activity_user_info:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-static {}, Lcom/mh/movie/core/a/a/c/c;->a()Lcom/mh/movie/core/a/a/c/c$a;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/c/c$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/c/c$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/c/g;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/c/g;-><init>(Lcom/mh/movie/core/mvp/a/c/c$b;)V

    .line 30
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/c/c$a;->a(Lcom/mh/movie/core/a/b/c/g;)Lcom/mh/movie/core/a/a/c/c$a;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/c/c$a;->a()Lcom/mh/movie/core/a/a/c/f;

    move-result-object p1

    .line 32
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/c/f;->a(Lcom/mh/movie/core/mvp/ui/activity/user/UserInfoActivity;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method
