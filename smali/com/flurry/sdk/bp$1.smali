.class final Lcom/flurry/sdk/bp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/cw<",
        "Lcom/flurry/sdk/bu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bp;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/flurry/sdk/bp$1;->a:Lcom/flurry/sdk/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/cv;)V
    .locals 1

    .line 1152
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/bp$1$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/bp$1$1;-><init>(Lcom/flurry/sdk/bp$1;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void
.end method
