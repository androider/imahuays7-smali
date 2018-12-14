.class final Lcom/flurry/sdk/az$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/az;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/az;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/az;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/flurry/sdk/az$6;->a:Lcom/flurry/sdk/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 274
    invoke-static {}, Lcom/flurry/sdk/az;->d()Lcom/flurry/sdk/az;

    invoke-static {}, Lcom/flurry/sdk/az;->c()Ljava/util/List;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/flurry/sdk/az;->e:Lcom/flurry/sdk/cu;

    if-nez v1, :cond_0

    .line 277
    invoke-static {}, Lcom/flurry/sdk/az;->f()V

    .line 280
    :cond_0
    sget-object v1, Lcom/flurry/sdk/az;->e:Lcom/flurry/sdk/cu;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/cu;->a(Ljava/lang/Object;)V

    return-void
.end method
