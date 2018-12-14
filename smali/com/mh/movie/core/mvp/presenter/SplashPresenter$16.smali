.class Lcom/mh/movie/core/mvp/presenter/SplashPresenter$16;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "SplashPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$16;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;)V
    .locals 4

    .line 175
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$16;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;)V

    goto :goto_0

    .line 178
    :cond_0
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/language/q;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-direct {p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableTask;

    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/o;

    sget-object v2, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TableTask;

    if-eqz p1, :cond_1

    .line 180
    iget p1, p1, Lcom/mh/movie/core/mvp/model/db/TableTask;->money:I

    sput p1, Lcom/mh/movie/core/mvp/ui/b;->H:I

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$16;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;)V

    return-void
.end method
