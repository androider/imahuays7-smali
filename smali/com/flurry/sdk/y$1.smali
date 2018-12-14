.class final Lcom/flurry/sdk/y$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/y;
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
.field final synthetic a:Lcom/flurry/sdk/y;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/y;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/flurry/sdk/y$1;->a:Lcom/flurry/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/cv;)V
    .locals 2

    .line 53
    check-cast p1, Lcom/flurry/sdk/ed;

    .line 1057
    sget-object v0, Lcom/flurry/sdk/y$2;->a:[I

    iget p1, p1, Lcom/flurry/sdk/ed;->d:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1059
    :cond_0
    iget-object p1, p0, Lcom/flurry/sdk/y$1;->a:Lcom/flurry/sdk/y;

    invoke-static {p1}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/y;)V

    :goto_0
    return-void
.end method
