.class Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$2;
.super Ljava/lang/Object;
.source "BindBankActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->e(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->d(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->a(Ljava/lang/String;)V

    return-void
.end method
