.class public Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "TestDaoActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/c/b$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/user/TestDaoPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/c/b$b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    sget p1, Lcom/mh/movie/core/R$layout;->activity_test_dao:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-static {}, Lcom/mh/movie/core/a/a/c/b;->a()Lcom/mh/movie/core/a/a/c/b$a;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/c/b$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/c/b$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/c/d;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/c/d;-><init>(Lcom/mh/movie/core/mvp/a/c/b$b;)V

    .line 26
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/c/b$a;->a(Lcom/mh/movie/core/a/b/c/d;)Lcom/mh/movie/core/a/a/c/b$a;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/c/b$a;->a()Lcom/mh/movie/core/a/a/c/e;

    move-result-object p1

    .line 28
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/c/e;->a(Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;)V

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

    return-void
.end method

.method public onViewClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c004e
        }
    .end annotation

    return-void
.end method

.method public onViewClicked2()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c004f
        }
    .end annotation

    return-void
.end method
