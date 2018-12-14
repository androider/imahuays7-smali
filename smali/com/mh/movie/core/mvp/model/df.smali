.class public final Lcom/mh/movie/core/mvp/model/df;
.super Ljava/lang/Object;
.source "UserModel_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/mh/movie/core/mvp/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/IRepositoryManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/IRepositoryManager;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/df;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/df;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/IRepositoryManager;",
            ">;)",
            "Lcom/mh/movie/core/mvp/model/df;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/mh/movie/core/mvp/model/df;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/model/df;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/model/UserModel;
    .locals 2

    .line 21
    new-instance v0, Lcom/mh/movie/core/mvp/model/UserModel;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/df;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/model/UserModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/df;->a()Lcom/mh/movie/core/mvp/model/UserModel;

    move-result-object v0

    return-object v0
.end method
