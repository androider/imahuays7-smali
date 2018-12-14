.class final Lcom/flurry/sdk/bt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/cw<",
        "Lcom/flurry/sdk/ed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bt;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bt;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/flurry/sdk/bt$1;->a:Lcom/flurry/sdk/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/cv;)V
    .locals 2

    .line 64
    check-cast p1, Lcom/flurry/sdk/ed;

    .line 1067
    sget-object v0, Lcom/flurry/sdk/bt$6;->a:[I

    iget p1, p1, Lcom/flurry/sdk/ed;->d:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1070
    :cond_0
    iget-object p1, p0, Lcom/flurry/sdk/bt$1;->a:Lcom/flurry/sdk/bt;

    invoke-virtual {p1}, Lcom/flurry/sdk/bt;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1071
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/bt$1$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/bt$1$1;-><init>(Lcom/flurry/sdk/bt$1;)V

    .line 1072
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
