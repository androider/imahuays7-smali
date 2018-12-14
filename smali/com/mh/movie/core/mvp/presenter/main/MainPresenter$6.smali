.class Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$6;
.super Ljava/lang/Object;
.source "MainPresenter.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;Ljava/util/List;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$6;->b:Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$6;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 2
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/language/q;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-direct {p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    const-class v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/h;->d()Ljava/util/List;

    const-string p1, "list1"

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$6;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
