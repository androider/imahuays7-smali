.class public Lcom/jess/arms/mvp/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Landroid/arch/lifecycle/c;
.implements Lcom/jess/arms/mvp/a;


# instance fields
.field protected a:Lcom/jess/arms/integration/IRepositoryManager;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/jess/arms/mvp/BaseModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/jess/arms/mvp/BaseModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    return-void
.end method

.method onDestroy(Landroid/arch/lifecycle/d;)V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/k;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 56
    invoke-interface {p1}, Landroid/arch/lifecycle/d;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle;->b(Landroid/arch/lifecycle/c;)V

    return-void
.end method
