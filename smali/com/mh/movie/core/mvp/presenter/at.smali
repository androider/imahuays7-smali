.class public final Lcom/mh/movie/core/mvp/presenter/at;
.super Ljava/lang/Object;
.source "HelpAndFeedBackPresenter_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/v$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/v$b;",
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
            "Lcom/mh/movie/core/mvp/a/v$a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/v$b;",
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
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/at;->a:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/mh/movie/core/mvp/presenter/at;->b:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/mh/movie/core/mvp/presenter/at;->c:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/mh/movie/core/mvp/presenter/at;->d:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/mh/movie/core/mvp/presenter/at;->e:Ljavax/inject/Provider;

    .line 41
    iput-object p6, p0, Lcom/mh/movie/core/mvp/presenter/at;->f:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/at;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/v$a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/v$b;",
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
            "Lcom/mh/movie/core/mvp/presenter/at;"
        }
    .end annotation

    .line 65
    new-instance v7, Lcom/mh/movie/core/mvp/presenter/at;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mh/movie/core/mvp/presenter/at;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;
    .locals 3

    .line 46
    new-instance v0, Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/at;->a:Ljavax/inject/Provider;

    .line 47
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/a/v$a;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/at;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/a/v$b;

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;-><init>(Lcom/mh/movie/core/mvp/a/v$a;Lcom/mh/movie/core/mvp/a/v$b;)V

    .line 48
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/at;->c:Ljavax/inject/Provider;

    .line 49
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 48
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/au;->a(Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;)V

    .line 50
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/at;->d:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 50
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/au;->a(Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;Landroid/app/Application;)V

    .line 52
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/at;->e:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/http/imageloader/c;

    .line 52
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/au;->a(Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;Lcom/jess/arms/http/imageloader/c;)V

    .line 54
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/at;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/integration/AppManager;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/au;->a(Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;Lcom/jess/arms/integration/AppManager;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/presenter/at;->a()Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;

    move-result-object v0

    return-object v0
.end method
