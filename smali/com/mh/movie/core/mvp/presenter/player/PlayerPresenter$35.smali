.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILjava/lang/Integer;)V
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

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;ILjava/lang/Integer;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;->a:I

    iput-object p5, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;->b:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 3

    .line 1182
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;->a:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    move-result-object p1

    .line 1183
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    iget v1, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->addMoney(I)V

    const/4 v0, 0x1

    .line 1184
    iput v0, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    .line 1185
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->save()Z

    .line 1187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1188
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v0, 0x0

    const-string v1, "\u5df2\u5f00\u542f\u84dd\u5149\u753b\u8d28"

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;->b:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5f00\u901a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/CustomToast;->makeCommodityText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1179
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;->a(Ljava/lang/Integer;)V

    return-void
.end method
