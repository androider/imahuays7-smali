.class public Lcom/raizlabs/android/dbflow/d/f;
.super Ljava/lang/Object;
.source "NotifyDistributor.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/d/e;


# static fields
.field private static a:Lcom/raizlabs/android/dbflow/d/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/raizlabs/android/dbflow/d/f;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 19
    sget-object v0, Lcom/raizlabs/android/dbflow/d/f;->a:Lcom/raizlabs/android/dbflow/d/f;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/raizlabs/android/dbflow/d/f;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/d/f;-><init>()V

    sput-object v0, Lcom/raizlabs/android/dbflow/d/f;->a:Lcom/raizlabs/android/dbflow/d/f;

    .line 22
    :cond_0
    sget-object v0, Lcom/raizlabs/android/dbflow/d/f;->a:Lcom/raizlabs/android/dbflow/d/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->i(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/d/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/d/e;->a(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/e<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->i(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/d/e;

    move-result-object v0

    .line 35
    invoke-interface {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/d/e;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    return-void
.end method
