.class final Lcom/flurry/sdk/az$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/az$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/az$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/az$1;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/flurry/sdk/az$1$1;->a:Lcom/flurry/sdk/az$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/flurry/sdk/bb;->a()Lcom/flurry/sdk/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bb;->b()V

    return-void
.end method
