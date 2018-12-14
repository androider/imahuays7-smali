.class public final Lcom/mh/movie/core/mvp/presenter/c;
.super Ljava/lang/Object;
.source "AccountPresenter_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/mh/movie/core/mvp/presenter/AccountPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lme/jessyan/rxerrorhandler/core/RxErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/imageloader/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/AppManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/b$a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/b$b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lme/jessyan/rxerrorhandler/core/RxErrorHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/imageloader/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/AppManager;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/c;->a:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/mh/movie/core/mvp/presenter/c;->b:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/mh/movie/core/mvp/presenter/c;->c:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/mh/movie/core/mvp/presenter/c;->d:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/mh/movie/core/mvp/presenter/c;->e:Ljavax/inject/Provider;

    .line 41
    iput-object p6, p0, Lcom/mh/movie/core/mvp/presenter/c;->f:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/b$a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/b$b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lme/jessyan/rxerrorhandler/core/RxErrorHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/imageloader/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/AppManager;",
            ">;)",
            "Lcom/mh/movie/core/mvp/presenter/c;"
        }
    .end annotation

    .line 61
    new-instance v7, Lcom/mh/movie/core/mvp/presenter/c;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mh/movie/core/mvp/presenter/c;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/presenter/AccountPresenter;
    .locals 3

    .line 46
    new-instance v0, Lcom/mh/movie/core/mvp/presenter/AccountPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/c;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/a/b$a;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/c;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/a/b$b;

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/AccountPresenter;-><init>(Lcom/mh/movie/core/mvp/a/b$a;Lcom/mh/movie/core/mvp/a/b$b;)V

    .line 47
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/c;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/d;->a(Lcom/mh/movie/core/mvp/presenter/AccountPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;)V

    .line 48
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/c;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/d;->a(Lcom/mh/movie/core/mvp/presenter/AccountPresenter;Landroid/app/Application;)V

    .line 49
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/c;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/http/imageloader/c;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/d;->a(Lcom/mh/movie/core/mvp/presenter/AccountPresenter;Lcom/jess/arms/http/imageloader/c;)V

    .line 50
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/c;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/integration/AppManager;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/d;->a(Lcom/mh/movie/core/mvp/presenter/AccountPresenter;Lcom/jess/arms/integration/AppManager;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/presenter/c;->a()Lcom/mh/movie/core/mvp/presenter/AccountPresenter;

    move-result-object v0

    return-object v0
.end method
