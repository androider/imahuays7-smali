.class Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$8;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "TvplayDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$8;->b:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$8;->a:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 3

    .line 118
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$8;->b:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$8;->a:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$8;->b:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5f00\u901a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CustomToast;->makeCommodityText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    iget v1, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->addMoney(I)V

    const/4 v0, 0x1

    .line 121
    iput v0, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    .line 122
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->save()Z

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$8;->a(Ljava/lang/Integer;)V

    return-void
.end method
