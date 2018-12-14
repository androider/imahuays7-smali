.class public final Lcom/jess/arms/b/b/g;
.super Ljava/lang/Object;
.source "ClientModule_ProRxErrorHandlerFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lme/jessyan/rxerrorhandler/core/RxErrorHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/jess/arms/b/b/g;->a:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/jess/arms/b/b/g;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/jess/arms/b/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;",
            ">;)",
            "Lcom/jess/arms/b/b/g;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/jess/arms/b/b/g;

    invoke-direct {v0, p0, p1}, Lcom/jess/arms/b/b/g;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/jess/arms/b/b/g;->a:Ljavax/inject/Provider;

    .line 29
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/jess/arms/b/b/g;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    invoke-static {v0, v1}, Lcom/jess/arms/b/b/f;->a(Landroid/app/Application;Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;)Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 28
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/jess/arms/b/b/g;->a()Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    move-result-object v0

    return-object v0
.end method
