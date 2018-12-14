.class public Lcom/raizlabs/android/dbflow/structure/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    }
.end annotation


# instance fields
.field private transient modelAdapter:Lcom/raizlabs/android/dbflow/structure/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public async()Lcom/raizlabs/android/dbflow/structure/a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/a<",
            "+",
            "Lcom/raizlabs/android/dbflow/structure/d;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public delete()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/structure/e;->delete(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;->delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public exists()Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/structure/e;->exists(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public exists(Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/BaseModel;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/e;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->h(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/BaseModel;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/e;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/BaseModel;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/e;

    return-object v0
.end method

.method public insert()J
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/structure/e;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide v0

    return-wide v0
.end method

.method public load()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/structure/e;->load(Ljava/lang/Object;)V

    return-void
.end method

.method public load(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;->load(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public save()Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/structure/e;->save(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public save(Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;->save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public update()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/structure/e;->update(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public update(Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method
