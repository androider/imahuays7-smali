.class Lcom/mh/movie/core/mvp/ui/utils/b/b$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "MobclickDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/b/b;->a(Ljava/util/Map;Lcom/mh/movie/core/mvp/ui/utils/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/utils/b/b$a;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/utils/b/b;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/utils/b/b;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Lcom/mh/movie/core/mvp/ui/utils/b/b$a;Ljava/util/Map;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->c:Lcom/mh/movie/core/mvp/ui/utils/b/b;

    iput-object p4, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->a:Lcom/mh/movie/core/mvp/ui/utils/b/b$a;

    iput-object p5, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->b:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->a:Lcom/mh/movie/core/mvp/ui/utils/b/b$a;

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->a:Lcom/mh/movie/core/mvp/ui/utils/b/b$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/b/b$a;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->a:Lcom/mh/movie/core/mvp/ui/utils/b/b$a;

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->a:Lcom/mh/movie/core/mvp/ui/utils/b/b$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/utils/b/b$a;->a()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 67
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 68
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->a:Lcom/mh/movie/core/mvp/ui/utils/b/b$a;

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->a:Lcom/mh/movie/core/mvp/ui/utils/b/b$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/b/b$a;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
